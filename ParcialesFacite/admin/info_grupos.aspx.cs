﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ParcialesFacite.admin
{
    public partial class info_grupos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var parcial = Request.QueryString["parcial"].ToString();
             
        }
    }
}