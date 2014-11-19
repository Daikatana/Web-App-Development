using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


    public partial class PasswordRecover : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnRecoverPwd_Click(object sender, EventArgs e)
        {
            if (Application["CustomerLst"] != null)
            {
                //ArrayList myObjLst = Application["CustomerLst"] as ArrayList;
                ArrayList myObjLst = new ArrayList();
                myObjLst.Add(Application["CustomerLst"]);
                //ArrayList myObjLst = (ArrayList)Application["CustomerLst"];
                //Customer currObj = new Customer();
                foreach (Customer currObj in myObjLst)
                {
                    if (currObj.EmailAddress.CompareTo(txtEmailRecover.Text) != 0)
                    //if (currObj.EmailAddress == "hello@yahoo.com")
                    {
                        pwdConfirmMsg.Text = "The email address entered could not be found";
                        break;
                    }
                    else
                    {
                        String pwd = currObj.PassWord;
                        //Response.Write("<script language='javascript'>alert('Your password is ')</script>");
                        //Console.WriteLine("Your PasswordRecover is " + pwd);
                        // txtEmailRecover.Text = "This is your last chance!";
                        pwdConfirmMsg.Text = "Your password is " + pwd;
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

            
        }

        protected void ReturnToDefault_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }
    }
