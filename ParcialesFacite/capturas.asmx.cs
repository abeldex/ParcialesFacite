﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace ParcialesFacite
{
    /// <summary>
    /// Descripción breve de capturas
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    // [System.Web.Script.Services.ScriptService]
    public class capturas : System.Web.Services.WebService
    {
        //Metodo para capturar una calificacion con el webservice
        [WebMethod]
        public string Insert(string grupo_alumno, string materia, string calificacion, string observaciones, string maestro, string asistencia, string parcial)
        {
            string constr = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
            try
            {
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand("INSERT INTO Evaluaciones_Parciales VALUES (" + grupo_alumno + ", " + materia + ", "+ calificacion + ",'"+ observaciones + "',"+ maestro + ","+asistencia+",'capturado', "+parcial+")"))
                    {
                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
                return "Valoracion guardada correctamente";
            }
            catch (Exception err)
            {
                return err.Message;
            }
        }

        [WebMethod]
        public string Ignorar(string grupo_alumno, string materia, string maestro, string parcial)
        {
            string constr = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
            try
            {
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand("INSERT INTO Evaluaciones_Parciales VALUES (" + grupo_alumno + ", " + materia + ", 0,'Ignorado de la evaluacion'," + maestro + ",0,'ignorado', "+parcial+")"))
                    {
                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
                return "Alumno ignorado correctamente";
            }
            catch (Exception err)
            {
                return err.Message;
            }
        }

        [WebMethod]
        public string Actualizar(string id_ep, string calificacion, string observaciones, string asistencia)
        {
            string constr = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
            try
            {
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand("UPDATE Evaluaciones_Parciales SET calificacion = " + calificacion + ", observaciones = '" + observaciones + "', asistencia = " + asistencia + ", estado = 'capturado' WHERE id_ep = " + id_ep))
                    {
                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
                return "Valoracion actualizada correctamente";
            }
            catch (Exception err)
            {
                return err.Message;
            }
        }

        [WebMethod]
        public string ActualizarIgnorar(string id_ep)
        {
            string constr = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
            try
            {
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand("UPDATE Evaluaciones_Parciales SET estado = 'ignorado', observaciones = 'Ignorado de la evaluacion' WHERE id_ep = " + id_ep))
                    {
                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
                return "El alumno fue ignorado correctamente";
            }
            catch (Exception err)
            {
                return err.Message;
            }
        }

    }
}
