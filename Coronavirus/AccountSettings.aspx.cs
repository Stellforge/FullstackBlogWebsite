using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Coronavirus
{
    public partial class AccountSettings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var id = Request.QueryString["id"];
            if (id == null)
            {
                Response.Redirect("AdminIndex.aspx");
            }
            CoronaSql.Connection.Open();
            SqlCommand corona = new SqlCommand("select * from UserEnt where id=@id", CoronaSql.Connection);
            corona.Parameters.AddWithValue("@id", id);
            var result = corona.ExecuteReader();
            if (result.Read() && Request.HttpMethod == "GET")
            {
                UsernameSET.Text = result["Username"].ToString();
                NameSET.Text = result["Name"].ToString();
                SurnameSET.Text = result["Surname"].ToString();
                PasswordSET.Text = result["Password"].ToString();
                EmailSET.Text = result["Email"].ToString();


            }
            CoronaSql.Connection.Close();
        }

        protected void Submit1_Click(object sender, EventArgs e)
        {
            var id = Request.QueryString["id"];
            CoronaSql.Connection.Open();
            SqlCommand corona = new SqlCommand("Update UserEnt set Username=@username, Name=@name, Surname=@surname, Email=@email, Password=@password where id=@id", CoronaSql.Connection);
            corona.Parameters.AddWithValue("@username", UsernameSET.Text);
            corona.Parameters.AddWithValue("@name", NameSET.Text);
            corona.Parameters.AddWithValue("@surname", SurnameSET.Text);
            corona.Parameters.AddWithValue("@email", EmailSET.Text.Trim());
            corona.Parameters.AddWithValue("@password", PasswordSET.Text);      
            corona.Parameters.AddWithValue("@id", id);
            corona.ExecuteNonQuery();
            CoronaSql.Connection.Close();
            Response.Redirect("AdminIndex.aspx");
        }
    }
}