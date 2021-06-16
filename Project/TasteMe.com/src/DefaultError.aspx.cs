using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bim308_FinalProject.TasteMe.com.src
{
    public partial class DefaultError : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String str = Request.QueryString["message"];
            errorMessage.Text = str;
        }
    }
}