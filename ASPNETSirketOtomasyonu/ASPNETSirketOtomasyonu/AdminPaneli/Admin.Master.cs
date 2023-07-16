using ASPNETSirketOtomasyonu.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETSirketOtomasyonu.AdminPaneli
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        ASPNETSirketEntities db = new ASPNETSirketEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Admin"] != null)
            {
                string username = Session["Admin"].ToString();
                var model = db.Kullanicilars.FirstOrDefault(x => x.KullaniciAdi == username);
                lblAdSoyad.Text = model.Adi + " " + model.Soyadi;
                lblAdSoyad2.Text = model.Adi + " " + model.Soyadi;
                lblYetki.Text = model.Yetkilendirme.Yetki;
                ImageUser.ImageUrl = model.Resim;

            }
            else if (Session["Admin"] == null)
            {
                Response.Redirect("/Default.aspx");
            }

        }
     
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Response.Redirect("/AdminPaneli/AdminArama.aspx?gelendeger=" + txtSearch.Text.Trim());
        }
    }
}