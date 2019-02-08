using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace ParcialesFacite.admin
{
    public partial class asignarmaestros : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            nota.Visible = false;
        }

        /// <summary>
        /// Metodo para autocompletar los Maestros
        /// </summary>
        /// <param name="prefixText"></param>
        /// <returns></returns>
        [System.Web.Script.Services.ScriptMethod()]

        [System.Web.Services.WebMethod]

        public static List<string> GetMaestros(string prefixText)
        {
            DataTable dt = new DataTable();
            string constr = ConfigurationManager.ConnectionStrings["mycon"].ToString();
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Maestros where nombre_maestro like '%" + prefixText + "%'", con);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            adp.Fill(dt);

            List<string> MaestrosNombres = new List<string>();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                MaestrosNombres.Add("(" + dt.Rows[i][0].ToString() + ") " + dt.Rows[i][1].ToString());
            }
            return MaestrosNombres;
        }

        /// <summary>
        /// Metodo para Autocompletar las Materias
        /// </summary>
        /// <param name="prefixText"></param>
        /// <returns></returns>
        [System.Web.Script.Services.ScriptMethod()]

        [System.Web.Services.WebMethod]

        public static List<string> GetMaterias(string prefixText)
        {
            DataTable dt = new DataTable();
            string constr = ConfigurationManager.ConnectionStrings["mycon"].ToString();
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Materias where NombreMateria like '%" + prefixText + "%'", con);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            adp.Fill(dt);

            List<string> MateriasNombres = new List<string>();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                MateriasNombres.Add("(" + dt.Rows[i][0].ToString() + ") " + dt.Rows[i][2].ToString());
            }
            return MateriasNombres;
        }
    }
}