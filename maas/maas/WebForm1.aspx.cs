using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace maas
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void rdl_mesaiVarmi_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (rdl_mesaiVarmi.SelectedIndex == 0)
            {
                lbl_sonuc.Visible = true;
                txt_mesai.Visible = true;
            }
            else 
            {
                
                txt_mesai.Visible = false;
            }
        }

        protected void btn_hesapla_Click(object sender, EventArgs e)
        {
            int maas, mesai, toplam;
            toplam = 0;
            maas = Convert.ToInt32(txt_maas.Text);
            if (rdl_mesaiVarmi.SelectedIndex==0)
            { 
                mesai=Convert.ToInt32(txt_mesai.Text);
                toplam = maas + mesai;
            }
            else 
            {
                toplam = maas;
            }
            lbl_sonuc.Text = toplam.ToString();
        }
    }
}