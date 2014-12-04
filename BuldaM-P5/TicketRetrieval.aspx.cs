using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TicketRetrieval : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Application["TransactionList"] != null)
        {
            ArrayList myObjLst = (ArrayList)Application["TransactionList"];
            String someTransTickNum = (String)Session["transaction"];
            //ArrayList myObjLst = new ArrayList();
            //    Customer currCustomer = new Customer();
            //   currCustomer = (Customer)Application["SingleCustomer"];
            //myObjLst.Add(currCustomer);
            //Application["CustomerList"] = myObjLst;
            //ArrayList myObjLst = Application["CustomerLst"] as ArrayList;
            //ArrayList myObjLst = new ArrayList();
            //myObjLst.Add(Application["CustomerLst"]);

            foreach (Transaction currObj in myObjLst)
            {

                //assignment 5's way of handling email
                if (currObj.TicketNumber.CompareTo(someTransTickNum) != 0)
                //if (currObj.EmailAddress == "hello@yahoo.com")
                {
                    lblViewExistingTickNum.Text = "The ticket number could not be found.";
                }
                else
                {
                    txtViewAcctNum.Text = currObj.AccountNumber;
                    txtViewAddr.Text = currObj.ShippingAddress;
                    txtViewEvent.Text = currObj.EventName;
                    txtViewName.Text = currObj.TicketHolderName;
                    txtViewPayMethod.Text = currObj.PayMethod;
                    txtViewTickNum.Text = currObj.TicketNumber;
                    break;
                }
            }
        }
    }
}
    
        
