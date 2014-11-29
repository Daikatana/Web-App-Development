<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExistingOrder.aspx.cs" Inherits="ExistingOrder" %>

<%@ Register TagPrefix="Banner" TagName="BannerControl" Src="BannerControl.ascx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Existing Order</title>
    <link rel="stylesheet" type="text/css" href="MyStyle.css" />
</head>
<body>
    <Banner:BannerControl ID="Header1" runat="server"></Banner:BannerControl>
    <br />
    <form id="form1" runat="server">
        <div>
            <asp:Table runat="server" CssClass="RegisteredTable">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label runat="server" Text="To View Existing Order Enter Ticket Number: " />
                    </asp:TableCell>
                    <asp:TableCell>
                        <br /><br />
                        <asp:TextBox runat="server" ID="txtEnterTickNum" />
                        <br />
                        <asp:RequiredFieldValidator ID="ReqFldVal_acctNum" runat="server"
                            ControlToValidate="txtEnterTickNum"
                            Font-Name="'Arial Narrow'"
                            ForeColor="Red"
                            Font-Size="Medium"
                            ErrorMessage="Ticket number is required!">
                        </asp:RequiredFieldValidator>
                        <br />

                        <asp:RegularExpressionValidator ID="RegExpVal_AddrMainPg" runat="server"
                            ControlToValidate="txtEnterTickNum"
                            Font-Name="'Arial Narrow'"
                            ForeColor="Red"
                            Font-Size="Medium"
                            ErrorMessage="Not a valid ticket number. Enter a 10-digit account number."
                            ValidationExpression="^\d{10}$">
                        </asp:RegularExpressionValidator>
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
