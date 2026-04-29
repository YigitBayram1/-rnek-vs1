using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    






   

    }

    protected void btn_Kontrol_Click(object sender, EventArgs e)
    {
        int yas = Convert.ToInt32(txt_Yas.Text);
        if (rdn_Cinsiyet.SelectedIndex == 1)
        {
            lbl_Sonuc.Text = "Bayanlar askere gidemez";

        }
        else
        {
            if ((rdn_Cinsiyet.SelectedIndex==0) && (yas>19) && (yas<40))
            {
                lbl_Sonuc.Text = "Erkek askere gidebilir";
            }
            else
            {
                lbl_Sonuc.Text = "Erkek askere gidemez";
            }
        }

    }
}




