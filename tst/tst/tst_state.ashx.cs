using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using Helper;

namespace tst
{
    /// <summary>
    /// tst_state 的摘要说明
    /// </summary>
    public class tst_state : IHttpHandler
    {

        Model.ObjectResult result = new Model.ObjectResult();
        JavaScriptSerializer serializer = new JavaScriptSerializer();

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
          
            string state = "";
            if (context.Request["state"] != null && context.Request["state"].ToString() != string.Empty)
            {
            //if (context.Request.Cookies["state"] != null && !string.IsNullOrEmpty(context.Request.Cookies["state"].Value))
            //{
                try
                {
                    state = context.Request["state"].ToString();//context.Request.Cookies["state"].Value;//
                    Guid _state = Guid.Parse(state);
                    try
                    {

                        Model.userinfo model_ui = new Model.userinfo();
                        TSTBLL tstbll = new TSTBLL();
                        model_ui = tstbll.GetUserInfoOrIsCookie(state);
                        if (model_ui.Rows != null)
                        {
                            result.result = "success";
                            result.jsonResponse = model_ui;
                        }
                        else
                        {
                            result.result = "failed";
                            result.jsonResponse = "usercode expiry";
                        }

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
                    result.jsonResponse = "伪造usercode";
                    
                }
                
            }
            else
            {
                result.result = "failed";
                result.jsonResponse = "usercode expiry";
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