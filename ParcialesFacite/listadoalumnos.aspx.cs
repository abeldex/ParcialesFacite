using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ParcialesFacite
{
    public partial class listadoalumnos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
                Response.Redirect("ingresar.aspx");
            else
            {
                lbl_usuario.InnerText = Session["usuario"].ToString();
                lbl_usuario.InnerText = Session["usuario"].ToString();
                qsgrupo.InnerText = Request.QueryString["grupo"].ToString();
                qsmateria.InnerText = Request.QueryString["materia"].ToString();
                qsparcial.InnerText = Request.QueryString["parcial"].ToString();
                qsmaestro.InnerText = Session["usuario"].ToString();
            }
        }
    }
}