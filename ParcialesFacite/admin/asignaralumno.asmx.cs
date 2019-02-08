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
    /// Descripción breve de asignaralumno
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    // [System.Web.Script.Services.ScriptService]
    public class asignaralumno : System.Web.Services.WebService
    {

        [WebMethod]
        public string Insert(string cuenta, string grupo)
        {
            string constr = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
            try
            {
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand("INSERT INTO Grupos_Alumnos VALUES ('" + grupo + "', '" + cuenta + "', 'NA')"))
                    {
                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
                return "Alumno asignado correctamente";
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
                    using (SqlCommand cmd = new SqlCommand("DELETE FROM Grupos_Alumnos WHERE id_grupo_alumno = " + id))
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
