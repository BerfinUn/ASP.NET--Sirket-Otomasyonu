using ASPNETSirketOtomasyonu.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETSirketOtomasyonu.AdminPaneli
{
    public partial class DuyuruDetay : System.Web.UI.Page
    {
        ASPNETSirketEntities db = new ASPNETSirketEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                int id = int.Parse(Request.QueryString["gelenid"]);
                var model = db.Duyurulars.FirstOrDefault(x=> x.ID == id);
                txtID.Text = model.ID.ToString();
                txtDuyuru.Text = model.Duyuru;
                txtBaslik.Text = model.Baslik;
                txtAciklama.Text = model.Aciklama;
                txtSaat.Text = model.Saat.ToString();
            }
        }
    }
}