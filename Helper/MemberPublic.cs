using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;

namespace Helper
{
    public class MemberPublic
    {
        public static string customErrors()
        {
            //获取是否显示错误明细或友好错误信息
            string customErrors_value = ConfigurationManager.AppSettings["customErrors"].ToString();

            return customErrors_value;
        }

        #region 显示错误信息类型

        public static string error(string customErrors, string exception)
        {
            string error = "";
            if (customErrors == "on")
            {
                error = "系统错误";
            }
            else
            {
                error = exception;
            }
            return error;
        }
        #endregion
    }
}
