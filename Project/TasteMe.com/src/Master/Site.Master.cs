using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bim308_FinalProject.TasteMe.com.src
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = (int)Session["user_id"];
            if (id != -1) 
            {
                liRegister.Visible = false;
            }
            else
            {
                liSend.Visible = false;
                liProfile.Visible = false;
            }
            lblUsers.Text = $"Active Users : {Application["NumOnlineUsers"]}";
        }
    }
}