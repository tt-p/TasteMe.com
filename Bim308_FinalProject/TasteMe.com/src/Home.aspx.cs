using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Data;

namespace Bim308_FinalProject.TasteMe.com.src
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        private OleDbConnection con;

        protected void Page_Load(object sender, EventArgs e)
        {
            int id = (int)Session["user_id"];
            if (id != -1)
            {
                divLogin.Visible = false;
                lblWelcome.Visible = true;
            }
            else
            {
                divLogin.Visible = true;
            }
            con = DBcon.Singleton.GetCon();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string mail = txtMail.Text;
            string pass = txtPass.Text;
            string res = "-1";

            string cmdStr = "Select [u_id] from [users] where [u_mail]=? and [u_pass]=?";
            try
            {
                con.Open();
                OleDbCommand cmd = new OleDbCommand(cmdStr, con);
                cmd.Parameters.AddWithValue("@p1", mail);
                cmd.Parameters.AddWithValue("@p2", pass);
                using (OleDbDataReader reader = cmd.ExecuteReader())
                {
                    reader.Read();
                    res = reader["u_id"].ToString();
                }
            }
            catch (InvalidOperationException ex)
            {

            }
            catch (Exception ex)
            {
                Response.Redirect($"DefaultError.aspx?message={ex.Message}");
            }

            int id = int.Parse(res);
            if (id != -1)
            {
                Session["user_id"] = id;
                if (id == 1)
                {
                    Response.Redirect("Admin.aspx");
                }
                else
                {
                    
                    Response.Redirect(Request.RawUrl);
                }

            }
            else
            {
                custom_val.IsValid = false;
            }
        }
    }
}