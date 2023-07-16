using ASPNETSirketOtomasyonu.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETSirketOtomasyonu.AdminPaneli
{
    public partial class BirimGuncelle : System.Web.UI.Page
    {
        ASPNETSirketEntities db = new ASPNETSirketEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                int id = int.Parse(Request.QueryString["gelenid"]);
                var model = db.Birimlers.FirstOrDefault(x => x.ID == id);
                txtID.Text = model.ID.ToString();
                txtBirim.Text = model.Birim;
                txtAciklama.Text = model.Aciklama;
            }


        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["gelenid"]);
            var model = db.Birimlers.FirstOrDefault(x => x.ID == id);
            model.Birim = txtBirim.Text;
            model.Aciklama = txtAciklama.Text;
            db.SaveChanges();
            Response.Redirect("/AdminPaneli/BirimListele.aspx");

        }
    }
}