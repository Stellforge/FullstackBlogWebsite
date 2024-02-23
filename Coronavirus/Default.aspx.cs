using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Coronavirus
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CoronaSql.Connection.Open();
            SqlCommand command = new SqlCommand("Select * from AboutMe", CoronaSql.Connection);
            var result = command.ExecuteReader();
            if (result.Read())
            {
                title3.Text = result["title1"].ToString();
                about2.Text = result["about1"].ToString();
                title4.Text = result["title2"].ToString();
                about4.Text = result["about2"].ToString();
            }
            CoronaSql.Connection.Close();
        }
    }
}