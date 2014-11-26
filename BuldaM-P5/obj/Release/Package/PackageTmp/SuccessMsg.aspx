<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="SuccessMsg.aspx.cs" Inherits="SuccessMsg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Successful Transaction Message</title>
    <link rel="stylesheet" type="text/css" href="MyStyle.css" />

   
</head>
<body>
    <div class="bannerContainer">
        <div class="bannerTitle">
            <h1 id="companyName">Houston Ticket<br />
                Connection</h1>
        </div>
        <!--This div tag ends bannerTitle-->
        <div class="businessContent">
            <!--Company description-->
            <div>
                <p id="businessDesc">
                    Houston Ticket Connection is an independent ticket resale agency that has been operating
                <br />
                    since 1990. We specialize in providing preferred or hard to find seating to most
                <br />
                    concerts, sporting events to be taken place in Houston TX. We can secure tickets for
                <br />
                    these events. We sell our tickets at market price or which may be substantially lower
                <br />
                    than face value. Keep your trust on us!
                </p>
            </div>
        </div>
        <!--This div tag ends businessContent-->
    </div>
    <!--This div tag ends bannerContainer-->
    <br />

    <asp:Table runat="server" CssClass="successMsg">
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label runat="server" CssClass="thankYou" Text="Thank you for your business."></asp:Label>
                <br />
                <asp:Label ID="Label1" CssClass="tickMsg" runat="server" Text="Your tickets will be shipped to the address entered above within 5 business days."></asp:Label>
                <br />
                <asp:Label ID="Label2" CssClass="print"  runat="server" Text="Please print this page as your receipt"></asp:Label>
                <br />
                <asp:Label ID="Label3" CssClass="enjoy" runat="server" Text="Enjoy the Event!"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
</body>
</html>
