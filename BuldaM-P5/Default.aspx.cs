using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //this.Form.Target = "_blank";
    }
    
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/NewMember.aspx");
    }

    protected void btnSignIn_Click(object sender, EventArgs e)
    {
        if (Application["CustomerList"] != null)
        {
            ArrayList myObjLst = (ArrayList)Application["CustomerList"];

            foreach (Customer currObj in myObjLst)
            {
                if ((currObj.EmailAddress.CompareTo(txtEmailDefaultPg.Text) == 0) & (currObj.EmailAddress.CompareTo(txtPwdDefaultPg.Text) == 0))
                {
                    Response.Redirect("~/Main.aspx");
                }
            }
            Page.Response.Write(@"<script language='javascript'>alert('Login failed! Unable to locate email/password.');</script>");
        }
        else
        {
            Page.Response.Write(@"<script language='javascript'>alert('We have no members yet. Be the first!');</script>");
        }
    }

    //protected void btnSignIn_Click(object sender, EventArgs e)
    //{
    //    if (Application["CustomerList"] != null)
    //    {
    //        ArrayList myObjLst = (ArrayList)Application["CustomerList"];

    //        foreach (Customer currObj in myObjLst)
    //        {
    //            if ((currObj.EmailAddress.CompareTo(txtEmailDefaultPg.Text) == 0) & (currObj.EmailAddress.CompareTo(txtPwdDefaultPg.Text) == 0))
    //            //if (currObj.EmailAddress == "hello@yahoo.com")
    //            {
    //                Response.Redirect("~/Main.aspx");                 
    //            }
    //        }
    //        Page.Response.Write(@"<script language='javascript'>alert('Login failed! Unable to locate email/password.');</script>");
    //    }
    //    else
    //    {
    //        Page.Response.Write(@"<script language='javascript'>alert('We have no members yet. Be the first!');</script>");
    //    }
    //}
}