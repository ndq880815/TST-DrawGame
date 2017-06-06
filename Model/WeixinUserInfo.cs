using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
    public class user_weixin_data
    {
        public string weid { get; set; }
        public string lastupdate { get; set; }
        public string from_user { get; set; }
        public string subscribe { get; set; }
        public string nickname { get; set; }
        public string sex { get; set; }
        public string city { get; set; }
        public string country { get; set; }
        public string province { get; set; }
        public string language { get; set; }
        public string headimgurl { get; set; }
        public string privilege { get; set; }
        public string subscribe_time { get; set; }
        public string createtime { get; set; }
        public more more
        {
            set;
            get;
        }
    }

    public class more
    {
        public string mobile { get; set; }
        public int mobile_status { get; set; }
        public int sex { get; set; }
        public string birth { get; set; }
        public string email { get; set; }
        public string realname { get; set; }
    }

    public class UserParam
    {
        public string from_user { get; set; }
        public int real_time { get; set; }
    }

    public class WeixinUpdateUserParam
    {
        public string from_user { get; set; }
        public string mobile { get; set; }
        public int mobile_status { get; set; }
        public int sex { get; set; }
        public string birth { get; set; }
        public string email { get; set; }
        public string realname { get; set; }
    }

    public class WeiXinUserObjectResult
    {
        public string result
        {
            set;
            get;
        }
        public jsonResponse jsonResponse
        {
            set;
            get;
        }
    }

    public class jsonResponse
    {
        public user_weixin_data user_weixin_data { get; set; }
    }

    public class WeiXinUserSearchParam
    {
        public int perpage { get; set; } //可选参数。返回数据的每页记录数，默认为1000，取值范围1到1000
        public int pagenum { get; set; }//可选参数。返回数据的当前页码，默认为1。
        public List<string> openids  //可选参数。openid数组，最多1000个
        {
            set;
            get;
        }
        public List<string> mobiles  //可选参数。手机号数组，最多1000个
        {
            set;
            get;
        }
    }

    public class WeiXinUserSearchResult
    {
        public string result
        {
            set;
            get;
        }
        public jsonResponseSearch jsonResponse
        {
            set;
            get;
        }
    }

    public class jsonResponseSearch
    {
        public int total { get; set; } //总记录数
        public int pagenum { get; set; }//当前页码
        public int perpage { get; set; } //每页记录数
        public int pagetotal { get; set; }//总共的页数
        //public Dictionary<string, user_weixin_data> users
        //{
        //    get;
        //    set;
        //}
        public object users
        {
            get;
            set;
        }
    }   
}
