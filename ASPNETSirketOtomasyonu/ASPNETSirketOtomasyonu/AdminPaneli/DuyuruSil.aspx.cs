using ASPNETSirketOtomasyonu.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETSirketOtomasyonu.AdminPaneli
{
    public partial class DuyuruSil : System.Web.UI.Page
    {
        ASPNETSirketEntities db = new ASPNETSirketEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int id = int.Parse(Request.QueryString["gelenid"]);
                var model = db.Duyurulars.FirstOrDefault(x => x.ID == id);
                txtID.Text = model.ID.ToString();
                txtBaslik.Text = model.Baslik;
                txtDuyuru.Text = model.Duyuru;
                txtAciklama.Text = model.Aciklama;
            }
        }

        protected void btnSil_Click(object sender, EventArgs e)
        {

            int id = int.Parse(Request.QueryString["gelenid"]);
            var model = db.Duyurulars.FirstOrDefault(x => x.ID == id);
            db.Duyurulars.Remove(model);
            db.SaveChanges();
            Response.Redirect("/AdminPaneli/DuyuruListele.aspx"); 
        }
    }
}