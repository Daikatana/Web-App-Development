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
            <asp:Table ID="Table1" runat="server" CssClass="RegisteredTable">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label1" runat="server" Text="Ticket Holder's Name: " />
                        <asp:TextBox runat="server" ID="txtEnterTickNum" />
                    </asp:TableCell>
                    <asp:TableCell>
                        <br /><br />
                        

          
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell></asp:TableCell>
                    <asp:TableCell>
                        <asp:Button ID="Button1" runat="server" Text="Retrieve Existing Order" CssClass="Button" />
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
    </form>
</body>
</html>
