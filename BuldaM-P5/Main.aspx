<%@ Page Language="C#" AutoEventWireup="True" EnableEventValidation="false" CodeBehind="Main.aspx.cs" Inherits="Main" %>
<%@ Register TagPrefix="Banner" TagName="BannerControl" Src="BannerControl.ascx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<!--
    *************************************************************************************************************

    Programmer:     Michael Bulda

    Course:         CINF 4320.05

    Date:           October 30, 2014

    Assignment:     Program 4 - Phase II of Semester Project: Control Conversion
                    Now part of program assignment 5

    Environment:    Windows 8.1, Visual Studio 2012

    Files Included: Default.aspx, Default.aspx.cs, SportsEvents.xml, ConcertEvents.xml, MyStyle.css, images folder with one banner image

    Purpose:        To convert HTML controls to asp controls

    Input:          Mouse, keyboard

    Pre-Condition:  A clean layout which allows users to easily identify a purpose for each of the elements on the page.
                    Sufficient input validation is required to display the correct results to user.

    Output:         A website that has a functional drop-down list, input fields and submission buttons.
    
    *************************************************************************************************************
-->


<head id="Head1" runat="server">
    <title>Houston Ticket Link Home</title>

    <script type="text/javascript">
        var xmlDoc;
        var xmlhttp;

        function loadSportsEvents() {
            xmlhttp = new XMLHttpRequest();
            xmlhttp.onreadystatechange = readEvents;
            xmlhttp.open("GET", "SportsEvents.xml", true); //get the information from my sports XML file
            xmlhttp.send();
        }

        function loadConcertEvents() {

            xmlhttp = new XMLHttpRequest();
            xmlhttp.onreadystatechange = readEvents;
            xmlhttp.open("GET", "ConcertEvents.xml", true); //get the information from my concert XML file
            xmlhttp.send();
        }

        /*read the information from the xml document*/
        function readEvents() {
            if (xmlhttp.readyState == 4) {
                xmlDoc = xmlhttp.responseXML;
                var eventRows = xmlDoc.getElementsByTagName("event"); //this is a counter for the number of elements there are in the xml document
                var totalAtts = eventRows[0].attributes.length; //finds the total number of attributes in the first line

                //This is a for loop to remove the items in the drop down list before populating it again
                for (var j = 0; j < eventRows.length; j++) {
                    for (var next = 0; next < (totalAtts) ; next++) {
                        var nextEvent = eventRows[j].getAttribute("name") + ", " + eventRows[j].getAttribute("date") + ", " + eventRows[j].getAttribute("time") + ", " + eventRows[j].getAttribute("price");
                        //store all the text values of an event into one variable   
                    }//end for loop
                    document.getElementById("allEvents").remove(new Option(nextEvent, "event" + j)); //this basically removes a row from the drop down list
                }

                /*This is the code that will populate the dropdown box for the sports events*/
                /*this for loop ensures there are enough row entries from the xml file are populated into the drop down list*/
                for (var j = 0; j < eventRows.length; j++) {
                    for (var next = 0; next < (totalAtts) ; next++) {
                        var nextEvent = eventRows[j].getAttribute("name") + ", " + eventRows[j].getAttribute("date") + ", " + eventRows[j].getAttribute("time") + ", " + eventRows[j].getAttribute("price");
                        //store all the text values of an event into one variable   
                    }//end for loop
                    document.getElementById("allEvents").add(new Option(nextEvent, "event" + j)); //this basically adds a row to the drop down list and assigns a name to that option
                }
            }//end if
        }//end readSportsEvent

        function verify() {
            //input validation for input fields that are empty
            if ((document.getElementById("ticketHolderName").value == "") & (document.getElementById("ticketAddress").value != "")) {
                alert("Enter a ticket owner's name");
            }
            else if ((document.getElementById("ticketHolderName").value != "") & (document.getElementById("ticketAddress").value == "")) {
                alert("Enter an address");
            }
            else if ((document.getElementById("ticketHolderName").value == "") & (document.getElementById("ticketAddress").value == "")) {
                alert("Ticket owner name and address fields need to be filled");
            }
            else
                ticketPreview(); //call ticketPreview function if both ticket owner name and address fields are filled out
        }


        /***********************************************Code to create a ticket preview for the customer*********************************************************/
        function ticketPreview() {

            var num = Math.floor((Math.random() * 1000000) + 1);//random number between 1 and 1 mil generated for ticket number
            var ownerName = document.getElementById("ticketHolderName").value;
            var tktCount = document.getElementById("numOfTix").selectedIndex + 1; //get the number of tickets by customer; add one to index to get the correct answer
            var tickAddr = document.getElementById("ticketAddress").value;
            var currEvent = document.getElementById("allEvents"); //get the element with the id called allEvents
            var currString = currEvent.options[currEvent.selectedIndex].text; //get the string of the currently selected item
            var eventAry = currString.split(",");//split the currently selected dropdown menu item into four parts items in an array
            //event name at index 0, event date at index 1, event time at index 2, and event price at index 3
            //will need this information to populate the rows in the customer ticket preview
            //populate the table I created with text
            document.getElementById("ticketTable").style.border = "medium solid red";//adds border around table that holds customer's ticket preview
            document.getElementById("ticketTable").style.backgroundColor = "lightyellow";//changes the color of the ticket preview
            document.getElementById("tickNum").innerHTML = "Ticket Number: " + num;//num holds the random number generated
            document.getElementById("nameTitle").innerHTML = "Ticket Holder's Name:"; document.getElementById("actualName").innerHTML = ownerName;//ownerName holds the value of the name entered in the ticket owner input field
            document.getElementById("addressTitle").innerHTML = "Address:"; document.getElementById("actualAddr").innerHTML = tickAddr; //display the information that was typed in the address input field
            document.getElementById("eventLbl").innerHTML = "Event: " + eventAry[0] + ","; document.getElementById("eventDetails").innerHTML = "Day/Time/Price: " + eventAry[1] + ", " + eventAry[2] + ", " + eventAry[3]; document.getElementById("tickQty").innerHTML = "X " + tktCount;
            document.getElementById("distributorMsg").innerHTML = "Authorized Distributor Houston Ticket Connection";
        }//end function ticketPreview
    </script>

    <!--*********************************************************************************************************************************************************-->

    <!--Link to a CSS external file to simplify layout style-->
    <link rel="stylesheet" type="text/css" href="MyStyle.css" />
</head>


<body onload="loadSportsEvents();">

    <%--This is the user control to load the banner--%>
    <Banner:BannerControl id="Header1" runat="server"></Banner:BannerControl>
    

    <!--create a form to run serverside-->
    <form id="serverForm" runat="server">
        
        <div class="formContainer">
            <br />
    <asp:Button runat="server" ID="btnExistingOrder" Text="View Existing Order" CssClass="Button"/>
    <br />
            <!--Radio button information-->
            <div id="ticketRadioBtn">
                Select ticket type:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            <!--asp Radio button controls to change what type of evens (sports or concerts) are displayed in the dropdown list-->
                <asp:RadioButton ID="optSports" GroupName="ticketType" runat="server" Checked="True" OnClick="loadSportsEvents();" />Houston Sports&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            <asp:RadioButton ID="optConcerts" GroupName="ticketType" runat="server" OnClick="loadConcertEvents();" />Houston Concerts
            </div>
            <br />

            <!--***************************************************Drop down menu with events and ticket quantity***********************************************************-->

            <!--This is just the labels for the "Event and Details" drop down list and for the Ticket Quantity drop down list-->
            <table style="margin-left: 20%;">
                <tr id="eventTitle">
                    <td class="eventTitle" style="width: 603px; text-align: left;">Event and Details</td>
                    <td class="eventTitle"># of tickets</td>
                </tr>
            </table>

            <!--drop down list that will accept xml content to display all houston events per radio button category-->
            <div id="eventForm">
                <asp:DropDownList ID="allEvents" runat="server" Style="width: 56%; background-color: seashell; color: navy;">
                </asp:DropDownList>

                <!--asp drop down list to list the quantity of tickets the customer wishes to purchase-->
                <asp:DropDownList ID="numOfTix" runat="server">
                    <asp:ListItem Value="1"></asp:ListItem>
                    <asp:ListItem Value="2"></asp:ListItem>
                    <asp:ListItem Value="3"></asp:ListItem>
                    <asp:ListItem Value="4"></asp:ListItem>
                    <asp:ListItem Value="5"></asp:ListItem>
                    <asp:ListItem Value="6"></asp:ListItem>
                    <asp:ListItem Value="7"></asp:ListItem>
                    <asp:ListItem Value="8"></asp:ListItem>
                    <asp:ListItem Value="9"></asp:ListItem>
                    <asp:ListItem Value="10"></asp:ListItem>
                    <asp:ListItem Value="11"></asp:ListItem>
                    <asp:ListItem Value="12"></asp:ListItem>
                    <asp:ListItem Value="13"></asp:ListItem>
                    <asp:ListItem Value="14"></asp:ListItem>
                    <asp:ListItem Value="15"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <br />

            <!--*****************************************************Ticket Owner and Address Input Form************************************************-->

            <asp:Table runat="server" CssClass="HolderInfo">
                <asp:TableRow>
                    <asp:TableCell runat="server"><asp:Label runat="server" Text="Holder Name:"></asp:Label>
                        <br />
                        <asp:TextBox runat="server" ID="ticketHolderName" Text="Jimmy Bob"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="ReqFldVal_Name" runat="server"
                            ControlToValidate="ticketHolderName"
                            Font-Name="'Arial Narrow'"
                            ForeColor="Red"
                            Font-Size="Medium"
                            ErrorMessage="First name field is required.">
                        </asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegExpVal_fName" runat="server"
                            ControlToValidate="ticketHolderName"
                            Font-Name="'Arial Narrow'"
                            ForeColor="Red"
                            Font-Size="Medium"
                            ErrorMessage="First name must contain only alphabetical characters. No symbols or numbers permitted."
                            ValidationExpression="^[a-zA-Z''-'\s]{1,40}$">
                        </asp:RegularExpressionValidator>
                    </asp:TableCell>
                    <asp:TableCell CssClass="headerCell">
                        <%--<asp:Button runat="server" ID="ticketBtn" Text="View Tickets" OnClientClick="verify(); return false" Height="56px" Width="150px"/>--%>
                        <asp:Button runat="server" ID="ticketBtn" Text="View Tickets" OnClientClick="verify(); return false" Height="56px" Width="150px" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell runat="server"><asp:Label runat="server" Text="Tickets To (Postal Address)"></asp:Label>
                        <!--asp Textbox control to hold the address for the ticket-->
                        <asp:TextBox runat="server" ID="ticketAddress" Text="123 Sample Street, Sample City, TX 77510"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="ReqFldVal_AddrMainPg" runat="server"
                            ControlToValidate="ticketAddress"
                            Font-Name="'Arial Narrow'"
                            ForeColor="Red"
                            Font-Size="Medium"
                            ErrorMessage="Street address is required!">
                        </asp:RequiredFieldValidator>

                        <br />

                        <asp:RegularExpressionValidator ID="RegExpVal_AddrMainPg" runat="server"
                            ControlToValidate="ticketAddress"
                            Font-Name="'Arial Narrow'"
                            ForeColor="Red"
                            Font-Size="Medium"
                            ErrorMessage="Not a valid street address"
                            ValidationExpression="[A-Za-z0-9\'\.\-\,\#?\s]{2,70}$">
                        </asp:RegularExpressionValidator>

                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>

            <br />
            <br />

            <!--**********************************************************Ticket Preview*************************************************************************-->
            <div id="ticketPreview" style="width: 94%; margin-left: auto; margin-right: auto;">
                <!--This is where I will show the customer his ticket and quantity-->
                <h1 id="tickQty" style="text-align: center; float: right; font-size: 70px; color: red; margin-top: 0; margin-bottom: 0; margin: auto;"></h1>
                <table id="ticketTable" style="margin-left: auto; margin-right: auto; border-spacing: 8px 2px;">
                    <tr id="ticketNumber">
                        <th colspan="2" id="tickNum" style="text-align: center; font-family: Verdana; font-weight: bold; font-size: large; color: maroon;"></th>
                    </tr>
                    <!--end of row that will hold ticket number-->
                    <tr>
                        <td id="nameTitle" style="text-align: left; font-weight: bold; font-family: Verdana,Arial; color: maroon; font-size: large; text-align: left;"></td>
                        <td id="actualName" style="text-align: left; font-weight: bold; font-family: Verdana,Arial; color: maroon; font-size: large; text-align: left;"></td>
                    </tr>
                    <!--end of row with ticket holder name-->
                    <tr>
                        <td id="addressTitle" style="text-align: left; font-weight: bold; font-family: Verdana,Arial; color: maroon; font-size: medium; text-align: left;"></td>
                        <td id="actualAddr" style="text-align: left; font-weight: bold; font-family: Verdana,Arial; color: maroon; font-size: small; text-align: left;"></td>
                    </tr>
                    <!--end of row with address information-->
                    <tr>
                        <td id="eventLbl" style="text-align: left; font-family: Verdana,Arial; font-weight: bold; color: maroon; font-size: small; text-align: left;"></td>
                        <td id="eventDetails" style="text-align: left; font-weight: bold; font-family: Verdana,Arial; color: maroon; font-size: small; text-align: left;"></td>
                    </tr>
                    <!--end of row with event information-->
                    <tr>
                        <th colspan="2" id="distributorMsg" style="font-style: italic; font-size: 16px; color: blue; font-family: 'Trebuchet MS'; text-align: center"></th>
                    </tr>
                </table>
            </div>
            <br />
            <br />

            <!--**********************************************************Ticket Preview*************************************************************************-->
            <!--Payment radio buttons-->
            <div id="paymentRadioBtn">
                Payment Method:&nbsp&nbsp
            <!--asp radio buttons used for the selection of Payment Type-->
                <asp:RadioButton GroupName="payType" ID="rdoVisa" Text="VISA" Checked="true" runat="server" />&nbsp&nbsp
            <asp:RadioButton GroupName="payType" ID="rdoMaster" Text="Master" runat="server" />&nbsp&nbsp
            <asp:RadioButton GroupName="payType" ID="rdoPayPal" Text="PayPal" runat="server" />
            </div>

            <!--Account number input field-->
            <div id="accountNum">
                Account Number:&nbsp&nbsp&nbsp&nbsp
            <asp:TextBox runat="server" ID="acctNum" Text="1111111111"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="ReqFldVal_acctNum" runat="server"
                    ControlToValidate="acctNum"
                    Font-Name="'Arial Narrow'"
                    ForeColor="Red"
                    Font-Size="Medium"
                    ErrorMessage="Street address is required!">
                </asp:RequiredFieldValidator>

                <!--<input type="text" name="accountNum" id="acctNum" />-->
            </div>

            <p id="shipNote">Important: Tickets will be shipped to the address shown on the ticket</p>

            <div>
                <!--final submit/complete transaction button-->
                <%--OnClick="completeBtnClick"--%>
                <%--OnClientClick="if (!acctNumValidate()) { return false;};"--%>
                <%--PostBackUrl="~/SuccessMsg.aspx"--%>
                <asp:Button runat="server" ID="completeBtn" Style="height: 35px"
                    OnClick="completeBtnEvent"
                    Text="Complete Transaction" />

                <!--<button type="button" id="completeBtn" onclick="acctNumValidate();" style="height: 35px">Complete Transaction</button>-->
            </div>
            <br />
            <br />

            <script type="text/javascript">
                //validate multiple possibilities for the input fields
                function acctNumValidate() {

                    //if ticket owner empty and address empty and account num empty
                    if ((document.getElementById("ticketHolderName").value == "") & (document.getElementById("ticketAddress").value == "") & (document.getElementById("acctNum").value == "")) {
                        alert("All fields must be filled out to complete transaction");
                        //return;
                    }
                        //if ticket owner not empty and address empty and acct num not empty
                    else if ((document.getElementById("ticketHolderName").value != "") & (document.getElementById("ticketAddress").value == "") & (document.getElementById("acctNum").value != "")) {
                        alert("Enter an address");
                        //return;
                    }
                    else if ((document.getElementById("ticketHolderName").value != "") & (document.getElementById("ticketAddress").value == "") & (document.getElementById("acctNum").value == "")) {
                        alert("Enter an address and an account number");
                        //return;
                    }
                    else if ((document.getElementById("ticketHolderName").value == "") & (document.getElementById("ticketAddress").value != "") & (document.getElementById("acctNum").value == "")) {
                        alert("Enter a ticket owner name and an account number");
                        //return;
                    }
                        //if ticket owner empty and address empty and acct num not empty
                    else if ((document.getElementById("ticketHolderName").value == "") & (document.getElementById("ticketAddress").value == "") & (document.getElementById("acctNum").value != "")) {
                        alert("Enter a ticket owner name and an address");
                        //return;
                    }
                        //if account num is empty and ticket owner not empty and address not empty
                    else if ((document.getElementById("acctNum").value == "") & (document.getElementById("ticketHolderName").value != "") & (document.getElementById("ticketAddress").value != "")) {
                        alert("Enter an account number");
                        // return;
                    }
                    else if ((document.getElementById("ticketHolderName").value == "") & (document.getElementById("ticketAddress").value != "") & (document.getElementById("acctNum").value != "")) {
                        alert("Enter a ticket owner name");
                        //return;
                    }
                    return;

                }
            </script>

        </div>

        <!--closing tag for the form that must be run at the server-->
    </form>
</body>
</html>
