﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


    public partial class SuccessMsg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //ClientScript.RegisterStartupScript(GetType(), "Javascript", "successMsg(); ", true);
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }
    }
