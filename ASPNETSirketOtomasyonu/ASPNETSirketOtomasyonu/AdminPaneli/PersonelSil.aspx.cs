using ASPNETSirketOtomasyonu.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETSirketOtomasyonu.AdminPaneli
{
    public partial class PersonelSil : System.Web.UI.Page
    {
        ASPNETSirketEntities db = new ASPNETSirketEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["gelenid"]);
            var model = db.Personellers.FirstOrDefault(x=>x.ID==id);
            db.Personellers.Remove(model);
            db.SaveChanges();
            Response.Redirect("/AdminPaneli/PersonelListele.aspx");
        }
    }
}