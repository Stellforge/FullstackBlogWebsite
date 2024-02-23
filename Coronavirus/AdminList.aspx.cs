using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Coronavirus
{
    public partial class AdminList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CoronaSql.Connection.Open();
            SqlCommand command = new SqlCommand("select * from UserEnt", CoronaSql.Connection);
            var result = command.ExecuteReader();
            AdminList1.DataSource = result;
            AdminList1.DataBind();
            CoronaSql.Connection.Close();
        }

        protected void AdminList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
          
        }
    }
}