using System;
using System.Configuration;
using System.Data.SqlClient;

namespace ParcialesFacite.admin
{
    public partial class grupos : System.Web.UI.Page
    {
        //accedemos a la conexion
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            nota.Visible = false;
            RepeaterGrupos.DataBind();
        }

        protected void btn_guardar_Click(object sender, EventArgs e)
        {
            try
            {
                string cohorte = txt_cohorte.Value;
                string carrera = txt_carrera.Value;
                string semestre = txt_semestre.Value;
                string grupo = txt_grupo.Value;
                string turno = txt_turno.Value;
                con.Open();
                string qry = "INSERT INTO Grupos VALUES('" + cohorte + "'," + carrera + "," + semestre + "," + grupo + ",'" + turno + "')";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader sdr = cmd.ExecuteReader();
                lbl_info.InnerText = "Grupo creado correctamente.!!";
                nota.Visible = true;
                RepeaterGrupos.DataBind();
                con.Close();
            }
            catch (Exception ex)
            {
                lbl_info.InnerText = ex.Message;
                nota.Visible = true;
            }
        }
        private void ResetForm()
        {
            txt_cohorte.Value = "";
            txt_carrera.SelectedIndex = -1;
            txt_semestre.SelectedIndex = -1;
            txt_grupo.SelectedIndex = -1;
            txt_turno.SelectedIndex = -1;
        }
    }
}