using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


    public partial class PasswordRecover : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ReqFldVal_EmailRecover.Enabled = true;
            ReqFldVal_EmailRecoverReenter.Enabled = true;
        }
        protected void btnRecoverPwd_Click(object sender, EventArgs e)
        {

            if (Application["CustomerList"] != null)
            {
                ArrayList myObjLst = (ArrayList)Application["CustomerList"];
                //ArrayList myObjLst = new ArrayList();
                //    Customer currCustomer = new Customer();
                //   currCustomer = (Customer)Application["SingleCustomer"];
                //myObjLst.Add(currCustomer);
                //Application["CustomerList"] = myObjLst;
                //ArrayList myObjLst = Application["CustomerLst"] as ArrayList;
                //ArrayList myObjLst = new ArrayList();
                //myObjLst.Add(Application["CustomerLst"]);
                
                foreach (Customer currObj in myObjLst)
                {

                    //assignment 5's way of handling email
                    if (currObj.EmailAddress.CompareTo(txtEmailRecover.Text) != 0)
                    //if (currObj.EmailAddress == "hello@yahoo.com")
                    {
                        pwdConfirmMsg.Text = "The email address entered could not be found";
                    }
                    else
                    {
                        String pwd = currObj.PassWord;
                        //Response.Write("<script language='javascript'>alert('Your password is ')</script>");
                        //Console.WriteLine("Your PasswordRecover is " + pwd);
                        // txtEmailRecover.Text = "This is your last chance!";
                        pwdConfirmMsg.Text = "Your password is " + pwd;
                        break;
                    }
                }
                
            }
            else
            {
                pwdConfirmMsg.Text = "There are no accounts stored in our database. Be the first!";
            }
            


            //Code to send email to the user's email for password retrieval

//String msgTo = "Receiver's email";
//String msgSubject = "Message Subject";
//String msgBody = "Message Body";
//MailMessage mailObj = new MailMessage();
//mailObj.Body = msgBody;
//mailObj.From = new MailAddress("Sender's Email", "Name to displayed for sender ex. Outdoor Equipment Team");
//mailObj.To.Add(new MailAddress(msgTo));
//mailObj.Subject = msgSubject;
//mailObj.IsBodyHtml = true;
//SmtpClient SMTPClient = new System.Net.Mail.SmtpClient();
//SMTPClient.Host = "smtp.gmail.com";
//SMTPClient.Port=587;
//SMTPClient.Credentials = new NetworkCredential("Sender's Email", "Sender's Email Password");
//SMTPClient.EnableSsl = true;
//try{ SMTPClient.Send(mailObj); }
//catch (Exception) { Label1.Text = ex.ToString(); }

            
        }

        protected void ReturnToDefault_Click(object sender, EventArgs e)
        {     
                Response.Redirect("~/Default.aspx");
        }
    }
