using System;
using System.Collections;
using System.Collections.Generic;
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
        //transObj.PayMethod = 
        myTransObj.Add(transObj);

        Application["TransactionList"] = myTransObj;
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


}
