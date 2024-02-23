using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Coronavirus
{
    public partial class AddBlock : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void BlogSubmit_Click(object sender, EventArgs e)
        {
            CoronaSql.Connection.Open();

            if (!BlogImage.HasFile)
            {
                Response.Write("Dosya Seçiniz");
                return;
            }

            var dosyaIsim = BlogImage.PostedFile.FileName;

            BlogImage.PostedFile.SaveAs(Server.MapPath("~/Images/" + dosyaIsim));



            SqlCommand command = new SqlCommand("Insert Into Blog(Title,Shortdescription,Date,Image,Content) values(@title,@shortdes,@date,@image,@content)", CoronaSql.Connection);
            command.Parameters.AddWithValue("@title", Blogtitle.Text);
            command.Parameters.AddWithValue("@shortdes", Blogshortdes.Text);
            command.Parameters.AddWithValue("@date", DateTime.Now);
            command.Parameters.AddWithValue("@content", BlogContent.Text);
            command.Parameters.AddWithValue("@image", "~/Images/" + dosyaIsim);

            command.ExecuteNonQuery();

            CoronaSql.Connection.Close();

        }
    }
}