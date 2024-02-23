using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Coronavirus
{
    public partial class AdminUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var id = Request.QueryString["id"];  
            if(id==null)
            {
                Response.Redirect("AdminList.aspx");
            }
            CoronaSql.Connection.Open();
            SqlCommand corona = new SqlCommand("select * from UserEnt where id=@id", CoronaSql.Connection);
            corona.Parameters.AddWithValue("@id", id);
            var result = corona.ExecuteReader(); 
            if (result.Read()&&Request.HttpMethod=="GET")
            {
                Username1.Text = result["Username"].ToString();
                Name1.Text = result["Name"].ToString();
                Surname1.Text = result["Surname"].ToString();
                Password1.Text = result["Password"].ToString();
                Email1.Text = result["Email"].ToString();
                Role.SelectedValue = result["Role"].ToString();
               
            }
            CoronaSql.Connection.Close();
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
           
            
        }

        protected void Submit1_Click(object sender, EventArgs e)
        {
            var id = Request.QueryString["id"];
            CoronaSql.Connection.Open();
            SqlCommand corona = new SqlCommand("Update UserEnt set Username=@username, Name=@name, Surname=@surname, Email=@email, Password=@password, Role=@role where id=@id", CoronaSql.Connection);
            corona.Parameters.AddWithValue("@username", Username1.Text);
            corona.Parameters.AddWithValue("@name", Name1.Text);
            corona.Parameters.AddWithValue("@surname",Surname1.Text);
            corona.Parameters.AddWithValue("@email", Email1.Text.Trim());
            corona.Parameters.AddWithValue("@password",Password1.Text);
            corona.Parameters.AddWithValue("@role", Role.SelectedValue);
            corona.Parameters.AddWithValue("@id", id);
            corona.ExecuteNonQuery();
            CoronaSql.Connection.Close();
            Response.Redirect("AdminList.aspx");
        }
    }
}