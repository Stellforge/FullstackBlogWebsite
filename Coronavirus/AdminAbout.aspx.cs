using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Coronavirus
{
    public partial class AdminAbout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AboutSubmit1_Click(object sender, EventArgs e)
        {
            CoronaSql.Connection.Open();
            SqlCommand command = new SqlCommand("Insert Into AboutMe(Title1,About1,Title2,About2) values(@title1,@about1,@title2,@about2)", CoronaSql.Connection);
            command.Parameters.AddWithValue("@title1", abouttitle1.Text);
            command.Parameters.AddWithValue("@about1", Aboutcontent1.Text);
            command.Parameters.AddWithValue("@title2", abouttitle2.Text);
            command.Parameters.AddWithValue("@about2", Aboutcontent2.Text);
            command.ExecuteNonQuery();


            CoronaSql.Connection.Close();
        }


    }
}