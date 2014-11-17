using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    
    protected void btnRecoverPwd_Click(object sender, EventArgs e)
    {
        if (Application["CustomerLst"] != null)
        {
            ArrayList myObjLst = Application["CustomerLst"] as ArrayList;
            //Customer currObj = new Customer();
            foreach (Customer currObj in myObjLst)
            {
                if (currObj.EmailAddress == "hello@yahoo.com")
                {
                    String pwd = currObj.PassWord;
                    Response.Write("<script language='javascript'>alert('Your password is ')</script>");
                    //pwdConfirmMsg.Text = "Your password is " + pwd;
                }
            }

            //int lstLength = myObjLst.Count - 1;
            //for (int count = 0; count < lstLength; count++)
            //{
            //    if (myObjLst.Email.CompareTo("hello@yahoo.com"))
            //    {
            //    }
            //}

            //String email = myObj.EmailAddress;
            //foreach (object key in Application.AllKeys)
            //{
            //    myObj = Application[key];
            //}
        }

        Response.Redirect("~/Default.aspx");
    }
}