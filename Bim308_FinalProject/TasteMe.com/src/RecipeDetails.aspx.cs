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
    public partial class RandomRecipe : System.Web.UI.Page
    {
        private OleDbConnection con;
        private string cmdStr = "SELECT categories.c_name, recipes.r_name, recipes.r_ingreds, recipes.r_instructs, recipes.r_date, recipes.r_rate, users.u_name, users.u_surname FROM((categories INNER JOIN recipes ON categories.c_id = recipes.c_id) INNER JOIN users ON recipes.u_id = users.u_id) Where r_id = ?";

        private string cmdStr2 = "SELECT top 1 categories.c_name, recipes.r_name, recipes.r_ingreds, recipes.r_instructs, recipes.r_date, recipes.r_rate, users.u_name, users.u_surname FROM((categories INNER JOIN recipes ON categories.c_id = recipes.c_id) INNER JOIN users ON recipes.u_id = users.u_id) ORDER BY rnd(r_id)";
        protected void Page_Load(object sender, EventArgs e)
        {
            String str = Request.QueryString["p1"];
            if (String.IsNullOrEmpty(str))
            {
                showRndRecipe();
            }
            else
            {
                showRecipeFromId(int.Parse(str));
            }
            
        }

        private void showRecipeFromId(int id)
        {
            con = DBcon.Singleton.GetCon();
            con.Open();
            OleDbCommand cmd = new OleDbCommand(cmdStr, con);
            cmd.Parameters.AddWithValue("@p1", id);
            OleDbDataReader reader = cmd.ExecuteReader();
            dlRnd.DataSource = reader;
            dlRnd.DataBind();
            con.Close();
        }

        private void showRndRecipe()
        {
            con = DBcon.Singleton.GetCon();
            con.Open();
            OleDbCommand oleDbCommand = new OleDbCommand(cmdStr2, con);
            OleDbDataReader reader = oleDbCommand.ExecuteReader();
            dlRnd.DataSource = reader;
            dlRnd.DataBind();
            con.Close();
        }
    }
}