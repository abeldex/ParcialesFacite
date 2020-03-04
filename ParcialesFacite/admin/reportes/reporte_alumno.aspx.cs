using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ParcialesFacite.admin.reportes
{
    public partial class reporte_alumno : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["alumno"] != null)
            {
                string qs_alumno = Request.QueryString["alumno"].ToString();
                DataTable dt = new DataTable();
                string constr = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                SqlConnection con = new SqlConnection(constr);
                con.Open();
                SqlCommand cmd = new SqlCommand("select NombreAlumno from Alumno where numCuenta = '" + qs_alumno + "'", con);
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(dt);

                lbl_alumno.InnerText = qs_alumno + " | " + dt.Rows[0][0].ToString();
            }
        }

        [System.Web.Script.Services.ScriptMethod()]

        [System.Web.Services.WebMethod]

        public static List<string> GetAlumnos(string prefixText)
        {
            DataTable dt = new DataTable();
            string constr = ConfigurationManager.ConnectionStrings["mycon"].ToString();
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Alumno where NombreAlumno like '%" + prefixText + "%'", con);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            adp.Fill(dt);

            List<string> AlumnosNombres = new List<string>();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                AlumnosNombres.Add("(" + dt.Rows[i][0].ToString() + ") " + dt.Rows[i][1].ToString());
            }
            return AlumnosNombres;
        }
    }
}