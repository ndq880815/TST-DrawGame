using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using Helper;
using System.Configuration;
using System.Data;

namespace tst
{
    /// <summary>
    /// tst_login 的摘要说明
    /// </summary>
    public class tst_inquiry : IHttpHandler
    {
        Model.ObjectResult result = new Model.ObjectResult();
        JavaScriptSerializer serializer = new JavaScriptSerializer();

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            
            if (string.IsNullOrEmpty(context.Request["tstcode"])) {
                result.result = "false";
                result.jsonResponse = "0|0";
                context.Response.Write(serializer.Serialize(result));
                return;
            }

            string tstcode = context.Request["tstcode"];
            TSTBLL tstbll = new TSTBLL();
            DataSet query = tstbll.GetUserDrawResult(tstcode);
            if (query == null)
            {
                result.result = "false";
                result.jsonResponse = "0|0";
            }
            else if (query.Tables[0].Rows.Count == 0)
            {
                result.result = "false";
                result.jsonResponse = "0|0";
            }
            else {
                string level = query.Tables[0].Rows[0][1].ToString();
                string datetime = query.Tables[0].Rows[0][2].ToString();
                result.result = "true";
                result.jsonResponse = level+ "|" + datetime;
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