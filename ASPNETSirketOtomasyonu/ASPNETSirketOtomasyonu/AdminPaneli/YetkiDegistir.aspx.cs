using ASPNETSirketOtomasyonu.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETSirketOtomasyonu.AdminPaneli
{
    public partial class YetkiDegistir : System.Web.UI.Page
    {
        ASPNETSirketEntities db = new ASPNETSirketEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var model = db.Yetkilendirmes.ToList();
                DropdownList1.DataSource = model;
                DropdownList1.DataValueField = "ID";
                DropdownList1.DataTextField = "Yetki";
                DropdownList1.DataBind();

                int id = int.Parse(Request.QueryString["gelenid"]);
                var user = db.Kullanicilars.FirstOrDefault(x => x.ID == id);
                txtID.Text = user.ID.ToString();
                txtAdSoyad.Text = user.Adi + "" + user.Soyadi;
                DropdownList1.SelectedValue = user.YetkiID.ToString();

            }
        }

        protected void btnYetki_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["gelenid"]);
            var user = db.Kullanicilars.FirstOrDefault(x => x.ID == id);
            user.YetkiID=int.Parse(DropdownList1.SelectedValue);
            db.SaveChanges();
            Response.Redirect("/AdminPaneli/KullaniciListele.aspx");

        }
    }
}