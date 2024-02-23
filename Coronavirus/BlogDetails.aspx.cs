using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Coronavirus
{
    public partial class BlogDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var id = Request.QueryString["Id"];
            if (id == null)
            {
                Response.Redirect("Blog.aspx");
            }
            CoronaSql.Connection.Open();
            SqlCommand corona = new SqlCommand("select * from Blog where Id=@id", CoronaSql.Connection);
            corona.Parameters.AddWithValue("@id", id);
            var result = corona.ExecuteReader();
            if (result.Read())
            {
                Label1.Text = result["Title"].ToString();
                Image1.ImageUrl = result["Image"].ToString();
                Label2.Text = result["Content"].ToString();
               

            } CoronaSql.Connection.Close();
           


                CoronaSql.Connection.Open();
                SqlCommand corona2 = new SqlCommand("select * from UserComment where BlogId=@id", CoronaSql.Connection);
                corona2.Parameters.AddWithValue("@id", id);
                var result2 = corona2.ExecuteReader();
                if (result2.Read())
                {
                    commentview.DataSource = result2;
                    commentview.DataBind();
                    
                }CoronaSql.Connection.Close();


        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            var id = Request.QueryString["Id"];
            CoronaSql.Connection.Open();
            SqlCommand corona = new SqlCommand("Insert Into UserComment(Name,Email,Comment,BlogId,Date) values(@name,@email,@comment,@blogid,@date)", CoronaSql.Connection);
            corona.Parameters.AddWithValue("@name", Name.Text);
            corona.Parameters.AddWithValue("@email", Email.Text);
            corona.Parameters.AddWithValue("@comment", comment.Text);
            corona.Parameters.AddWithValue("@blogid", id);
            corona.Parameters.AddWithValue("@date", DateTime.Now);
           
            corona.ExecuteNonQuery();
          
            CoronaSql.Connection.Close();


        }
    }
}