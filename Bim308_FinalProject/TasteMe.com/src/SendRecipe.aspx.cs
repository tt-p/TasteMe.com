using Data;
using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bim308_FinalProject.TasteMe.com.src
{
    public partial class SendRecipe : System.Web.UI.Page
    {

        OleDbConnection con;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = DBcon.Singleton.GetCon();
        }

        protected void InsertButton_Click(object sender, EventArgs e)
        {
            string cmdStr = $"INSERT INTO [recipes] ([r_name], [r_desc], [r_ingreds], [r_instructs], [r_rate], [c_id], [u_id]) VALUES (?, ?, ?, ?, ?, ?, ?)";
            try
            {
                con.Open();
                OleDbCommand cmd = new OleDbCommand(cmdStr, con);
                cmd.Parameters.AddWithValue("@p1", r_nameTextBox.Text);
                cmd.Parameters.AddWithValue("@p2", r_descTextBox.Text);
                cmd.Parameters.AddWithValue("@p3", r_ingredsTextBox.Text);
                cmd.Parameters.AddWithValue("@p4", r_instructsTextBox.Text);
                cmd.Parameters.AddWithValue("@p5", int.Parse(r_rateDD.SelectedValue));
                cmd.Parameters.AddWithValue("@p6", int.Parse(r_CatDD.SelectedValue));
                cmd.Parameters.AddWithValue("@p7", (int)Session["User_id"]);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Response.Redirect($"DefaultError.aspx?message={ex.Message}");
            }
        }
    }
}