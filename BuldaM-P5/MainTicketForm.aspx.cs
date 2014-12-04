using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Main : System.Web.UI.Page
{
    ArrayList myTransObj = new ArrayList();

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void completeBtnEvent(object sender, EventArgs e)
    {
        Transaction transObj = new Transaction();
        transObj.TicketHolderName = ticketHolderName.Text;
        transObj.ShippingAddress = ticketAddress.Text;
        transObj.AccountNumber = acctNum.Text;
        transObj.EventName = allEvents.Text;
        transObj.PayMethod = rdoLstPayMethod.SelectedValue;
        transObj.NumberOfTickets = numOfTix.SelectedValue;
        transObj.TicketNumber = tickNum.Text;
        //transObj.EmailAddress = txtEmail.Text;
        myTransObj.Add(transObj);


        Session["transaction"] = transObj.TicketNumber;
        Application["TransactionList"] = myTransObj;



        /*CREATE TABLE [dbo].[BuldaM_WADfl14_Transactions] (
    [emailAddress]     VARCHAR (50) NOT NULL,
    [ticketNumber]     NUMERIC (6)  NOT NULL,
    [numberOfTickets]  TEXT         NOT NULL,
    [ticketHolderName] TEXT         NOT NULL,
    [shippingAddress]  TEXT         NOT NULL,
    [eventName]        TEXT         NOT NULL,
    [paymentMethod]    TEXT         NOT NULL,
    [accountNumber]    TEXT         NOT NULL,
    PRIMARY KEY CLUSTERED ([emailAddress] ASC)*/


        /*Attempted to make a connection to DCM SQL server, but failed*/
        //SqlConnection connectionToServer = new SqlConnection("name=UHCLDatabase; connectionString=User id=c432014fa05buldam;password=1242139; Data Source = dcm.uhcl.edu; Initial Catalog=c432014fa05buldam;providerName=System.Data.SqlClient;connection = timeout=30");
        string theStatement = "INSERT INTO Transactions " + "(" + null +"," + transObj.TicketNumber + "," + transObj.NumberOfTickets + "," +
            transObj.TicketHolderName + "," + transObj.ShippingAddress + "," + transObj.EventName + "," + transObj.PayMethod + "," +
            transObj.AccountNumber + ")";
        //SqlCommand sqlCommand = new SqlCommand(theStatement, connectionToServer); try { connectionToServer.Open(); sqlCommand.ExecuteNonQuery(); }
        //finally { connectionToServer.Close(); }

        Response.Redirect("~/SuccessMsg.aspx");

        //if ticket owner empty and address empty and account num empty
        //if ((transObj.TicketHolderName == "") & (transObj.ShippingAddress == "") & (transObj.AccountNumber == ""))
        //{
        //    Page.Response.Write(@"<script language='javascript'>alert('All fields must be filled out to complete transaction');</script>");
        //}
        //if ticket owner not empty and address empty and acct num not empty
        //else if ((ticketHolderName.Text != "") & (ticketAddress.Text == "") & (acctNum.Text != ""))
        //{
        //    Page.Response.Write(@"<script language='javascript'>alert('Enter an address');</script>");
        //}
        //else if ((ticketHolderName.Text != "") & (ticketAddress.Text == "") & (acctNum.Text == ""))
        //{
        //    Page.Response.Write(@"<script language='javascript'>alert('Enter an address and an account number');</script>");
        //}
        //else if ((ticketHolderName.Text == "") & (ticketAddress.Text != "") & (acctNum.Text == ""))
        //{
        //    Page.Response.Write(@"<script language='javascript'>alert('Enter a ticket owner name and an account number');</script>");
        //}
        ////if ticket owner empty and address empty and acct num not empty
        //else if ((ticketHolderName.Text == "") & (ticketAddress.Text == "") & (acctNum.Text != ""))
        //{
        //    Page.Response.Write(@"<script language='javascript'>alert('Enter a ticket owner name and an address');</script>");
        //}
        ////if account num is empty and ticket owner not empty and address not empty
        //else if ((acctNum.Text == "") & (ticketHolderName.Text != "") & (ticketAddress.Text != ""))
        //{
        //    Page.Response.Write(@"<script language='javascript'>alert('Enter an account number');</script>");
        //}
        //else if ((ticketHolderName.Text == "") & (ticketAddress.Text != "") & (acctNum.Text != ""))
        //{
        //    Page.Response.Write(@"<script language='javascript'>alert('Enter a ticket owner name');</script>");
        //}
        //else
        //{
        //    Transaction transObj2 = new Transaction();
        //    transObj2.TicketHolderName = ticketHolderName.Text;
        //    transObj2.ShippingAddress = ticketAddress.Text;
        //    transObj2.AccountNumber = acctNum.Text;
        //    myTransObj.Add(transObj2);
        //    Application["TransactionList"] = myTransObj;
        //    //transObj.PayMethod = payType.Text;
        //    //transObj.NumberOfTickets = numOfTix;
        //    //transObj.TicketNumber = ti;


        //    //Application["TransactionList"] = 
        //    Response.Redirect("~/SuccessMsg.aspx");
        //}

        
    }

    protected void btnExistingOrder_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ExistingOrder.aspx");
    }


}
