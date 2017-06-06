using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
    public class applyactivityuser
    {
        public int id
        {
            set;
            get;
        }
        public string mobilephone
        {
            set;
            get;
        }
        public string smscode
        {
            set;
            get;
        }
        public string smscodetime
        {
            set;
            get;
        }
        public string applykey
        {
            set;
            get;
        }
        public string applysuccesssms
        {
            set;
            get;
        }

        public DateTime createdate
        {
            set;
            get;
        }
        public DateTime applydate
        {
            set;
            get;
        }
        public int aasid
        {
            set;
            get;
        }

    }

    public class ApplyActivityUser
    {
        public List<applyactivityuser> Rows
        {
            set;
            get;
        }

    }
}