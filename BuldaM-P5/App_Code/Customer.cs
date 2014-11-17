using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Customer
/// </summary>
/// 
class Customer
{
    String emailAddress;
    String password;
    String firstName;
    String lastName;
    String streetAddress;
    String city;
    String state;
    String zip;
    String phone;

    public Customer()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    //Add the properties. Example shown below.
    public String EmailAddress
    {
        get { return emailAddress; }
        set { emailAddress = value; }
    }
    public string PassWord
    {
        get { return password; }
        set { password = value; }
    }
    public string FirstName
    {
        get { return firstName; }
        set { firstName = value; }
    }
    public string LastName
    {
        get { return lastName; }
        set { lastName = value; }
    }
    public string StreetAddress
    {
        get { return streetAddress; }
        set { streetAddress = value; }
    }
    public string Phone
    {
        get { return phone; }
        set { phone = value; }
    }
    public string City
    {
        get { return city; }
        set { city = value; }
    }

    public string Zip
    {
        get { return zip; }
        set { zip = value; }
    }

    public string State
    {
        get { return state; }
        set { state = value; }
    }


}