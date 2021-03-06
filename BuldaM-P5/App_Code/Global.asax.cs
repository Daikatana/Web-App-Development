﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.UI;

namespace BuldaM_P5.App_Code
{
    public class Global : System.Web.HttpApplication
    {
        Transaction transaction = new Transaction();
        protected void Application_Start(object sender, EventArgs e)
        {
            //ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            //ArrayList CustomerLst = new ArrayList();
            //Customer customerObj = new Customer();
            Application["CustomerList"] = new ArrayList();
            Application["TransactionList"] = new ArrayList();
            
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session["CurrentTrans"] = transaction;
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {
            
        }
    }
}