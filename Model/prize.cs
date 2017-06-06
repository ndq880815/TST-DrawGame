using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
    public class Prize
    {

        public int id
        {
            set;
            get;
        }
        public string prizename
        {
            set;
            get;
        }
        public int prizelevel
        {
            set;
            get;
        }
        public int prizenumber
        {
            set;
            get;
        }
        public int tstcount
        {
            set;
            get;
        }
    }

    public class prize
    {
        public List<Prize> Rows
        {
            set;
            get;
        }

    }
}