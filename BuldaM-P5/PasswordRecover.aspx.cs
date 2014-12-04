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

                        //Code to send email to the user's email for password retrieval
                        String msgTo = currObj.EmailAddress;
                        String msgSubject = "Password Retrieval";
                        String msgBody = "Dear Valued Customer,<br />You are receiving this email because you have requested to recover your password.<br />" +
                                         "Your current password is: " + currObj.PassWord + "<br />Thank You<br />Houston Ticket Connection Team";

                        MailMessage mailObj = new MailMessage();
                        mailObj.Body = msgBody;
                        mailObj.From = new MailAddress("HoustonTicketConnection@gmail.com", "Houston Ticket Connection");
                        mailObj.To.Add(new MailAddress(msgTo));
                        mailObj.Subject = msgSubject;
                        mailObj.IsBodyHtml = true;
                        SmtpClient SMTPClient = new System.Net.Mail.SmtpClient();
                        SMTPClient.Host = "smtp.gmail.com";
                        SMTPClient.Port = 587;
                        SMTPClient.Credentials = new NetworkCredential("houstonticketconnection@gmail.com", "JustForKicks1");
                        SMTPClient.EnableSsl = true;
                        try { SMTPClient.Send(mailObj); }
                        catch (Exception ex) { Label1.Text = ex.ToString(); }

                        pwdConfirmMsg.Text = "Your password has been emailed to you. If you do not see the message in your inbox, check your junk mail.";
                        break;

                    }
                }
                
            }
            else
            {
                pwdConfirmMsg.Text = "There are no accounts stored in our database. Be the first!";
            }
        }

        protected void ReturnToDefault_Click(object sender, EventArgs e)
        {     
                Response.Redirect("~/Default.aspx");
        }
    }
