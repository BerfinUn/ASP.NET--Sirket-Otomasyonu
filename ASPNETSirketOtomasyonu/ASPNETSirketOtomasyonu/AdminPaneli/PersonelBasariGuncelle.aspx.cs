using ASPNETSirketOtomasyonu.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETSirketOtomasyonu.AdminPaneli
{
    public partial class PersonelBasariGuncelle : System.Web.UI.Page
    {
        ASPNETSirketEntities db = new ASPNETSirketEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var model = (from x in db.Personellers
                             select new
                             {
                                 Value = x.ID.ToString(),
                                 Text = x.Adi + " " + x.Soyadi
                             }).ToList();
                DropDownList1.DataSource = model;
                DropDownList1.DataValueField = "Value";
                DropDownList1.DataTextField = "Text";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, new ListItem("---Seçiniz---", "0"));

                int id = int.Parse(Request.QueryString["gelenid"]);
                var model2 = db.PersonelBasarilaris.FirstOrDefault(x => x.ID == id);
                DropDownList1.SelectedValue = model2.PersonelID.ToString();
                txtBasari.Text = model2.Basari;
                txtTarih.Text = model2.Tarih.Value.ToString("yyyy-MM-dd");
            }
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["gelenid"]);
            var model = db.PersonelBasarilaris.FirstOrDefault(x => x.ID == id);
            model.PersonelID = int.Parse(DropDownList1.SelectedValue);
            model.Basari = txtBasari.Text;
            model.Tarih = DateTime.Parse(txtTarih.Text);
            db.SaveChanges();
            Response.Redirect("/AdminPaneli/PersonelBasarilariListele.aspx");
        }
    }
}