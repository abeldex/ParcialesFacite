using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace ParcialesFacite.admin
{
    /// <summary>
    /// Descripción breve de maestros
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    // [System.Web.Script.Services.ScriptService]
    public class maestros : System.Web.Services.WebService
    {

        [WebMethod]
        public string Insert(string maestro, string grupo, string materia)
        {
            string constr = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
            try
            {
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand("INSERT INTO Maestros_Grupos VALUES (" + maestro + ", " + grupo + ", '1'," + materia + ")"))
                    {
                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
                return "Maestro asignado correctamente";
            }
            catch (Exception err)
            {
                return err.Message;
            }
        }

        [WebMethod]
        public string Delete(string id)
        {
            string constr = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
            try
            {
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand("DELETE FROM Maestros_Grupos WHERE id_maestro_grupo = " + id))
                    {
                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
                return "Alumno eliminado correctamente";
            }
            catch (Exception err)
            {
                return err.Message;
            }
        }
    }
}
