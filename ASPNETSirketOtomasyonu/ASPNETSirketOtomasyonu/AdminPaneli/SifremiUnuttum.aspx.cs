using ASPNETSirketOtomasyonu.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETSirketOtomasyonu.AdminPaneli
{
    public partial class SifremiUnuttum : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session.Count > 0)
            {
                Response.Redirect("/Default.aspx");
            }
        }
        ASPNETSirketEntities db = new ASPNETSirketEntities();
        protected void btnResetle_Click(object sender, EventArgs e)
        {
            var model = db.Kullanicilars.FirstOrDefault(x => x.Email == txtEmail.Text);
            if (model != null)
            {
                Guid guid = Guid.NewGuid();
                model.Sifre = guid.ToString().Substring(0, 8);
                
                SmtpClient client = new SmtpClient();
                
                client.Credentials = new NetworkCredential("testberfinn@gmail.com", "13579berfin");
                client.Port = 587;
                client.Host = "smtp.gmail.com";
                client.EnableSsl = true;
                MailMessage mail = new MailMessage();
                mail.To.Add(txtEmail.Text);
                mail.From = new MailAddress("testberfinn@gmail.com", "Şifre Yenileme");
                mail.IsBodyHtml = true;
                mail.Subject = "şifre sıfırlama";
                mail.Body += "Merhaba " + model.Adi + " " + model.Soyadi + " <br/> Kullanıcı adınız=" + model.KullaniciAdi + "<br/> Şifreniz=" + model.Sifre;

                try
                {
                    client.Send(mail);
                    db.SaveChanges();
                    Response.Redirect("/AdminPaneli/Login.aspx");
                }
                catch (Exception)
                {
                   
                    throw;

                }

            }
         
        }
    }
}