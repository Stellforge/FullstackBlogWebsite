using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Coronavirus
{
    public partial class BlogUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var id = Request.QueryString["Id"];
            if (id == null)
            {
                Response.Redirect("Bloglist.aspx");
            }
            CoronaSql.Connection.Open();
            SqlCommand corona = new SqlCommand("select * from Blog where Id=@id", CoronaSql.Connection);
            corona.Parameters.AddWithValue("@id", id);
            var result = corona.ExecuteReader();
            if (result.Read() && Request.HttpMethod == "GET")
            {
                Blogtitle.Text = result["Title"].ToString();
                Blogshortdes.Text = result["Shortdescription"].ToString();
                BlogContent.Text = result["Content"].ToString();
                //Password1.Text = result["Password"].ToString();
                //Email1.Text = result["Email"].ToString();
                //Role.SelectedValue = result["Role"].ToString();

            }
            CoronaSql.Connection.Close();
        }

        protected void BlogSubmit_Click(object sender, EventArgs e)
        {
            if (!BlogImage.HasFile)
            {
                Response.Write("Dosya Seçiniz");
                return;
            }

            var dosyaIsim = BlogImage.PostedFile.FileName;

            BlogImage.PostedFile.SaveAs(Server.MapPath("~/Images/" + dosyaIsim));


            var id = Request.QueryString["Id"];
            CoronaSql.Connection.Open();
            SqlCommand corona = new SqlCommand("Update Blog set Title=@title, Shortdescription=@shortdes, Content=@content, Image=@image where Id=@id", CoronaSql.Connection);
            corona.Parameters.AddWithValue("@title", Blogtitle.Text);
            corona.Parameters.AddWithValue("@shortdes", Blogshortdes.Text);
            corona.Parameters.AddWithValue("@content", BlogContent.Text);
            corona.Parameters.AddWithValue("@image", "~/Images/" + dosyaIsim);
            corona.Parameters.AddWithValue("@id", id);
            corona.ExecuteNonQuery();
            CoronaSql.Connection.Close();
            Response.Redirect("BlogList.aspx");
        }
    }
}