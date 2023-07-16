using ASPNETSirketOtomasyonu.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETSirketOtomasyonu.AdminPaneli
{
    public partial class PersonelBasariDetay : System.Web.UI.Page
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
                                 Text =x.ID +"-" + x.Adi + " " + x.Soyadi
                             }).ToList();
                DropDownList1.DataSource = model;
                DropDownList1.DataValueField = "Value";
                DropDownList1.DataTextField = "Text";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, new ListItem("---Seçiniz---", "0"));
            }
        }
        public string TarihFormati(DateTime date)
        {
            string tarih = "";
            tarih = date.ToString("dd.MM.yyyy");
            return tarih;

        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int personelid = int.Parse(DropDownList1.SelectedValue);
            var model = db.PersonelBasarilaris.Where(x=>x.PersonelID==personelid).ToList();
            Repeater1.DataSource = model;
            Repeater1.DataBind();
            for (int i = 0; i < Repeater1.Items.Count; i++)
            {
                var lbl = Repeater1.Items[i].FindControl("lblCount") as Label;
                lbl.Text = (i + 1) + ".";
            }
        }
    }
}