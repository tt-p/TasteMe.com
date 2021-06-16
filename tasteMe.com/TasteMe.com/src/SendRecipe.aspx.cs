using Data;
using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.IO;
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
            string imgPath = $"~/TasteMe.com/res/img-recipe/empty.jpg";

            if (upImage.HasFile)
            {
                string imgFile = Path.GetFileName(upImage.PostedFile.FileName);
                imgPath = $"~/TasteMe.com/res/img-recipe/{imgFile}";
                upImage.SaveAs(Server.MapPath(imgPath));
            }

            string cmdStr = $"INSERT INTO [recipes] ([r_name], [r_desc], [r_ingreds], [r_instructs], [r_prep], [r_img], [c_id], [u_id]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            try
            {

                con.Open();
                OleDbCommand cmd = new OleDbCommand(cmdStr, con);
                cmd.Parameters.AddWithValue("@p1", r_nameTextBox.Text);
                cmd.Parameters.AddWithValue("@p2", r_descTextBox.Text);
                cmd.Parameters.AddWithValue("@p3", r_ingredsTextBox.Text);
                cmd.Parameters.AddWithValue("@p4", r_instructsTextBox.Text);
                cmd.Parameters.AddWithValue("@p5", int.Parse(r_prepTextBox.Text));
                cmd.Parameters.AddWithValue("@p6", imgPath);
                cmd.Parameters.AddWithValue("@p7", int.Parse(r_CatDD.SelectedValue));
                cmd.Parameters.AddWithValue("@p8", (int)Session["user_id"]);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Response.Redirect($"DefaultError.aspx?message={ex.Message}");
            }

            Response.Redirect($"Success.aspx?message=Congratulations! Your recipe has been published.");
        }
    }
}