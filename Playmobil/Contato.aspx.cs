using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace Playmobil
{
    public partial class Contato : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btEnviar_Click(object sender, EventArgs e)
        {
            MailMessage email = new MailMessage();
            email.From = new MailAddress(tbEmail.Text, tbNome.Text);
            email.Subject = tbAssunto.Text;
            email.Body = tbMenssagem.Text;
            email.To.Add(new MailAddress("victorpradorm@gmail.com"));
            email.IsBodyHtml = false;

            SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
            smtp.Credentials = new System.Net.NetworkCredential("tcasseb", "");
            smtp.EnableSsl = true;
            smtp.Send(email);
        }
    }
}