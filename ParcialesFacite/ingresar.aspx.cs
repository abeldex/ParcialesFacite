using System;
using System.Data.SqlClient; //this namespace is for sqlclient server  
using System.Configuration; // this namespace is add I am adding connection name in web config file config connection name

namespace ParcialesFacite
{
    public partial class ingresar : System.Web.UI.Page
    {
        //accedemos a la conexion
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
            info.Visible = false;
        }

        protected void btn_ingresar_Click(object sender, EventArgs e)
        {
            try
            {
                string uid = txt_num_empleado.Value;
                string pass = txt_password.Value;
                con.Open();
                string qry = "select * from Maestros where id_maestro='" + uid + "' and password='" + pass + "'";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    respuesta.InnerText = "Login Sucess......!!";
                    Session["usuario"] = txt_num_empleado.Value;
                    Response.Redirect("/");
                }
                else
                {
                    info.Visible = true;
                    respuesta.InnerText = "Usuario o contraseña incorrectos... Intente de nuevo..!!";
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}