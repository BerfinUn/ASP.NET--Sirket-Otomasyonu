using ASPNETSirketOtomasyonu.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETSirketOtomasyonu.AdminPaneli
{
    public partial class YeniDuyuru : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        ASPNETSirketEntities db = new ASPNETSirketEntities();
        protected void btnEkle_Click(object sender, EventArgs e)
        {
            Duyurular model = new Duyurular
            {
                Baslik = txtBaslik.Text,
                Duyuru = txtDuyuru.Text,
                Aciklama = txtAciklama.Text,
                Tarih = DateTime.Now,
                Saat = DateTime.Now,
            };
            db.Duyurulars.Add(model);
            db.SaveChanges();
            Response.Redirect("/AdminPaneli/DuyuruListele.aspx");


        }
    }
}