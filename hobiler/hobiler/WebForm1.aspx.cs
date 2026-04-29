using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hobiler
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void chk_hobiler_SelectedIndexChanged(object sender, EventArgs e)
        {
            lbl_hobiler.Text = "";
            for (int i = 0; i < chk_hobiler.Items.Count; i++)
            {
                if (chk_hobiler.Items[i].Selected==true)
                {
                    lbl_hobiler.Text = lbl_hobiler.Text + chk_hobiler.Items[i].Value + " ";
                }
                
            }
        }
    }
}