﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Coronavirus
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var mail = new CoronaMailSender();
            var başlık = name.Text + " Adlı Kişisinden Mesaj";
            var içerik =  subject.Text + "\n" + message.Text +" \n email: " + email.Text ;

            mail.SendEmail(başlık,içerik,false,"stellforge6@gmail.com");

        }
    }
}