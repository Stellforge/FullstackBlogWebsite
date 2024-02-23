using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Coronavirus
{
    public partial class CommentListUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CoronaSql.Connection.Open();
            SqlCommand command = new SqlCommand("select * from UserComment", CoronaSql.Connection);
            var result = command.ExecuteReader();
            GridView1.DataSource = result;
            GridView1.DataBind();
            CoronaSql.Connection.Close();
        }
    }
}