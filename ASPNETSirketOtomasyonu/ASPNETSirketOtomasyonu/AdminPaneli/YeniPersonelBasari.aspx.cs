using ASPNETSirketOtomasyonu.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETSirketOtomasyonu.AdminPaneli
{
    public partial class YeniPersonelBasari : System.Web.UI.Page
    {
        ASPNETSirketEntities db = new ASPNETSirketEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            //dropdownlist e birden fazla alan çekmiş oluyoruz.
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
            }

        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            var model = new PersonelBasarilari
            {
                Basari = txtBasari.Text,
                PersonelID = int.Parse(DropDownList1.SelectedValue),
                Tarih = DateTime.Parse(txtTarih.Text)

            };
            db.PersonelBasarilaris.Add(model);
            db.SaveChanges();
            Response.Redirect("/AdminPaneli/PersonelBasarilariListele.aspx");
        }
    }
}