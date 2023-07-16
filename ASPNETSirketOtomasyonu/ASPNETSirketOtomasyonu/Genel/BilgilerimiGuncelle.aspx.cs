using ASPNETSirketOtomasyonu.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETSirketOtomasyonu.Genel
{
    public partial class BilgilerimiGuncelle : System.Web.UI.Page
    {
        ASPNETSirketEntities db = new ASPNETSirketEntities();
        string username = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SessionKontrol();
                var model = db.Kullanicilars.FirstOrDefault(x => x.KullaniciAdi == username);
                Image1.ImageUrl = model.Resim;
                txtAdi.Text = model.Adi;
                txtSoyadi.Text = model.Soyadi;
                txtKullaniciAdi.Text = model.KullaniciAdi;
                txtSifre.Text = model.Sifre;
                txtEmail.Text = model.Email;

            }

        }

        private void SessionKontrol()
        {
            if (Session["Admin"] != null)
            {
                username = Session["Admin"].ToString();
            }
            if (Session["User"] != null)
            {
                username = Session["User"].ToString();
            }
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            SessionKontrol();
            var model = db.Kullanicilars.FirstOrDefault(x => x.KullaniciAdi == username);
            model.KullaniciAdi = txtKullaniciAdi.Text;
            model.Adi = txtAdi.Text;
            model.Soyadi = txtSoyadi.Text;
            model.Email = txtEmail.Text;
            model.Sifre = txtSifre.Text;
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("/ImageUsers/" + FileUpload1.FileName));
                model.Resim = "/ImageUsers/" + FileUpload1.FileName;

            }
            db.SaveChanges();
            Session.Abandon();
            Response.Redirect("/AdminPaneli/Login.aspx");
        }
    }
}