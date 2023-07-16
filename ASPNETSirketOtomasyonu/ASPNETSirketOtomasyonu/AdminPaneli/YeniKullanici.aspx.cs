using ASPNETSirketOtomasyonu.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETSirketOtomasyonu.AdminPaneli
{
    public partial class YeniKullanici : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session.Count > 0)
            {
                Response.Redirect("/Default.aspx");
            }

        }
        ASPNETSirketEntities db = new ASPNETSirketEntities();
        protected void btnOlustur_Click(object sender, EventArgs e)
        {
            if (txtSifre.Text == txtSifreTekrar.Text)
            {
                var model = new Kullanicilar
                {
                    Adi = txtAdi.Text,
                    Soyadi = txtSoyadi.Text,
                    Sifre = txtSifre.Text,
                    KullaniciAdi = txtKullaniciAdi.Text,
                    Email = txtEmail.Text,
                    Isactive = false,
                    YetkiID = 4,
                    GirisTarihi = DateTime.Now

                };
                if (FileUpload1.HasFile)
                {
                    FileUpload1.SaveAs(Server.MapPath("/ImageUsers/" + FileUpload1.FileName));
                    model.Resim = "/ImageUsers/" + FileUpload1.FileName;
                }
                db.Kullanicilars.Add(model);
                db.SaveChanges();
                Response.Redirect("/AdminPaneli/Login.aspx");
            }
            else
            {
                Response.Write("Şifreler Uyuşmuyor");
            }

        }
    }
}