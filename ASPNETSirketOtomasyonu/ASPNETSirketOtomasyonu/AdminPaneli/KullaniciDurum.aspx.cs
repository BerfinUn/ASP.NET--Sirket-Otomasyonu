using ASPNETSirketOtomasyonu.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETSirketOtomasyonu.AdminPaneli
{
    public partial class KullaniciDurum : System.Web.UI.Page
    {
        ASPNETSirketEntities db = new ASPNETSirketEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["gelenid"]);
            var model = db.Kullanicilars.FirstOrDefault(x=>x.ID == id);
            if (model.Isactive == true) 
            {
                model.Isactive = false;
            }
            else if(model.Isactive == false)
            {
                model.Isactive = true;
            }
            db.SaveChanges();
            Response.Redirect("/AdminPaneli/KullaniciListele.aspx");
        }
    }
}