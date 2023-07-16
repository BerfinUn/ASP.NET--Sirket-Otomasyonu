using ASPNETSirketOtomasyonu.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETSirketOtomasyonu.AdminPaneli
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session.Count > 0)
            {
                Response.Redirect("/Default.aspx");
            }

        }
        ASPNETSirketEntities db = new ASPNETSirketEntities();
        protected void btnGiris_Click(object sender, EventArgs e)
        {
            var model = db.Kullanicilars.FirstOrDefault(x => x.KullaniciAdi == txtKullaniciAdi.Text && x.Sifre == txtSifre.Text);
            if (model != null)
            {
                if (model.YetkiID==1 || model.YetkiID==2)
                {
                    Session["Admin"] = model.KullaniciAdi;
                    Response.Redirect("/AdminPaneli/Dashboard.aspx");
                }
                else if (model.YetkiID>2)
                {
                    Session["User"] = model.KullaniciAdi;
                    Response.Redirect("/Default.aspx");
                }
                Session.Timeout = 25;
            }
            else if (model == null)
            {
                Response.Write("Kullanıcı adı veya şifre yanlış");
            }
        }
    }
}