<!--
    *************************************************************************************************************

    Programmer:     Michael Bulda

    Course:         CINF 4320.05

    Date:           November 20, 2014

    Assignment:     Program 5 - Phase III of Semester Project: New Forms and Validation

    Environment:    Windows 8.1, Visual Studio 2012

    Files Included: Default.aspx, SportsEvents.xml, ConcertEvents.xml, MyStyle.css, images folder with one banner image
                    NewMember.aspx, Main.aspx, SuccessMsg.aspx, and relevant code-behind files

    Purpose:        To create an entry point into the site for the user.

    Input:          Mouse, keyboard

    Pre-Condition:  A clean layout which allows users to easily identify a purpose for each of the elements on the page.
                    Sufficient input validation is required to display the correct results to user.

    Output:         A website that has a functional drop-down list, input fields and submission buttons.
    
    *************************************************************************************************************
-->


<%@ Page Language="C#" AutoEventWireup="True" Inherits="DefaultPage" CodeBehind="Default.aspx.cs" %>

<%@ Register TagPrefix="apress" TagName="BannerControl" Src="BannerControl.ascx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Email Login</title>

    <!--Link to a CSS external file to simplify layout style-->
    <link rel="stylesheet" type="text/css" href="MyStyle.css" />
</head>
<body>

    <%--<div class="bannerContainer">
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
    <br />--%>

    <form id="memberForm" runat="server">
        <asp:Table runat="server" ID="LoginInfo" CssClass="RegisteredTable">
            <asp:TableRow>
                <asp:TableCell ID="TableCell1" runat="server" CssClass="newMemberTable">
                    <asp:Label ID="Label1" runat="server" Text="Already Registered?"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Email Address?"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtEmailDefaultPg" runat="server"></asp:TextBox>
                    <br />
                    <%--Input validation for email textbox--%>
                    <asp:RegularExpressionValidator ID="RegExpVal_Email" runat="server"
                        ControlToValidate="txtEmailDefaultPg"
                        Font-Name="'Arial Narrow'"
                        ForeColor="Red"
                        Font-Size="Medium"
                        ErrorMessage="Not a valid email address."
                        ValidationExpression="^[a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$">
                    </asp:RegularExpressionValidator>
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtPwdDefaultPg" runat="server" TextMode="Password"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="6-20 characters (alphanumeric)"></asp:Label>
                    <br />
                    <%--Input validation for password textbox--%>
                    <asp:RegularExpressionValidator ID="RegExpVal_txtPwd" runat="server"
                        ControlToValidate="txtPwdDefaultPg"
                        Font-Name="'Arial Narrow'"
                        ForeColor="Red"
                        Font-Size="Medium"
                        ErrorMessage="Enter a password that is 6-20 characters long. It must contain at least 1 uppercase and 1 lowercase letter, and 1 special character."
                        ValidationExpression="^.*(?=.{6,20})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=]).*$">
                    </asp:RegularExpressionValidator>
                    <br />
                    <asp:Button runat="server" ID="btnSignIn" Style="height: 35px" Text="Sign In" OnClick="SignIn" CssClass="Button" />
                    <br />
                    <asp:HyperLink ID="HyperLink1" Text="Forgot Password?" NavigateUrl="~/PasswordRecover.aspx" runat="server" CssStyle="color:red;"></asp:HyperLink>
                </asp:TableCell>

                <asp:TableCell ID="TableCell2" runat="server" CssClass="newMemberTable">
                    <asp:Label ID="Label5" runat="server" Text="New to Ticket Connection?"></asp:Label>
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="Let's get your account setup. It's FREE!"></asp:Label>
                    <br />
                    <asp:Button runat="server" ID="btnRegister" Style="height: 35px" Text="Register" OnClick="btnRegister_Click" CssClass="Button" />

                </asp:TableCell>

            </asp:TableRow>
        </asp:Table>
        <br /><br />


        <div class=".adRotator" style="margin-left:20%; margin-right:auto;">
            <asp:ScriptManager ID="ScriptManager1" runat="server" />
            <asp:Timer ID="Timer1" Interval="6000" runat="server" />
            <asp:UpdatePanel ID="up1" runat="server">
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                </Triggers>
                <ContentTemplate>
                    <asp:AdRotator ID="AdRotator1" AdvertisementFile="MainAds.xml" KeywordFilter="small" runat="server" />
                    <asp:AdRotator ID="AdRotator2" AdvertisementFile="MainAds.xml" KeywordFilter="small" runat="server" />
                    <asp:AdRotator ID="AdRotator3" AdvertisementFile="MainAds.xml" KeywordFilter="small" runat="server" />
                    <asp:AdRotator ID="AdRotator4" AdvertisementFile="MainAds.xml" KeywordFilter="small" runat="server" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
    <br /><br />

</body>
</html>
