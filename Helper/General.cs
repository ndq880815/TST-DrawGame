using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Data;
using System.IO;
using System.Data.OleDb;
using System.Configuration;
using System.Web.Security;

namespace Helper
{
    public class General
    {
        #region SQL防注入检查
        /// <summary>   
        /// 防止SQL注入   
        /// </summary>   
        /// <param name="ParaName">参数名称-字符型</param>   
        /// <param name="ParaType">参数类型-数字型(1表示是数字，0表示为字符)</param>   
        /// <param name="RequestType">请求方式(0：直接请求，1：Request请求，2：post请求，3：get请求，4：Cookies请求，5：WEB请求)</param>
        /// <returns>防止SQL注入</returns>   
        public static object SetRequest(string ParaName, int ParaType, int RequestType)
        {
            string ParaValue = "";
            switch (RequestType)
            {
                case 0:
                    ParaValue = ParaName;
                    break;
                case 1:
                    ParaValue = HttpContext.Current.Request[ParaName];
                    break;
                case 2:
                    ParaValue = HttpContext.Current.Request.Form[ParaName];
                    break;
                case 3:
                    ParaValue = HttpContext.Current.Request.QueryString[ParaName];
                    break;
                case 4:
                    ParaValue = HttpContext.Current.Request.Cookies[ParaName].ToString();
                    break;
                case 5:
                    ParaValue = HttpContext.Current.Request.ServerVariables[ParaName];
                    break;
            }

            if (ParaType == 1)
            {
                if (ParaValue.IndexOf(',') > -1)
                {
                    if (!IsNumeric(ParaValue.Replace(",", "").Replace(" ", "")))
                    {
                        //HttpContext.Current.Response.Redirect("/");
                        ParaValue = "0";
                    }
                }
                else
                {
                    if (!IsNumeric(ParaValue))
                    {
                        //HttpContext.Current.Response.Redirect("/");
                        ParaValue = "0";
                    }
                }
            }
            else
            {
                if (ParaValue == null)
                {
                    ParaValue = "";
                }
                else
                {
                    ParaValue = ParaValue.Replace("'", "");
                }
            }
            return ParaValue;
        }
        #endregion

        #region 数字验证
        /// <summary>
        /// 数字验证
        /// </summary>
        /// <param name="val"></param>
        /// <returns></returns>
        public static Boolean IsNumeric(string val)
        {
            int i;

            if (int.TryParse(val, out i))
            {
                //如果val是int类型的内容。这时候，i的值是val。
                return true;
            }
            else
            {
                //如果val不是int类型的内容。这时候，i的值是0。
                return false;
            }
        }
        #endregion

        public static bool IsChineseLetter(string input, int index)
        {
            int code = 0;
            int chfrom = Convert.ToInt32("4e00", 16);    //范围（0x4e00～0x9fff）转换成int（chfrom～chend）
            int chend = Convert.ToInt32("9fff", 16);
            if (input != "")
            {
                code = Char.ConvertToUtf32(input, index);    //获得字符串input中指定索引index处字符unicode编码

                if (code >= chfrom && code <= chend)
                {
                    return true;     //当code在中文范围内返回true

                }
                else
                {
                    return false;    //当code不在中文范围内返回false
                }
            }
            return false;
        }

        public static bool dataTableToCsv(System.Data.DataTable table, string file)
        {
            try
            {
                string title = "";

                FileStream fs = new FileStream(file, FileMode.Create);

                //Dim fs1 As New FileStream(file, FileMode.Open, FileAccess.Read)

                StreamWriter sw = new StreamWriter(new BufferedStream(fs), System.Text.Encoding.Default);

                for (int i = 0; i <= table.Columns.Count - 1; i++)
                {
                    //栏位：自动跳到下一单元格
                    title += table.Columns[i].ColumnName + "\t";
                }

                title = title.Substring(0, title.Length - 1) + "\n";

                sw.Write(title);

                foreach (DataRow row in table.Rows)
                {
                    string line = "";

                    for (int i = 0; i <= table.Columns.Count - 1; i++)
                    {
                        //内容：自动跳到下一单元格
                        line += row[i].ToString().Trim().Replace("\t", "") + "\t";
                    }

                    line = line.Substring(0, line.Length - 1) + "\n";

                    sw.Write(line);
                }

                sw.Close();

                fs.Close();

                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        //加载Excel 
        public static DataSet LoadDataFromExcel(string filePath, out string message)
        {
            message = string.Empty;

            try
            {
                string strConn;
                strConn = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + HttpContext.Current.Server.MapPath(filePath) + ";Extended Properties='Excel 8.0;HDR=False;IMEX=1'";
                OleDbConnection OleConn = new OleDbConnection(strConn);
                OleConn.Open();
                //String sql = "SELECT * FROM [" + filePath.Replace(".xls", "$") + "]";//可是更改Sheet名称，比如sheet2，等等 
                String sql = "SELECT * FROM [Sheet0$]";//可是更改Sheet名称，比如sheet2，等等 

                OleDbDataAdapter OleDaExcel = new OleDbDataAdapter(sql, OleConn);
                DataSet OleDsExcle = new DataSet();
                OleDaExcel.Fill(OleDsExcle, "Sheet1");
                OleConn.Close();
                return OleDsExcle;
            }
            catch (Exception err)
            {
                message = "数据绑定Excel失败!失败原因：" + err.Message;
                return null;
            }
        }

        public static string GetOpenid()
        {
            string url = "http://112.124.70.247/weoper/mobile.php?act=module&name=yswfcommon&do=ApiSnsapiBase&weid=9&siteRetUrl=http%3a%2f%2ftask.wangfan.com%2fHandler.ashx";

            HttpHelper objHttp = new HttpHelper();
            HttpItem objHttpItem = new HttpItem()
            {
                URL = url,
                Encoding = "utf-8",
                Method = "Get",
                Referer = "",
                IsToLower = false,
                ContentType = "application/x-www-form-urlencoded"
            };

            string result = string.Empty;
            try
            {
                result = objHttp.GetHtml(objHttpItem);
            }
            catch (Exception ex)
            {
                result = ex.Message;
            }

            return result;
        }

        /// <summary>
        /// 验证微信签名
        /// </summary>
        /// * 将token、timestamp、nonce三个参数进行字典序排序
        /// * 将三个参数字符串拼接成一个字符串进行sha1加密
        /// * 开发者获得加密后的字符串可与signature对比，标识该请求来源于微信。
        /// <returns></returns>
        public static bool CheckSignature(HttpContext context)
        {
            try
            {
                string yswfSignature = context.Request["yswfSignature"].ToString();
                string yswfTimestamp = context.Request["yswfTimestamp"].ToString();
                string yswfNonce = context.Request["yswfNonce"].ToString();
                string yswfTkName = context.Request["yswfTkName"].ToString();

                string[] ArrTmp = { ConfigurationManager.AppSettings["tokenvalue"].ToString(), yswfTimestamp, yswfNonce };
                Array.Sort(ArrTmp);     //字典排序
                string tmpStr = string.Join("", ArrTmp);
                tmpStr = FormsAuthentication.HashPasswordForStoringInConfigFile(tmpStr, "SHA1");
                tmpStr = tmpStr.ToLower();

                if (yswfTkName == ConfigurationManager.AppSettings["token"].ToString() && tmpStr == yswfSignature)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch
            {
                return false;
            }

        }

        //获取用户信息
        public static string GetWeiXinUserInfo(string str)
        {
            string url = "http://112.124.70.247/weoper/mobile.php?act=module&name=yswfcommon&do=ApiGetUserInfo&weid=9";

            HttpHelper objHttp = new HttpHelper();
            HttpItem objHttpItem = new HttpItem()
            {
                URL = url,

                Encoding = "utf-8",
                Method = "Post",
                Postdata = "post_data=" + str,
                Referer = "",
                IsToLower = false,
                ContentType = "application/x-www-form-urlencoded"
            };

            string result = string.Empty;
            try
            {
                result = objHttp.GetHtml(objHttpItem);
            }
            catch (Exception ex)
            {
                result = ex.Message;
            }

            return result;


        }

        //更新微信用户信息
        public static string UpdateWeiXinUserInfo(string str)
        {
            Random rand = new Random();
            string yswfTimestamp = ((DateTime.Now.ToUniversalTime().Ticks - 621355968000000000) / 10000000).ToString();
            //string yswfNonce = new RandomCode().CreateRandomNum(10);
            string yswfNonce = rand.Next(10000000, 99999999).ToString();
            string yswfTkName = ConfigurationManager.AppSettings["updatetoken"].ToString();

            string[] ArrTmp = { ConfigurationManager.AppSettings["updatetokenvalue"].ToString(), yswfTimestamp, yswfNonce };
            Array.Sort(ArrTmp);     //字典排序
            string tmpStr = string.Join("", ArrTmp);
            tmpStr = FormsAuthentication.HashPasswordForStoringInConfigFile(tmpStr, "SHA1");
            tmpStr = tmpStr.ToLower();

            string url = "http://112.124.70.247/weoper/mobile.php?act=module&name=yswfcommon&do=ApiMdfUser&weid=9&yswfSignature=" + tmpStr + "&yswfTimestamp=" + yswfTimestamp + "&yswfNonce=" + yswfNonce + "&yswfTkName=" + yswfTkName;

            HttpHelper objHttp = new HttpHelper();
            HttpItem objHttpItem = new HttpItem()
            {
                URL = url,

                Encoding = "utf-8",
                Method = "Post",
                Postdata = "post_data=" + str,
                Referer = "",
                IsToLower = false,
                ContentType = "application/x-www-form-urlencoded"
            };

            string result = string.Empty;
            try
            {
                result = objHttp.GetHtml(objHttpItem);
            }
            catch (Exception ex)
            {
                result = ex.Message;
            }

            return result;


        }

        //检索微信用户信息
        public static string SearchWeiXinUserInfo(string str)
        {
            Random rand = new Random();
            string yswfTimestamp = ((DateTime.Now.ToUniversalTime().Ticks - 621355968000000000) / 10000000).ToString();
            //string yswfNonce = new RandomCode().CreateRandomNum(10);
            string yswfNonce = rand.Next(10000000, 99999999).ToString();
            string yswfTkName = ConfigurationManager.AppSettings["searchtoken"].ToString();

            string[] ArrTmp = { ConfigurationManager.AppSettings["searchtokenvalue"].ToString(), yswfTimestamp, yswfNonce };
            Array.Sort(ArrTmp);     //字典排序
            string tmpStr = string.Join("", ArrTmp);
            tmpStr = FormsAuthentication.HashPasswordForStoringInConfigFile(tmpStr, "SHA1");
            tmpStr = tmpStr.ToLower();

            string url = "http://112.124.70.247/weoper/mobile.php?act=module&name=yswfcommon&do=ApiSearchUser&weid=9&yswfSignature=" + tmpStr + "&yswfTimestamp=" + yswfTimestamp + "&yswfNonce=" + yswfNonce + "&yswfTkName=" + yswfTkName;

            HttpHelper objHttp = new HttpHelper();
            HttpItem objHttpItem = new HttpItem()
            {
                URL = url,

                Encoding = "utf-8",
                Method = "Post",
                Postdata = "post_data=" + str,
                Referer = "",
                IsToLower = false,
                ContentType = "application/x-www-form-urlencoded"
            };

            string result = string.Empty;
            try
            {
                result = objHttp.GetHtml(objHttpItem);
            }
            catch (Exception ex)
            {
                result = ex.Message;
            }

            return result;


        }


        /// <summary>
        /// 计算两个日期的时间间隔
        /// </summary>
        /// <param name="DateTime1">第一个日期和时间</param>
        /// <param name="DateTime2">第二个日期和时间</param>
        /// <returns></returns>
        public static string DateDiff(DateTime DateTime1, DateTime DateTime2)
        {
            string dateDiff = "";

            TimeSpan ts1 = new TimeSpan(DateTime1.Ticks);
            TimeSpan ts2 = new TimeSpan(DateTime2.Ticks);
            TimeSpan ts = ts1.Subtract(ts2).Duration();
            dateDiff = ts.Minutes.ToString();

            return dateDiff;
        }
    }
}
