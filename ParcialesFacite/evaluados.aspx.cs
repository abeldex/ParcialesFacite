﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ParcialesFacite
{
    public partial class evaluados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
                Response.Redirect("ingresar.aspx");
            else
            {
                lbl_usuario.InnerText = Session["usuario"].ToString();

            }
        }
    }
}