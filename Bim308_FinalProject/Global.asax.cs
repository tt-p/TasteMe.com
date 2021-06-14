using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Bim308_FinalProject.TasteMe.com.src.Global
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            Application["NumOnlineUsers"] = 0;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            int num = (int)Application["NumOnlineUsers"];
            num++;
            Application["NumOnlineUsers"] = num;
            Session["user_id"] = -1;
        }

        protected void Session_End(object sender, EventArgs e)
        {
            int num = (int)Application["NumOnlineUsers"];
            num--;
            Application["NumOnlineUsers"] = num;
        }
    }
}