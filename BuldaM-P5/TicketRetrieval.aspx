<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TicketRetrieval.aspx.cs" Inherits="TicketRetrieval" %>
<%@ Register TagPrefix="Banner" TagName="BannerControl" Src="BannerControl.ascx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">

    <title>Existing Order</title>
    <link rel="stylesheet" type="text/css" href="MyStyle.css" />
</head>
<body>
    <Banner:BannerControl ID="Header1" runat="server"></Banner:BannerControl>
    <br />
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" ID="lblViewExistingTickNum" Text="Ticket Number: " BorderColor="RoyalBlue" BorderStyle="Solid" BackColor="Blue" Font-Bold="true" ForeColor="Orange" Font-Size="Large" Font-Names="Verdana" CssClass="TicketNumLabel"/>
            <asp:Table ID="Table1" runat="server" CssClass="ViewTicketTable">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label1" runat="server" Text="Ticket Holder's Name: " />
                        </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox runat="server" ID="txtViewName" ReadOnly="true" BackColor="LightGray"/>
                    </asp:TableCell>
                    </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label2" runat="server" Text="Shipping Address: " />
                        </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox runat="server" ID="txtViewAddr" ReadOnly="true" BackColor="LightGray"/>
                    </asp:TableCell>
                    </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label3" runat="server" Text="Event: " />
                        </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox runat="server" ID="txtViewEvent" ReadOnly="true" BackColor="LightGray"/>
                    </asp:TableCell>
                    </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label4" runat="server" Text="Number of Tickets: " />
                        
                        </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox runat="server" ID="txtViewTickNum" ReadOnly="true" BackColor="LightGray" MaxLength="2"/>
                        <asp:Label runat="server" Text="  Payment Method: " />
                        <asp:TextBox runat="server" ID="txtViewPayMethod" ReadOnly="true" BackColor="LightGray" />
                        <asp:Label runat="server" Text="  Account Number: " />
                        <asp:TextBox runat="server" ID="txtViewAcctNum" ReadOnly="true" BackColor="LightGray"/>
                    </asp:TableCell>
                    </asp:TableRow>

            </asp:Table>
        </div>
    </form>
</body>
</html>
