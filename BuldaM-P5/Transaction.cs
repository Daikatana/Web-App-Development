using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class Transaction
{
    String emailAddress; //Primary Key
    String ticketNumber; //Order Locator number
    String numberOfTickets;
    String ticketHolderName;
    String shippingAddress;
    String eventName;
    String payMethod;
    String accountNumber;
    //Add properties as needed

    public Transaction()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public String NumberOfTickets
    {
        get { return numberOfTickets; }
        set { numberOfTickets = value; }
    }

    //Add the properties. Example shown below.
    public String EmailAddress
    {
        get { return emailAddress; }
        set { emailAddress = value; }
    }
    public String TicketNumber
    {
        get { return ticketNumber; }
        set { ticketNumber = value; }
    }
    public String TicketHolderName
    {
        get { return ticketHolderName; }
        set { ticketHolderName = value; }
    }

    public String ShippingAddress
    {
        get { return shippingAddress; }
        set { shippingAddress = value; }
    }
    public String EventName
    {
        get { return eventName; }
        set { eventName = value; }
    }
    public String PayMethod
    {
        get { return payMethod; }
        set { payMethod = value; }
    }

    public String AccountNumber
    {
        get { return accountNumber; }
        set { accountNumber = value; }
    }

}
