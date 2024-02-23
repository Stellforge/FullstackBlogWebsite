using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Coronavirus
{
    public partial class AdminIndex : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CoronaSql.Connection.Open();
            SqlCommand command1 = new SqlCommand("select count(*) as Counter from UserEnt", CoronaSql.Connection);
            var countResult = command1.ExecuteReader();
            if (countResult.Read())
            {
                Aktifsayısı.Text = countResult["Counter"].ToString();
            }

            CoronaSql.Connection.Close();

            CoronaSql.Connection.Open();
            SqlCommand command2 = new SqlCommand("select count(*) as Counter from Blog", CoronaSql.Connection);
            var countResult2 = command2.ExecuteReader();
            if (countResult2.Read())
            {
                blogsayısı.Text = countResult2["Counter"].ToString();
            }

            CoronaSql.Connection.Close();

            CoronaSql.Connection.Open();
            SqlCommand command3 = new SqlCommand("select count(*) as Counter from UserComment", CoronaSql.Connection);
            var countResult3 = command3.ExecuteReader();
            if (countResult3.Read())
            {
                Label3.Text = countResult3["Counter"].ToString();
            }

            CoronaSql.Connection.Close();



            CoronaSql.Connection.Open();
            SqlCommand corona2 = new SqlCommand("select * from UserComment", CoronaSql.Connection);
            var result2 = corona2.ExecuteReader();
            commentview.DataSource = result2;
            commentview.DataBind();
            CoronaSql.Connection.Close();

        }
        public void LogOutBTN_Click(object sender, EventArgs e)
        {
            Response.Write("Çıkış yapıldı");
        }


    }
}