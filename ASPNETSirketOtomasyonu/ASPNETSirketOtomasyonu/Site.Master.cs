using ASPNETSirketOtomasyonu.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETSirketOtomasyonu
{
    public partial class SiteMaster : MasterPage
    {
        ASPNETSirketEntities db = new ASPNETSirketEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var model = db.Birimlers.ToList();
            Repeater1.DataSource = model;
            Repeater1.DataBind();
            if (Session.Count > 0)
            {
                pnlLogin.Visible = false;
                pnlUser.Visible = true;
                if (Session["Admin"] != null)
                {
                    lblUser.Text = Session["Admin"].ToString();
                } 
                if (Session["User"] != null)
                {
                    lblUser.Text = Session["User"].ToString();
                }
                return;
               
            }

            pnlLogin.Visible = true;
            pnlUser.Visible = false;


        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Genel/SiteArama?gelendeger=" + txtSearch.Text.Trim());
        }
    }
}