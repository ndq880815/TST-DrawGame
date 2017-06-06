using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Configuration;

namespace Helper
{
    public class SMS
    {
        public string NewSendMessage(string mobile, string message, string username, string password)
        {
            string timespan = DateTime.Now.ToString("yyyyMMddHHmmss");
            string pwd = FormsAuthentication.HashPasswordForStoringInConfigFile(password + timespan, "MD5").ToUpper();
            string content = Convert.ToBase64String(System.Text.Encoding.GetEncoding("GBK").GetBytes(message));
            StringBuilder url = new StringBuilder();
            url.AppendFormat("http://api.shumi365.com:8090/sms/send.do?userid={0}&pwd={1}&timespan={2}&mobile={3}&content={4}", username, pwd, timespan, mobile, content);

            HttpHelper objHttp = new HttpHelper();
            HttpItem objHttpItem = new HttpItem()
            {
                URL = url.ToString(),

                Encoding = "utf-8",
                Method = "Get",
                Referer = "",
                IsToLower = false,
                ContentType = "application/x-www-form-urlencoded"
            };
            return objHttp.GetHtml(objHttpItem);
        }

        public string SendMessage(string mobile, string content)
        {
            StringBuilder url = new StringBuilder();
            url.AppendFormat(ConfigurationManager.AppSettings["smsurl"].ToString() + "&mobile={0}&content={1}", mobile, content);

            HttpHelper objHttp = new HttpHelper();
            HttpItem objHttpItem = new HttpItem()
            {
                URL = url.ToString(),

                Encoding = "utf-8",
                Method = "Get",
                Referer = "",
                IsToLower = false,
                ContentType = "application/x-www-form-urlencoded"
            };
            return objHttp.GetHtml(objHttpItem);
        }
    }
}