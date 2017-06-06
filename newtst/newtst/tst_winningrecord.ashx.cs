using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using Helper;
using System.Configuration;
using newtst.algorithm;

namespace newtst
{
    /// <summary>
    /// tst_winningrecord 的摘要说明
    /// </summary>
    public class tst_winningrecord : IHttpHandler
    {

        Model.ObjectResult result = new Model.ObjectResult();
        JavaScriptSerializer serializer = new JavaScriptSerializer();
        algorithmSoapClient alsc = new algorithmSoapClient("algorithmSoap");
        TSTBLL tstbll = new TSTBLL();
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            //获取是否显示错误明细或友好错误信息
            string customErrors_type = MemberPublic.customErrors();

            string usercode = "";
            if (context.Request["usercode"] != null && context.Request["usercode"].ToString() != string.Empty)
            {
                //if (context.Request.Cookies["usercode"] != null && !string.IsNullOrEmpty(context.Request.Cookies["usercode"].Value))
                //{
                try
                {
                    usercode = context.Request["usercode"].ToString();//context.Request.Cookies["usercode"].Value;//
                    Guid _usercode = Guid.Parse(usercode);


                    bool isExist = tstbll.IsUserCode(_usercode);
                    if (isExist)
                    {
                        //判断是否已中奖
                        bool isPrize = tstbll.IsUserCodeAndPrize(_usercode);
                        //string test = "1";
                        //test = context.Request["test"].ToString();
                        if (!isPrize)
                        {
                            int _tstcount = int.Parse(tstbll.GetPrizeCount(_usercode));
                            if (_tstcount > 0)
                            {
                                try
                                {

                                    //获取抽奖权值，越小表示中奖几率越大
                                    int weight = int.Parse(ConfigurationManager.AppSettings["weight"].ToString());

                                    #region
                                    //获取奖品数组（等级和数量）
                                    string array = "";
                                    string newarray = "";
                                    try
                                    {
                                        array = tstbll.GetListAllPrize();
                                        newarray = array.Substring(0, array.Length - 1);
                                    }
                                    catch
                                    {
                                        result.result = "failed";
                                        result.jsonResponse = "系统错误";
                                    }
                                    #endregion
                                    int GetPrizelevel = 0;
                                    try
                                    {
                                        GetPrizelevel = alsc.PrizeLevel(weight, newarray);
                                        if (GetPrizelevel != 0)
                                        {
                                            //中奖，插入抽奖记录数据
                                            int prizeRecord = tstbll.Insert_UserPrizeRecord(_usercode, GetPrizelevel, 0);
                                            if (prizeRecord > 0)
                                            {
                                                //更新库存 减法
                                                int Isupdate = tstbll.Update_PrizeNumberByPrizeLevel(GetPrizelevel, "-1", _usercode);
                                                if (Isupdate > 0)
                                                {
                                                    Model.prize model_prize = new Model.prize();
                                                    #region
                                                    try
                                                    {
                                                        //获奖成功后，根据奖品等级，返回此奖品详细列表
                                                        model_prize = tstbll.GetListPrizeByPrizeLevel(GetPrizelevel, _usercode);
                                                        if (model_prize.Rows != null)
                                                        {
                                                            result.result = "success";
                                                            result.jsonResponse = model_prize;
                                                        }
                                                        else
                                                        {
                                                            //更新库存 加法
                                                            tstbll.Update_PrizeNumberByPrizeLevel(GetPrizelevel, "+1", _usercode);
                                                            result.result = "failed";
                                                            result.jsonResponse = "数据查询错误";
                                                        }
                                                    }
                                                    catch (Exception ex)
                                                    {
                                                        //更新库存 加法
                                                        tstbll.Update_PrizeNumberByPrizeLevel(GetPrizelevel, "+1", _usercode);
                                                        result.result = "failed";
                                                        result.jsonResponse = MemberPublic.error(customErrors_type, ex.ToString());
                                                    }
                                                    #endregion
                                                }
                                                else
                                                {
                                                    result.result = "failed";
                                                    result.jsonResponse = "更新库存错误";
                                                }
                                            }
                                            else
                                            {
                                                result.result = "failed";
                                                result.jsonResponse = "数据插入错误";
                                            }


                                        }
                                        else
                                        {
                                            NoPrize(_usercode);
                                        }
                                    }
                                    catch
                                    {
                                        result.result = "failed";
                                        result.jsonResponse = "连接抽奖API 超时";
                                    }

                                }
                                catch (Exception ex)
                                {
                                    result.result = "failed";
                                    result.jsonResponse = MemberPublic.error(customErrors_type, ex.ToString());

                                }
                            }
                            else
                            {
                                result.result = "failed";
                                result.jsonResponse = "抽奖次数为零";
                            }
                        }
                        else
                        {
                            NoPrize(_usercode);
                        }
                    }
                    else
                    {
                        result.result = "failed";
                        result.jsonResponse = "非法进入此页面";

                    }
                }
                catch
                {
                    result.result = "failed";
                    result.jsonResponse = "伪造usercode";

                }

            }
            else
            {
                result.result = "failed";
                result.jsonResponse = "usercode错误";
            }
            context.Response.Write(serializer.Serialize(result));
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
        // 未中奖操作
        private void NoPrize(Guid _usercode)
        {
            #region
            try
            {
                //未中奖，插入抽奖记录数据
                int prizeRecord = tstbll.Insert_UserPrizeRecord(_usercode, 0, 1);
                if (prizeRecord > 0)
                {
                    string tstcount = tstbll.GetPrizeCount(_usercode);
                    result.result = "success";
                    result.jsonResponse = tstcount;

                }
                else
                {
                    result.result = "failed";
                    result.jsonResponse = "系统错误";
                }

            }
            catch
            {
                result.result = "failed";
                result.jsonResponse = "系统错误";
            }
            #endregion
        }
    }
}