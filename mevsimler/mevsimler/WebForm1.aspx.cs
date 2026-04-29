using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mevsimler
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack==false)
            {
                lst_mevsimler.Items.Add("İlkbahar");
                lst_mevsimler.Items.Add("Yaz");
                lst_mevsimler.Items.Add("Sonbahar");
                lst_mevsimler.Items.Add("Kış");
            }
        }

        protected void lst_mevsimler_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (lst_mevsimler.SelectedItem.Value=="İlkbahar")
            {
                lst_aylar.Items.Add("Mart");
                lst_aylar.Items.Add("Nisan");
                lst_aylar.Items.Add("Mayıs");
            }
        }
    }
}