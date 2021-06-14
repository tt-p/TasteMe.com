using Microsoft.IdentityModel.Protocols;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.OleDb;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data
{
    public class DBcon
    {
        private static string conStr = ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString;

        private static DBcon singleton;
        private static OleDbConnection con;

        private DBcon() { }

        public static DBcon Singleton
        {
            get
            {
                if (singleton == null)
                    singleton = new DBcon();

                con = new OleDbConnection(conStr);

                return singleton;
            }
        }

        public OleDbConnection GetCon()
        {
            try
            {
                con.Open();
            }
            catch (Exception)
            {
            }
            finally
            {
                con.Close();
            }
            return con;
        } 
    }
}
