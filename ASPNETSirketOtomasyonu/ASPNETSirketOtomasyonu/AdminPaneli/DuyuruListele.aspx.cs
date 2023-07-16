using ASPNETSirketOtomasyonu.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETSirketOtomasyonu.AdminPaneli
{
    public partial class DuyuruListesi : System.Web.UI.Page
    {
        public string KarakterSinirlama(string txt)
        {
            if (txt.Length > 20)
            {
                txt = txt.Substring(0, 20) + "...";
            }
            return txt;
        }
        ASPNETSirketEntities db = new ASPNETSirketEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var model = db.Duyurulars.ToList();
            Repeater1.DataSource = model;
            Repeater1.DataBind(); //VERİLERİ REPATERE BAĞLADIK.
        }

        protected void btnExcelExport_Click(object sender, EventArgs e)
        {
            Response.Clear();
            Response.Buffer = true;
            Response.ContentType = "application/ms-excel";
            Response.AddHeader("content-disposition", string.Format("attachment;filename=RepeaterExport.xls", "selectedrows"));
            Response.ContentEncoding = System.Text.Encoding.GetEncoding("windows-1254");
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            Repeater1.RenderControl(hw);
            Response.Output.Write(sw.ToString());
            Response.Flush();
            Response.End();
        }
    }
}