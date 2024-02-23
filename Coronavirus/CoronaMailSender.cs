using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;

namespace Coronavirus
{
    public class CoronaMailSender
    {
          private readonly string smtpServer;
        private readonly int    smtpPort;
        private readonly string smtpUsername;
        private readonly string smtpPassword;
        private readonly string smtpDisplayName;
        private readonly bool   smtpEnableSsl;
        private readonly string smtpDisplayAddress;



        public CoronaMailSender()
        {
            this.smtpServer = "smtp-relay.brevo.com";
            this.smtpPort = 587;
            this.smtpUsername = "stellforge6@gmail.com";
            this.smtpPassword = "xsmtpsib-915dd828768db046e85dcfbe0fa36c922fe70b8fd76cc6c9abacef6f0dc01bf8-0ItVn9pv1c83yHNK";
            this.smtpDisplayName = "stellforge6@gmail.com";
            this.smtpEnableSsl = true;
            this.smtpDisplayAddress = "no-reply@furkan.com";
        }


        public bool SendEmail( string subject, string body, bool isHtml = false, params string[] to)
        {
            try
            {

                MailMessage mailMessage = new MailMessage
                {
                    From = new MailAddress("no-reply@furkan.com"),
                    Subject = subject,
                    Body = body,
                    IsBodyHtml = isHtml,
                };
                foreach (var item in to)
                {
                    mailMessage.To.Add(item);
                }


                SmtpClient smtpClient = new SmtpClient(smtpServer)
                {
                    Port = smtpPort,
                    Credentials = new NetworkCredential(smtpDisplayName, smtpPassword),
                    EnableSsl = smtpEnableSsl,
                };


                smtpClient.Send(mailMessage);

                return true;
            }
            catch (Exception ex)
            {
                Console.WriteLine("E-posta gönderirken bir hata oluştu: " + ex.Message);
                return false;
            }
        }
    }
}