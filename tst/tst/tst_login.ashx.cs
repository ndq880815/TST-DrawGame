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
    /// tst_login 的摘要说明
    /// </summary>
    public class tst_login : IHttpHandler
    {

        Model.ObjectResult result = new Model.ObjectResult();
        JavaScriptSerializer serializer = new JavaScriptSerializer();

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string name = "";
            //string pwd = "";
            string isstate = "";
            string tstcode="";
            if (context.Request["name"] != null && context.Request["name"].ToString() != string.Empty &&
               // context.Request["pwd"] != null && context.Request["pwd"].ToString() != string.Empty &&
                context.Request["isstate"] != null && context.Request["isstate"].ToString() != string.Empty)
            {
                
                try
                {
                    name = context.Request["name"].ToString();
                  //  pwd = context.Request["pwd"].ToString();
                    isstate = context.Request["isstate"].ToString();
                    int iscookiestate = int.Parse(isstate);
                    try
                    {

                        ////获取tstcode
                        //result = serializer.Deserialize<Model.ObjectResult>(GetTST_Code(name, pwd));
                        //if (result.result.ToString() == "success")
                        //{
                        tstcode = name; //result.jsonResponse.ToString();
                            Model.userinfo model_ui = new Model.userinfo();
                            TSTBLL tstbll = new TSTBLL();
                            model_ui = tstbll.GetLoginUserInfo(tstcode, iscookiestate);
                            if (model_ui.Rows != null)
                            {
                                result.result = "success";
                                result.jsonResponse = model_ui;
                            }
                            else
                            {
                                result.result = "failed";
                                result.jsonResponse = "系统错误";
                            }
                        //}
                        //else
                        //{
                         //   result.result = "failed";
                         //   result.jsonResponse = "帐号或密码不正确";
                        //}

                       

                    }
                    catch
                    {
                        result.result = "failed";
                        result.jsonResponse = "系统错误";
                    }
                }
                catch
                {
                    result.result = "failed";
                    result.jsonResponse = "参数错误";

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

        #region 获取tst的code
        public string GetTST_Code(string user,string pwd)
        {
            System.Text.StringBuilder url = new System.Text.StringBuilder();
            url.AppendFormat(ConfigurationManager.AppSettings["login"].ToString() + "?user={0}&password={1}", user,pwd);

            HttpHelper objHttp = new HttpHelper();
            HttpItem objHttpItem = new HttpItem()
            {
                URL = url.ToString(),

                Encoding = "utf-8",
                Method = "Post",
                Referer = "",
                IsToLower = false,
                
                ContentType = "application/x-www-form-urlencoded"
            };
            return objHttp.GetHtml(objHttpItem);
        }

        #endregion
    }
}