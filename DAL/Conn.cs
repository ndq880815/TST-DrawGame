using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;

namespace DAL
{
    public class Conn
    {
        public static readonly string connectionstring = ConfigurationManager.ConnectionStrings["cruzeConnectionString"].ConnectionString;
    }
}
