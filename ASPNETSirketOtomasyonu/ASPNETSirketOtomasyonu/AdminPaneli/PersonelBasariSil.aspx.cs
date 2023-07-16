using ASPNETSirketOtomasyonu.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETSirketOtomasyonu.AdminPaneli
{
    public partial class PersonelBasariSil : System.Web.UI.Page
    {
        ASPNETSirketEntities db = new ASPNETSirketEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int id =int.Parse(Request.QueryString["gelenid"]);
                var model = db.PersonelBasarilaris.FirstOrDefault(x=>x.ID==id);
                db.PersonelBasarilaris.Remove(model);
                db.SaveChanges();
                Response.Redirect("/AdminPaneli/PersonelBasarilariListele.aspx");
            }
        }
    }
}