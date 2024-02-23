using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Coronavirus
{
    public partial class About : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CoronaSql.Connection.Open();
            SqlCommand command = new SqlCommand("Select * from AboutMe", CoronaSql.Connection);
            var result = command.ExecuteReader();
            if (result.Read())
            {
                About2.Text = result["title1"].ToString();
                Aboutlab1.Text = result["about1"].ToString();
                Label2.Text = result["title2"].ToString();
                Aboutlab4.Text = result["about2"].ToString();
            }
            CoronaSql.Connection.Close();








        }
    }
}