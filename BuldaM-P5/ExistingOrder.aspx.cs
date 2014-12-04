using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ExistingOrder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //if (Session["transaction"] != null)
        //{
        //    Transaction thisTransaction = (Transaction)Session["transaction"];
        //    thisTransaction.TicketNumber = txtEnterTickNum.Text;
        //    Session["transaction"] = thisTransaction;
        //}
        Response.Redirect("~/TicketRetrieval.aspx");
    }
}
