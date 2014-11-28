<%@ Page Language="C#" AutoEventWireup="True" Inherits="PasswordRecover" Codebehind="PasswordRecover.aspx.cs" %>
<%@ Register TagPrefix="Banner" TagName="BannerControl" Src="BannerControl.ascx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Email Login</title>

    <!--Link to a CSS external file to simplify layout style-->
    <link rel="stylesheet" type="text/css" href="MyStyle.css" />
</head>
<body>

    <%--This is the user control to load the banner--%>
    <Banner:BannerControl id="Header1" runat="server"></Banner:BannerControl>
    <br />

    <form id="memberForm" runat="server">
       
        <asp:Panel ID="pnlRecoverPwdMsg" CssClass="MessageContent" runat="server">
            <asp:Label ID="Label1" runat="server" Text="Just tell us the email you used to create your Ticket Connection account."></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="We'll email/give you the password."></asp:Label>
        </asp:Panel><br />

        <asp:Table runat="server" ID="forgotPwdTable" CssClass="GeneralTable">
            <asp:TableRow>
                <asp:TableCell>Email Address</asp:TableCell>
                <asp:TableCell>Re-enter Email Address?</asp:TableCell>
            </asp:TableRow>
          
            <asp:TableRow>
                <asp:TableCell>
                    <asp:TextBox ID="txtEmailRecover" runat="server"></asp:TextBox>
                    <br />
                    <%--Input validation for email texbox--%>
                        <asp:RequiredFieldValidator ID="ReqFldVal_EmailRecover" runat="server"
                            ControlToValidate="txtEmailRecover"
                            Font-Name="'Arial Narrow'"
                            ForeColor="Red"
                            Font-Size="Medium"
                            ErrorMessage="Email address is required!">
                        </asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegExpVal_Email" runat="server"
                            ControlToValidate="txtEmailRecover"
                            Font-Name="'Arial Narrow'"
                            ForeColor="Red"
                            Font-Size="Medium"
                            ErrorMessage="Not a valid email address."
                            ValidationExpression="^[a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$">
                        </asp:RegularExpressionValidator>
                </asp:TableCell>
                <asp:TableCell>
                    <br />        
                        <asp:TextBox ID="txtEmailRecoverReenter" runat="server"></asp:TextBox>
                    <br />
                    <%--Input validation for email recover texbox--%>
                        <asp:RequiredFieldValidator ID="ReqFldVal_EmailRecoverReenter" runat="server"
                            ControlToValidate="txtEmailRecoverReenter"
                            Font-Name="'Arial Narrow'"
                            ForeColor="Red"
                            Font-Size="Medium"
                            ErrorMessage="Email address is required!">
                        </asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegExpVal_EmailRecoverReenter" runat="server"
                            ControlToValidate="txtEmailRecoverReenter"
                            ForeColor="Red"
                            Font-Name="'Arial Narrow'"
                            Font-Size="Medium"
                            ErrorMessage="Not a valid email address. Example: Jane@yahoo.com"
                            ValidationExpression="^[a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$">
                        </asp:RegularExpressionValidator>
                        <br />
                        <asp:CompareValidator ID="CompVal_RecoverEmail" runat="server"
                            ControlToCompare="txtEmailRecover" ControlToValidate="txtEmailRecoverReenter"
                            ForeColor="Red"
                            Font-Name="'Arial Narrow'"
                            Font-Size="Medium"
                            ErrorMessage="The email addresses do not match">
                        </asp:CompareValidator>
                    </asp:TableCell>
                </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="2">
                    <asp:Button runat="server" ID="btnRecoverPwd" Style="height: 35px" Text="Submit" OnClick="btnRecoverPwd_Click" CssClass="Button" CausesValidation="True" />
                </asp:TableCell>
            </asp:TableRow>
            </asp:Table>
        <br />
        <asp:Panel ID="Panel1" CssClass="plainPanel" runat="server">
            <asp:Label runat="server" ID="pwdConfirmMsg" CssClass="passwdRecover" Style="height: 35px" /><br />
            <%--This is a placeholder for the customer's password when the correct email address is entered--%>
            <asp:Button runat="server" Text="OK" ID="btnReturnToDefault" CssClass="Button" OnClick="ReturnToDefault_Click"/>
        </asp:Panel>

    </form>
</body>
</html>
