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
    public partial class Recipes : System.Web.UI.Page
    {
        private OleDbConnection con;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnMore_Click(object sender, EventArgs e)
        {
            var button = sender as LinkButton;
            int id = Convert.ToInt32(button.CommandArgument);
            Response.Redirect($"RecipeDetails.aspx?p1={id}");
        }
    }
}