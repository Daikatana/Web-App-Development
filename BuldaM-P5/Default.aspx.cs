using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DefaultPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //this.Form.Target = "_blank";

    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/NewMember.aspx");
    }


    protected void SignIn(object sender, EventArgs e)
    {
        if (Application["CustomerList"] != null)
        {
            ArrayList myObjLst = (ArrayList)Application["CustomerList"];

            foreach (Customer currObj in myObjLst)
            {
                if ((currObj.EmailAddress.CompareTo(txtEmailDefaultPg.Text) == 0) & (currObj.PassWord.CompareTo(txtPwdDefaultPg.Text) == 0))
                {
                    Application["CustomerList"] = myObjLst;
                    Response.Redirect("~/Main.aspx");

                }
                else
                {
                    Application["CustomerList"] = myObjLst;
                    Response.Write(@"<script language='javascript'>alert('Login failed! Unable to locate email/password.');</script>");
                }
            }
        }
        else
        {
            Page.Response.Write(@"<script language='javascript'>alert('We have no members yet. Be the first!');</script>");
        }
    }

    protected void Ads_AdCreated(object sender, AdCreatedEventArgs e)
    {
        // Synchronize the Hyperlink control.
        //lnkBanner.NavigateUrl = e.NavigateUrl;

        //// Syncrhonize the text of the link.
        //lnkBanner.Text = "Click here for information about our sponsor: ";
        //lnkBanner.Text += e.AlternateText;

    }
}