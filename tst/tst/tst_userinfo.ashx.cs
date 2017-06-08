using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using Helper;
using System.Configuration;
namespace tst
{
    /// <summary>
    /// tst_userinfo 的摘要说明
    /// </summary>
    public class tst_userinfo : IHttpHandler
    {

        Model.ObjectResult result = new Model.ObjectResult();
        JavaScriptSerializer serializer = new JavaScriptSerializer();
        TSTBLL tstbll = new TSTBLL();
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string str_usercode = "";
            string name = "";
            string mobilephone = "";
            string address = "";
            string prize = "";
            if (context.Request["usercode"] != null && context.Request["usercode"].ToString() != string.Empty &&
           //if (context.Request.Cookies["usercode"] != null && !string.IsNullOrEmpty(context.Request.Cookies["usercode"].Value) &&
                context.Request["name"] != null && context.Request["name"].ToString() != string.Empty &&
                context.Request["mp"] != null && context.Request["mp"].ToString() != string.Empty &&
                context.Request["ad"] != null && context.Request["ad"].ToString() != string.Empty &&
                context.Request["prize"] != null && context.Request["prize"].ToString() != string.Empty)
            {
                str_usercode = context.Request["UserCode"].ToString();//  context.Request.Cookies["UserCode"].Value; //
                try
                {

                    Guid usercode = Guid.Parse(str_usercode);
                    bool isExist = tstbll.IsUserCode(usercode);
                    if (isExist)
                    {
                        name = context.Request["name"].ToString();
                        mobilephone = context.Request["mp"].ToString();
                        address = context.Request["ad"].ToString();
                        prize = context.Request["prize"].ToString();

                        try
                        {
                            bool isExist_insert = tstbll.IsUserPrize_Insert(usercode);
                            if (isExist_insert)
                            {
                                int i = tstbll.Insert_UserWinRecord(usercode, name, mobilephone, address, prize);
                                if (i > 0)
                                {
                                    result.result = "success";
                                    result.jsonResponse = "";
                                }
                                else
                                {
                                    //更新库存 加法
                                    tstbll.Update_PrizeNumberByPrizeid(int.Parse(prize), usercode);
                                    result.result = "failed";
                                    result.jsonResponse = "系统错误";
                                }
                            }
                            else
                            {
                                result.result = "failed";
                                result.jsonResponse = "非法插入信息";

                            }

                        }
                        catch
                        {
                            //更新库存 加法
                            tstbll.Update_PrizeNumberByPrizeid(int.Parse(prize),usercode);
                            result.result = "failed";
                            result.jsonResponse = "系统错误";
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
                    result.jsonResponse = "usercode错误";
                }


            }
            else
            {
                result.result = "failed";
                result.jsonResponse = "参数错误";
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
    }
}