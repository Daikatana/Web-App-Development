<%@ Page Language="C#" AutoEventWireup="True" Inherits="_Default" Codebehind="Default.aspx.cs" %>

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
                <asp:TableCell ID="txtEmailDefaultPg"><asp:TextBox runat="server"></asp:TextBox>
                <br />
                        <asp:RequiredFieldValidator ID="ReqFldVal_EmailDefaultPg" runat="server"
                            ControlToValidate="txtEmailDefaultPg"
                            Font-Name="'Arial Narrow'"
                            ForeColor="Red"
                            Font-Size="Medium"
                            ErrorMessage="Email address is required!">
                        </asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegExpVal_Email" runat="server"
                            ControlToValidate="txtEmailDefaultPg"
                            Font-Name="'Arial Narrow'"
                            ForeColor="Red"
                            Font-Size="Medium"
                            ErrorMessage="Not a valid email address."
                            ValidationExpression="^[a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$">
                        </asp:RegularExpressionValidator>
                    </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell ID="lblPwd">Password:</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:TextBox ID="txtPwdDefaultPg" runat="server"></asp:TextBox>
                    <br />
                        <asp:RequiredFieldValidator ID="ReqFldVal_PwdDefaultPg" runat="server"
                            ControlToValidate="txtPwdDefaultPg"
                            Font-Name="'Arial Narrow'"
                            ForeColor="Red"
                            Font-Size="Medium"
                            ErrorMessage="Password field is required!">
                        </asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegExpVal_txtPwd" runat="server"
                            ControlToValidate="txtPwdDefaultPg"
                            Font-Name="'Arial Narrow'"
                            ForeColor="Red"
                            Font-Size="Medium"
                            ErrorMessage="Enter a password that is 6-20 characters long. It must contain at least 1 uppercase and 1 lowercase letter, and 1 special character."
                            ValidationExpression="^.*(?=.{6,20})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=]).*$">
                        </asp:RegularExpressionValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" Text="6-20 characters (alphanumeric)"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button runat="server" ID="btnSignIn" Style="height: 35px" Text="Sign In" OnClick="btnSignIn_Click" CssClass="Button" />
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
    </form>
</body>
</html>
