using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace ParcialesFacite
{
    /// <summary>
    /// Summary description for update_password
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class update_password : System.Web.Services.WebService
    {
        [WebMethod]
        public string actualizar(string password, string maestro)
        {
            string constr = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
            try
            {
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand("UPDATE Maestros SET password = '"+ password + "' WHERE id_maestro = " + maestro))
                    {
                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
                return "Contraseña actualizada correctamente";
            }
            catch (Exception err)
            {
                return err.Message;
            }
        }
    }
}
