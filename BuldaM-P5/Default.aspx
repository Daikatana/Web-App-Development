<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
        <asp:Panel runat="server">

        <asp:Table runat="server" ID="LoginInfo" CssClass="RegisteredTable">
            <asp:TableRow>
                <asp:TableCell ID="registeredTitle">Already Registered?</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ID="lblEmail">Email Address?</asp:TableCell>

            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ID="txtEmail"><asp:TextBox runat="server"></asp:TextBox></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell ID="lblPwd">Password:</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:TextBox ID="txtPwd" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" Text="6-20 characters (alphanumeric)"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button runat="server" ID="btnSignIn" Style="height: 35px" Text="Sign In" CssClass="Button" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:HyperLink Text="Forgot Password?" NavigateUrl="~/PasswordRecover.aspx" runat="server" CssStyle="color:red;"></asp:HyperLink>
                </asp:TableCell>
            </asp:TableRow>


        </asp:Table>
        <asp:Table runat="server" ID="newLoginInfo" CssClass="newMemberTable">
            <asp:TableRow>
                <asp:TableCell ID="newMemberHead">New to Ticket Connection?</asp:TableCell>
                </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Let's get your account setup. It's FREE!</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button runat="server" ID="btnRegister" Style="height: 35px" Text="Register"  OnClick="btnRegister_Click" CssClass="Button" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        </asp:Panel>

        <%--<asp:TextBox runat="server" ID="ticketHolderName"></asp:TextBox></asp:TableCell>
                    <asp:TableCell RowSpan="2">
                        <asp:Button runat="server" ID="ticketBtn" Text="View Tickets" Height="53px" Width="150px" OnClick="ticketBtn_Click" /></asp:TableCell>
                </asp:TableRow>--%>
    </form>
</body>
</html>
