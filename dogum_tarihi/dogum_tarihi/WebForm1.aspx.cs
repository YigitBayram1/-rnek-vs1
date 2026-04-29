using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
namespace dogum_tarihi
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        DateTime bugun, dtarihi;
        TimeSpan yas = new TimeSpan();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_hesapla_Click(object sender, EventArgs e)
        {
            bugun = DateTime.Now;
            dtarihi = Convert.ToDateTime(txt_dogumTarihi.Text);
            yas = bugun - dtarihi;

            blt_sonuc.Items.Add((yas.Days / 365).ToString() + " Yaşındasın");
            blt_sonuc.Items.Add(yas.Days.ToString() + " gündür yaşıyorsunuz");
            blt_sonuc.Items.Add(CultureInfo.GetCultureInfo("tr-TR").DateTimeFormat.DayNames[(int)dtarihi.DayOfWeek].ToString() + " günü doğdunuz");


        }
    }
}