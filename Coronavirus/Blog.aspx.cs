using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Coronavirus
{
    public partial class Blog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CoronaSql.Connection.Open();
            SqlCommand command = new SqlCommand("Select * from Blog", CoronaSql.Connection);
            var result = command.ExecuteReader();
            blogview.DataSource = result;
            blogview.DataBind();
            CoronaSql.Connection.Close();

         

        }
    }
}