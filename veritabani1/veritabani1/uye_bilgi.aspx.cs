using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
namespace veritabani1
{
    public partial class uye_bilgi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //veritabanı ile bağlantıya geçmeyi sağlar
            OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.ACE.OleDb.12.0;Data Source=" + Server.MapPath("~/App_Data\\uyeler.accdb"));
            //bağlantıya geçilen dosyayı açar
            baglanti.Open();
            //oledbdataadapter ile sql sorgusu hazırlanır
            OleDbDataAdapter sorgu = new OleDbDataAdapter("SELECT * from tbl_uyeler WHERE uye_id='" + Session["uye_kullanicim"] + "'", baglanti);  
            //boş bir tablo oluştur
            DataTable tablo = new DataTable();
            //tablo sorgu ile doldurulur
            sorgu.Fill(tablo);
            //eğer tablo da kayıt varsa doğru bilgiler girildi
            if (tablo.Rows.Count == 1)
            {
                //doğru üyenin bilgileri getirilir
                img_uyeResim.ImageUrl = Convert.ToString(tablo.Rows[0]["uye_resim"]);
                txt_ad.Text = Convert.ToString(tablo.Rows[0]["uye_ad"]);
                txt_soyad.Text = Convert.ToString(tablo.Rows[0]["uye_soyad"]);
                txt_telefon.Text = Convert.ToString(tablo.Rows[0]["uye_telefon"]);

            }
        }

        protected void btn_cikis_Click(object sender, EventArgs e)
        {
            //anasayfaya geri döner
            Response.Redirect("WebForm1.aspx");
        }
    }
}