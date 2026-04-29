using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sayinin_okunusu
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_oku_Click(object sender, EventArgs e)
        {
            lbl_sonuc.Text = "";
            int sayi;
            sayi=Convert.ToInt32(txt_sayi.Text);
            //Binler basamağı
            switch (sayi/1000)  
            {  
                case 9: lbl_sonuc.Text = lbl_sonuc.Text + "Dokuzbin";break;
                case 8: lbl_sonuc.Text = lbl_sonuc.Text + "Sekizbin"; break;
                case 7: lbl_sonuc.Text = lbl_sonuc.Text + "Yedibin"; break;
                case 6: lbl_sonuc.Text = lbl_sonuc.Text + "Altıbin"; break;
                case 5: lbl_sonuc.Text = lbl_sonuc.Text + "Beşbin"; break;
                case 4: lbl_sonuc.Text = lbl_sonuc.Text + "Dörtbin"; break;
                case 3: lbl_sonuc.Text = lbl_sonuc.Text + "Üçbin"; break;
                case 2: lbl_sonuc.Text = lbl_sonuc.Text + "İkibin"; break;
                case 1: lbl_sonuc.Text = lbl_sonuc.Text + "Bin"; break;

            }
            //Yüzler basamağı
            switch (sayi % 1000 / 100)
            {
                case 9: lbl_sonuc.Text = lbl_sonuc.Text + "Dokuzyüz"; break;
                case 8: lbl_sonuc.Text = lbl_sonuc.Text + "Sekizyüz"; break;
                case 7: lbl_sonuc.Text = lbl_sonuc.Text + "Yediyüz"; break;
                case 6: lbl_sonuc.Text = lbl_sonuc.Text + "Altıyüz"; break;
                case 5: lbl_sonuc.Text = lbl_sonuc.Text + "Beşyüz"; break;
                case 4: lbl_sonuc.Text = lbl_sonuc.Text + "Dörtyüz"; break;
                case 3: lbl_sonuc.Text = lbl_sonuc.Text + "Üçyüz"; break;
                case 2: lbl_sonuc.Text = lbl_sonuc.Text + "İkiyüz"; break;
                case 1: lbl_sonuc.Text = lbl_sonuc.Text + "Yüz"; break;
            }
        }
    }
}