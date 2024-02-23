using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Coronavirus
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            CoronaSql.Connection.Open();
            SqlCommand corona = new SqlCommand("Insert Into UserEnt(Username,Name,Surname,Email,Password,Role)values(@username,@name,@surname,@email,@password,@role)",CoronaSql.Connection);
            corona.Parameters.AddWithValue("@username",RegUsername.Text);
            corona.Parameters.AddWithValue("@name",RegName.Text);
            corona.Parameters.AddWithValue("@surname",RegSurname.Text);
            corona.Parameters.AddWithValue("@email",RegMail.Text);
            corona.Parameters.AddWithValue("@password",Regpassword.Text);
            corona.Parameters.AddWithValue("@role",2); // 1-Admin 2-User

            corona.ExecuteNonQuery();

            CoronaSql.Connection.Close();
            Response.Redirect("Login.aspx");


        }
    }
}