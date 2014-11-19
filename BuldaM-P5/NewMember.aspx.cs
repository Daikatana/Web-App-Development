
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
        //if (!Page.IsPostBack)
        //{
        //    Session["customerAry"] = CustomerAry;

        //}


    }
    ArrayList CustomerAry = new ArrayList();

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        //if (!this.IsPostBack)
        //{
        //    // Create Furniture objects.

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


        //CustomerAry.Add(customer);
        //if (Application["CustomerLst"] != null)
        //{
            Application["CustomerLst"] = customer;
        //}

            Response.Write("<script language='javascript'>alert('Your password is ')</script>");
        Response.Redirect("~/Default.aspx");



       // CustomerLst.Add(CustomerAry);


        //    //Furniture piece1 = new Furniture("Econo Sofa",
        //    //                            "Acme Inc.", 74.99M);
        //    //Furniture piece2 = new Furniture("Pioneer Table",
        //    //                            "Heritage Unit", 866.75M);
        //    //Furniture piece3 = new Furniture("Retro Cabinet",
        //    //                            "Sixties Ltd.", 300.11M);

        //    //// Add objects to session state.
        //    //Session["Furniture1"] = piece1;
        //    //Session["Furniture2"] = piece2;
        //    //Session["Furniture3"] = piece3;

        //    //// Add rows to list control.			
        //    //lstItems.Items.Add(piece1.Name);
        //    //lstItems.Items.Add(piece2.Name);
        //    //lstItems.Items.Add(piece3.Name);
        //}
    }
}
