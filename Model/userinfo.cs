using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
    public class UserInfo
    {
        public string tstcode
        {
            set;
            get;
        }
        public int tstcount
        {
            set;
            get;
        }
        public string usercode
        {
            set;
            get;
        }

    }

    public class userinfo
    {
        public List<UserInfo> Rows
        {
            set;
            get;
        }

    }
}