using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Coronavirus
{
    public partial class AdminLayout : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if((bool?)Session["Aktif"]==false|| (bool?)Session["Aktif"] == null)
            {
                Response.Redirect("/");
            }
            User.Text = Session["username"].ToString();           
            Role1.Text = Session["Role"].ToString();
            name.Text = Session["name"].ToString();

            if (Role1.Text == "1")
            {
                Role1.Text = "Admin";
            }
            else if (Role1.Text == "2")
            {
                Role1.Text = "User"; 
            }

            HyperLink1.NavigateUrl = "AccountSettings.aspx?id=" + Session["id"].ToString();

        }

        protected void LogOutBTN_Click1(object sender, EventArgs e)
        {
            Session["Aktif"] = false ;
            Response.Redirect("Login.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AccountSettings.aspx?id="+ Session["id"].ToString());
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            Session["Aktif"] = false;
            Response.Redirect("Login.aspx");
         
        }

        protected void Accset_Click(object sender, EventArgs e)
        {
            Response.Redirect("AccountSettings.aspx?id="+ Session["id"].ToString());
        }

        protected void ChangePassword_Click(object sender, EventArgs e)
        {
            Response.Redirect("AccountSettings.aspx?id= "+ Session["id"].ToString());
        }

        protected void Todolist_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminIndex.aspx");
        }
    }
}