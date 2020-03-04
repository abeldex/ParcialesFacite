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
    public partial class reporte_materia : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["materia"] != null)
            {
                string qs_mat = Request.QueryString["materia"].ToString();
                DataTable dt = new DataTable();
                string constr = ConfigurationManager.ConnectionStrings["mycon"].ToString();
                SqlConnection con = new SqlConnection(constr);
                con.Open();
                SqlCommand cmd = new SqlCommand("select NombreMateria from Materias where idMateria = " + qs_mat + "", con);
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(dt);

                lbl_alumno.InnerText = qs_mat + " | " + dt.Rows[0][0].ToString();
            }
        }



        [System.Web.Script.Services.ScriptMethod()]

        [System.Web.Services.WebMethod]

        public static List<string> GetMaterias(string prefixText)
        {
            DataTable dt = new DataTable();
            string constr = ConfigurationManager.ConnectionStrings["mycon"].ToString();
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Materias where NombreMateria like  '%" + prefixText + "%'", con);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            adp.Fill(dt);

            List<string> MateriasNombres = new List<string>();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                MateriasNombres.Add("(" + dt.Rows[i][0].ToString() + ") " + dt.Rows[i][2].ToString());
            }
            return MateriasNombres;
        }

        protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            /*DataTable dt = new DataTable();
            string constr = ConfigurationManager.ConnectionStrings["mycon"].ToString();
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Materias where NombreMateria like  '%" + prefixText + "%'", con);

            DataRowView drv = (DataRowView)e.Item.DataItem;
            string parent = drv["parent"].ToString();

            dt.DefaultView.RowFilter = string.Format("[parent]='{0}'", parent);
            DataTable dtChild = dt.DefaultView.ToTable(true, "child");

            Repeater repeaterChild = (Repeater)e.Item.FindControl("repeaterChild");
            repeaterChild.DataSource = dtChild;
            repeaterChild.DataBind();
            */
        }
    }
}