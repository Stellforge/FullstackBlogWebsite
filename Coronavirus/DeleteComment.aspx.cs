using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Coronavirus
{
    public partial class DeleteComment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var id = Request.QueryString["Id"];
            CoronaSql.Connection.Open();
            SqlCommand corona = new SqlCommand("Delete from UserComment Where Id= @id ", CoronaSql.Connection);
            corona.Parameters.AddWithValue("@id", id);
            corona.ExecuteNonQuery();
            CoronaSql.Connection.Close();
            Response.Redirect("CommentListUpdate.aspx");
        }
    }
}