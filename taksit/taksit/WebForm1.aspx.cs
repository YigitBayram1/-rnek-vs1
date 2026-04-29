using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace taksit
{
    
    public partial class WebForm1 : System.Web.UI.Page
    {
        int taksit = 0;
        int fiyat  = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void rdl_odemeSekli_SelectedIndexChanged(object sender, EventArgs e)
        {

            if (rdl_odemeSekli.SelectedIndex==0)
            {
                fiyat = Convert.ToInt32(txt_fiyat.Text);
                lbl_odemePlani.Text = Convert.ToString(fiyat * 0.9) + " TL";
            }
            else 
            {
                rdl_taksitSayisi.Visible = true;   
            }
        }
    }
}