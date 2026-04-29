using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ogrenci
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void ddl_liste_SelectedIndexChanged(object sender, EventArgs e)
        {
            img_ogrenciler.ImageUrl = "../images/" + ddl_liste.SelectedItem.Value;
        }
    }
}