using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace deneme1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_giris_Click(object sender, EventArgs e)
        {
            OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.ACE.OleDb.12.0;Data Source=" + Server.MapPath("~/App_Data\\urunler.accdb"));
            baglanti.Open();
            OleDbDataAdapter sorgu_varmi = new OleDbDataAdapter("SELECT * from tbl_urunler WHERE urun_grubu='" + txt_grub.Text + "' and urun_sifresi='"+ txt_sifre.Text+"'", baglanti);
            DataTable tablo_varmi = new DataTable();
            sorgu_varmi.Fill(tablo_varmi);
            if (tablo_varmi.Rows.Count == 1)
            {
                Response.Redirect("urunler.aspx");
            }
            else { lbl_hata.Text = "Yanlış ürün grubu veya şifresi";
            }

        }
    }
}