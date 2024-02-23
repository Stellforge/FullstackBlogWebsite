using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Coronavirus
{
    public class CoronaSql
    {
        public static SqlConnection Connection = new SqlConnection("Data Source=DESKTOP-72O7ROI;Integrated Security=True;Initial Catalog=Corona");
    }
}