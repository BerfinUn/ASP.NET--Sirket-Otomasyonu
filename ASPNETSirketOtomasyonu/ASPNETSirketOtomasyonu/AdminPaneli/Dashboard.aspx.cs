using ASPNETSirketOtomasyonu.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETSirketOtomasyonu.AdminPaneli
{
    public partial class Dashboard : System.Web.UI.Page
    {
        ASPNETSirketEntities db = new ASPNETSirketEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
          

            var model = db.Kullanicilars;
           
            lblTotalAdmin.Text=model.Count(x=>x.YetkiID==1 || x.YetkiID==2).ToString();
            lblTotalUser.Text = model.Count().ToString();

            var model2 = db.Personellers;
            lblMaxMaas.Text = model2.Max(x => x.Maasi).ToString();
            lblMinMaas.Text=model2.Min(x => x.Maasi).ToString();

            var model3 = db.Personellers.OrderByDescending(x => x.ID).Take(3).ToList();
            Repeater1.DataSource = model3;
            Repeater1.DataBind();

            



        }
    }
}