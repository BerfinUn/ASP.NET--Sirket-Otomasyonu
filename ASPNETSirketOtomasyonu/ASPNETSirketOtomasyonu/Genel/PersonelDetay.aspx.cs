using ASPNETSirketOtomasyonu.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETSirketOtomasyonu.Genel
{
    public partial class PersonelDetay : System.Web.UI.Page
    {
        ASPNETSirketEntities db = new ASPNETSirketEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int id = int.Parse(Request.QueryString["gelenid"]);
                var model = db.PersonelBasarilaris.Where(x => x.PersonelID == id).ToList();
                Repeater1.DataSource = model;
                Repeater1.DataBind();


                var personeller = db.Personellers.FirstOrDefault(x => x.ID == id);
                lblAdSoyad.Text = personeller.Adi + " " + personeller.Soyadi;
                Image1.ImageUrl = personeller.Resim;
                for (int i = 0; i < Repeater1.Items.Count; i++)
                {
                    var lbl = Repeater1.Items[i].FindControl("lblCount") as Label;
                    lbl.Text = (i + 1) + ".";


                }

            }

        }
    }
}