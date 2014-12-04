
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NewMember : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ReqFldVal_Addr.Enabled = false;
        ReqFldVal_City.Enabled = false;
        ReqFldVal_FName.Enabled = false;
        ReqFldVal_Pwd.Enabled = false;
        ReqFldVal_Zip.Enabled = false;
        ReqFldVal_ReenterPwd.Enabled = false;
        ReqFldVal_LName.Enabled = false;
    }

    ArrayList CustomerAry;

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        

        Customer customer = new Customer();
        customer.FirstName = txtFName.Text;
        customer.LastName = txtLName.Text;
        customer.EmailAddress = txtEmail.Text;
        customer.PassWord = txtPwd.Text;
        customer.Phone = txtPhone.Text;
        customer.StreetAddress = txtAddr.Text;
        customer.City = txtCity.Text;
        customer.Zip = txtZip.Text;
        customer.State = lstState.Text;  

        if (Application["CustomerList"] != null)
        {
            CustomerAry = (ArrayList)Application["CustomerList"];
            CustomerAry.Add(customer);
            Application["CustomerList"] = CustomerAry;
        }
        else
        {
            CustomerAry = new ArrayList();
            CustomerAry.Add(customer);
            Application["CustomerList"] = CustomerAry;
        }

        /*Attempted to make a connection to DCM SQL server, but failed*/
        //SqlConnection connectionToServer = new SqlConnection("name=UHCLDatabase; connectionString=User id=c432014fa05buldam;password=1242139; Data Source = dcm.uhcl.edu; Initial Catalog=c432014fa05buldam;providerName=System.Data.SqlClient;connection = timeout=30");
        //string theStatement = "INSERT INTO Customers " + "(" + null + "," + transObj.TicketNumber + "," + transObj.NumberOfTickets + "," +
        //    customer.TicketHolderName + "," + transObj.ShippingAddress + "," + transObj.EventName + "," + transObj.PayMethod + "," +
        //    transObj.AccountNumber + ")";
        //SqlCommand sqlCommand = new SqlCommand(theStatement, connectionToServer); try { connectionToServer.Open(); sqlCommand.ExecuteNonQuery(); }
        //finally { connectionToServer.Close(); }

        
        //if (Application["CustomerLst"] != null)
        //{
            Application["CustomerLst"] = CustomerAry;
        //}

        //Response.Write("<script language='javascript'>alert('Your password is ')</script>");
        Response.Redirect("~/Default.aspx");



       // CustomerLst.Add(CustomerAry);

    }
  
    protected void btnFindMatch_Click(object sender, EventArgs e)
    {
        if (Application["CustomerList"] != null)
        {
            ArrayList myObjLst = (ArrayList)Application["CustomerList"];

            foreach (Customer currObj in myObjLst)
            {
                if (currObj.EmailAddress.CompareTo(txtEmail.Text) == 0)
                {
                    Application["CustomerList"] = myObjLst;
                    Page.Response.Write(@"<script language='javascript'>alert('Entered email already exists.\nPlease use \'Forgot Password\' option.');</script>");
                    break;
                }
                else
                {
                    Application["CustomerList"] = myObjLst;
                    Page.Response.Write(@"<script language='javascript'>alert('The email address entered is available for use. Fill in your personal information.');</script>");
                    txtFName.Enabled = true;
                    txtLName.Enabled = true;
                    txtAddr.Enabled = true;
                    txtPhone.Enabled = true;
                    txtPwd.Enabled = true;
                    txtZip.Enabled = true;
                    txtReenterPwd.Enabled = true;
                    txtCity.Enabled = true;
                    lstState.Enabled = true;

                    ReqFldVal_Addr.Enabled = true;
                    ReqFldVal_City.Enabled = true;
                    ReqFldVal_FName.Enabled = true;
                    ReqFldVal_Pwd.Enabled = true;
                    ReqFldVal_Zip.Enabled = true;
                    ReqFldVal_ReenterPwd.Enabled = true;
                    ReqFldVal_LName.Enabled = true;

                    btnSubmit.Enabled = true;
                }
            }

        }
        else
        {
            Page.Response.Write(@"<script language='javascript'>alert('The email address entered is available for use. \nFill in your personal information.');</script>");
            
            //enable the grayed out controls and their validators
            txtFName.Enabled = true;
            txtLName.Enabled = true;
            txtAddr.Enabled = true;
            txtPhone.Enabled = true;
            txtPwd.Enabled = true;
            txtZip.Enabled = true;
            txtReenterPwd.Enabled = true;
            txtCity.Enabled = true;
            lstState.Enabled = true;

            ReqFldVal_Addr.Enabled = true;
            ReqFldVal_City.Enabled = true;
            ReqFldVal_FName.Enabled = true;
            ReqFldVal_Pwd.Enabled = true;
            ReqFldVal_Zip.Enabled = true;
            ReqFldVal_ReenterPwd.Enabled = true;
            ReqFldVal_LName.Enabled = true;

            btnSubmit.Enabled = true;
        }
    }
}
