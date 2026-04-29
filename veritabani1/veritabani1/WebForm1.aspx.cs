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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_giris_Click(object sender, EventArgs e)
        {
            //veritabanı ile bağlantıya geçmeyi sağlar
            OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.ACE.OleDb.12.0;Data Source="+ Server.MapPath("~/App_Data\\uyeler.accdb"));
            //bağlantıya geçilen dosyayı açar
            baglanti.Open();
            //oledbdataadapter ile sql sorgusu hazırlanır
            OleDbDataAdapter sorgu = new OleDbDataAdapter("SELECT * from tbl_uyeler WHERE uye_id='" + txt_kullaniciAdi.Text +"' And uye_sifre='"+txt_sifre.Text+ "'",baglanti  );
            //boş bir tablo oluştur
            DataTable tablo=new DataTable();
            //tablo sorgu ile doldurulur
            sorgu.Fill(tablo);
            //eğer tablo da kayıt varsa doğru bilgiler girildi
            if (tablo.Rows.Count==1)
            {
                //Diğer sayfaya girilen kişiyi gönderir.
                Session["uye_kullanicim"] = tablo.Rows[0]["uye_id"];
                //baglanti kapatılır
                baglanti.Close();
                //diğer sayfaya gidilir
                Response.Redirect("uye_bilgi.aspx");
            }
            else
            {
                // doğru bilgiler girilmediğinde
                lbl_mesaj.Text = "Kullanıcı adı veya şifresi yanlış";
                // baglanti kapatılır
                baglanti.Close ();
            }

        }
    }
}