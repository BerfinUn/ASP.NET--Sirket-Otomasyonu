using ASPNETSirketOtomasyonu.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETSirketOtomasyonu.AdminPaneli
{
    public partial class YeniPersonel : System.Web.UI.Page
    {
        ASPNETSirketEntities db = new ASPNETSirketEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var model = db.Birimlers.ToList();
            DropdownBirim.DataSource = model;
            DropdownBirim.DataTextField = "Birim";
            DropdownBirim.DataValueField = "ID";
            DropdownBirim.DataBind();

        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            bool aktifmi = false;
            if (RadioAktif.Checked == true)
            {
                aktifmi = true;
            }
            else if(RadioPasif.Checked == true)
            {
                aktifmi = false;
            }

            FileUpload1.SaveAs(Server.MapPath("/Images/" + FileUpload1.FileName));
            var model = new Personeller
            {
                Adi=txtAd.Text,
                Soyadi=txtSoyad.Text,
                BirimID=int.Parse(DropdownBirim.SelectedValue),
                Tel_1=txtTel1.Text,
                Tel_2=txtTel2.Text,
                Email=txtEmail.Text,
                Adres=txtAdres.Text,
                Maasi=decimal.Parse(txtMaas.Text),
                Resim="/Images/"+FileUpload1.FileName,
                Aciklama=txtAciklama.Text,
                Isactive=aktifmi,
                GirisTarih=DateTime.Parse(txtTarih.Text)


            };
            db.Personellers.Add(model);
            db.SaveChanges();
            Response.Redirect("/AdminPaneli/PersonelListele.aspx");
        }
    }
}