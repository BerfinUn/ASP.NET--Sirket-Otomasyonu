using ASPNETSirketOtomasyonu.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETSirketOtomasyonu.AdminPaneli
{
    public partial class PersonelListele : System.Web.UI.Page
    {
        ASPNETSirketEntities db = new ASPNETSirketEntities();
        public string TarihFormati(DateTime date)
        {
            string tarih = "";
            tarih = date.ToString("dd.MM.yyyy");
            return tarih;

        }
        public string KarakterSinirlama(string txt)
        {
            if (txt.Length > 20)
            {
                txt = txt.Substring(0, 20)+"...";
            }
            return txt;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            var model = db.Personellers.ToList();
            CollectionPager1.DataSource = model;
            CollectionPager1.BindToControl = Repeater1;
            Repeater1.DataSource = CollectionPager1.DataSourcePaged;
            Repeater1.DataBind();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            var model = db.Personellers.Where(x=>x.Adi.Contains(txtSearch.Text) || x.Soyadi.Contains(txtSearch.Text)).ToList();
            Repeater1.DataSource = model;
            Repeater1.DataBind();
        }
    }
}