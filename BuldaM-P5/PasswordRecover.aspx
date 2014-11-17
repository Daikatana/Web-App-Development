<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PasswordRecover.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Email Login</title>

    <!--Link to a CSS external file to simplify layout style-->
    <link rel="stylesheet" type="text/css" href="MyStyle.css" />
</head>
<body>

    <!--load sport event list from xml file when page loads-->
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

    <form id="memberForm" runat="server">
       
        <asp:Panel ID="pnlRecoverPwdMsg" CssClass="MessageContent" runat="server">
            <asp:Label runat="server" Text="Just tell us the email you used to create your Ticket Connection account."></asp:Label>
            <asp:Label runat="server" Text="We'll email/give you the password."></asp:Label>
        </asp:Panel>

        <asp:Table runat="server" ID="forgotPwdTable" CssClass="GeneralTable">
            <asp:TableRow>
                <asp:TableCell>Email Address</asp:TableCell>
                <asp:TableCell>Re-enter Email Address?</asp:TableCell>
            </asp:TableRow>
          
            <asp:TableRow>
                <asp:TableCell>
                    <asp:TextBox ID="txtEmailRecover" Text="sample@yahoo.com" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>                
                        <asp:TextBox ID="txtEmailRecoverReenter" Text="sample@yahoo.com" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="2">
                    <asp:Button runat="server" ID="btnRecoverPwd" Style="height: 35px" Text="Submit"  OnClick="btnRecoverPwd_Click" CssClass="Button" />
                </asp:TableCell>
            </asp:TableRow>

            </asp:Table>

        <asp:Panel runat="server">
            <%--This is a placeholder for the customer's password when the correct email address is entered--%>
        </asp:Panel>

    </form>
</body>
</html>
