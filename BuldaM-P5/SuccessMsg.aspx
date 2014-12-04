<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="SuccessMsg.aspx.cs" Inherits="SuccessMsg" %>
<%@ Register TagPrefix="Banner" TagName="BannerControl" Src="BannerControl.ascx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Successful Transaction Message</title>
    <link rel="stylesheet" type="text/css" href="MyStyle.css" />

   
</head>
<body>
   
    <%--This is the user control to load the banner--%>
    <Banner:BannerControl id="Header1" runat="server"></Banner:BannerControl>
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

    <form runat="server">
    <asp:Button runat="server" CssClass="Button" Text="Return to Home Page" OnClick="Unnamed_Click" />
    </form>
</body>
</html>
