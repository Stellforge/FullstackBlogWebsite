using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Coronavirus
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Loginbutton_Click(object sender, EventArgs e)
        {
            if (Logbox.Text == "" || Logpassword.Text == "")
            {
              
                Uyari.Text = "**Username and password cannot be empty.**";
            }
            else 
            { 
            CoronaSql.Connection.Open();
            SqlCommand corona = new SqlCommand("Select * from UserEnt where (Email=@email or Username=@username) and Password=@password", CoronaSql.Connection);
            corona.Parameters.AddWithValue("@email", Logbox.Text.Trim());
            corona.Parameters.AddWithValue("@username", Logbox.Text);
            corona.Parameters.AddWithValue("@password", Logpassword.Text);
            var result = corona.ExecuteReader();

            if (result.Read())
                {
                    Uyari.Text = "Login Successfull !!";
                    Session["username"] = result["username"].ToString();
                    Session["name"] = result["Name"].ToString();            
                    Session["id"] = result["id"].ToString();
                    Session["role"] = result["Role"].ToString();
                    Session["Aktif"] = true ;
                    CoronaSql.Connection.Close();

                    Response.Redirect("AdminIndex.aspx");
                }
                else
                {
                    Uyari.Text = "Something is wrong, check your mail or password !!";
                }
                   
            CoronaSql.Connection.Close();


            } 
        }
    }
}