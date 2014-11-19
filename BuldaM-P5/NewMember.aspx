<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewMember.aspx.cs" Inherits="NewMember" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create Account</title>
    <style type="text/css">
        .auto-style1 {
            height: 34px;
        }

        .auto-style2 {
            width: 300px;
        }
    </style>
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


    <form id="frmNewMember" runat="server">
        <div>
            <%--Table that will hold information for the user to enter personal information--%>
            <asp:Table runat="server" CssClass="GeneralTable" ID="newMemTable" BorderColor="Blue" BorderStyle="Solid" Width="82%" BorderWidth="2" BackColor="LightCyan">

                <%--Row that contains email address textboxes--%>
                <asp:TableRow>
                    <asp:TableHeaderCell ColumnSpan="2">
                        <asp:Label ID="lblAcctCreate" Text="Create Your Account"
                            BorderStyle="Solid" Width="90%" Font="Verdana" ForeColor="Maroon"
                            runat="server">
                        </asp:Label>
                    </asp:TableHeaderCell>
                </asp:TableRow>

                <asp:TableRow></asp:TableRow>
 
                <%--Row for email input--%>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label runat="server" Text="Email Address * (e.g. Jane@yahoo.com)"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>

                        <br />
                        <asp:RequiredFieldValidator ID="ReqFldVal_Email" runat="server"
                            ControlToValidate="txtEmail"
                            Font-Name="'Arial Narrow'"
                            ForeColor="Red"
                            Font-Size="Medium"
                            ErrorMessage="Email address is required!">
                        </asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegExpVal_Email" runat="server"
                            ControlToValidate="txtEmail"
                            Font-Name="'Arial Narrow'"
                            ForeColor="Red"
                            Font-Size="Medium"
                            ErrorMessage="Not a valid email address."
                            ValidationExpression="^[a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$">
                        </asp:RegularExpressionValidator>
                    </asp:TableCell>

                    <asp:TableCell>
                        <br />
                        <asp:Label runat="server" Text="Re-enter Email Address *"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtReenterEmail" runat="server"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="ReqFldVal_ReenterEmail" runat="server"
                            ControlToValidate="txtReenterEmail"
                            Font-Name="'Arial Narrow'"
                            ForeColor="Red"
                            Font-Size="Medium"
                            ErrorMessage="Email address is required!">
                        </asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegExpVal_ReenterEmail" runat="server"
                            ControlToValidate="txtReenterEmail"
                            ForeColor="Red"
                            Font-Name="'Arial Narrow'"
                            Font-Size="Medium"
                            ErrorMessage="Not a valid email address. Example: Jane@yahoo.com"
                            ValidationExpression="^[a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$">
                        </asp:RegularExpressionValidator>
                        <br />
                        <asp:CompareValidator ID="CompVal_Email" runat="server"
                            ControlToCompare="txtEmail" ControlToValidate="txtReenterEmail"
                            ForeColor="Red"
                            Font-Name="'Arial Narrow'"
                            Font-Size="Medium"
                            ErrorMessage="The email addresses do not match">
                        </asp:CompareValidator>
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow></asp:TableRow>

                <%--Check to see if the email address is already used--%>
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="2">
                        <asp:Button runat="server" ID="btnFindMatch" Style="height: 35px" Text="Is This Email Address in Use?" CssClass="Button" OnClick="btnFindMatch_Click" />
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow></asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label Text="Password *" runat="server" Enabled="false">
                        </asp:Label>
                        <br />
                        <asp:TextBox ID="txtPwd" runat="server" Enabled="false" TextMode="Password"></asp:TextBox>

                        <%--Validate the password textboxes here--%>
                        <br />
                        <asp:RequiredFieldValidator ID="ReqFldVal_Pwd" runat="server"
                            ControlToValidate="txtPwd"
                            Font-Name="'Arial Narrow'"
                            ForeColor="Red"
                            Font-Size="Medium"
                            ErrorMessage="Password field is required!">
                        </asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegExpVal_txtPwd" runat="server"
                            ControlToValidate="txtPwd"
                            Font-Name="'Arial Narrow'"
                            ForeColor="Red"
                            Font-Size="Medium"
                            ErrorMessage="Enter a password that is 6-20 characters long. It must contain at least 1 uppercase and 1 lowercase letter, and 1 special character."
                            ValidationExpression="^.*(?=.{6,20})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=]).*$">
                        </asp:RegularExpressionValidator>
                    </asp:TableCell>

                    <asp:TableCell>
                        <asp:Label Text="Re-enter Password *" runat="server">
                        </asp:Label>
                        <br />
                         <asp:TextBox ID="txtReenterPwd" runat="server" Enabled="false" TextMode="Password"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="ReqFldVal_ReenterPwd" runat="server"
                            ControlToValidate="txtReenterPwd"
                            Font-Name="'Arial Narrow'"
                            ForeColor="Red"
                            Font-Size="Medium"
                            ErrorMessage="Password is required!">
                        </asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegExpVal_ReenterPwd" runat="server"
                            ControlToValidate="txtReenterPwd"
                            Font-Name="'Arial Narrow'"
                            ForeColor="Red"
                            Font-Size="Medium"
                            ErrorMessage="Enter a password that is 6-20 characters long. It must contain at least 1 uppercase and 1 lowercase letter, and 1 special character."
                            ValidationExpression="^.*(?=.{6,20})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=]).*$">
                        </asp:RegularExpressionValidator>
                        <br />
                        <asp:CompareValidator ID="CompVal_ReenterPwd" runat="server"
                            ControlToCompare="txtPwd" ControlToValidate="txtReenterPwd"
                            ForeColor="Red"
                            Font-Name="'Arial Narrow'"
                            Font-Size="Medium"
                            ErrorMessage="The passwords do not match">
                        </asp:CompareValidator>
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label Text="First Name *" runat="server">
                        </asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label Text="Last Name *" runat="server">
                        </asp:Label>
                    </asp:TableCell>
                </asp:TableRow>


                <%--Validate the first and last name textboxes--%>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:TextBox ID="txtFName" runat="server" Enabled="false"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="ReqFldVal_FName" runat="server"
                            ControlToValidate="txtFName"
                            Font-Name="'Arial Narrow'"
                            ForeColor="Red"
                            Font-Size="Medium"
                            ErrorMessage="First name field is required.">
                        </asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegExpVal_fName" runat="server"
                            ControlToValidate="txtFName"
                            Font-Name="'Arial Narrow'"
                            ForeColor="Red"
                            Font-Size="Medium"
                            ErrorMessage="First name must contain only alphabetical characters. No symbols or numbers permitted."
                            ValidationExpression="^[a-zA-Z''-'\s]{1,40}$">
                        </asp:RegularExpressionValidator>

                        

                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtLName" runat="server" Enabled="false"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="ReqFldVal_LName" runat="server"
                            ControlToValidate="txtLName"
                            Font-Name="'Arial Narrow'"
                            ForeColor="Red"
                            Font-Size="Medium"
                            ErrorMessage="Last name field is required.">
                        </asp:RequiredFieldValidator>
                        <br />

                        <asp:RegularExpressionValidator ID="RegExpVal_lName" runat="server"
                            ControlToValidate="txtLName"
                            ForeColor="Red"
                            Font-Name="'Arial Narrow'"
                            Font-Size="Medium"
                            ErrorMessage="Last name must contain only alphabetical characters. No symbols or numbers permitted."
                            ValidationExpression="^[a-zA-Z''-'\s]{1,40}$">
                        </asp:RegularExpressionValidator>

                    </asp:TableCell>
                </asp:TableRow>

                <%--  This is the address portion of the form--%>

                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label Text="Street Address * (E.g. 98 Sample Street)" runat="server">
                        </asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="2">
                        <asp:TextBox ID="txtAddr" runat="server" Width="100%" Enabled="false"></asp:TextBox>

                        <%--Validate the street address here--%>

                        <br />
                        <asp:RequiredFieldValidator ID="ReqFldVal_Addr" runat="server"
                            ControlToValidate="txtAddr"
                            Font-Name="'Arial Narrow'"
                            ForeColor="Red"
                            Font-Size="Medium"
                            ErrorMessage="Street address is required!">
                        </asp:RequiredFieldValidator>

                        <br />

                        <asp:RegularExpressionValidator ID="RegExpVal_Addr" runat="server"
                            ControlToValidate="txtAddr"
                            Font-Name="'Arial Narrow'"
                            ForeColor="Red"
                            Font-Size="Medium"
                            ErrorMessage="Not a valid street address"
                            ValidationExpression="[A-Za-z0-9\'\.\-\,\#?\s]{2,70}$">
                        </asp:RegularExpressionValidator>
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell>
                        <br /><br />
                        <asp:Label Text="City *" runat="server">
                        </asp:Label>
                        <br />
                        <asp:TextBox ID="txtCity" runat="server" Enabled="false"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="ReqFldVal_City" runat="server"
                            ControlToValidate="txtCity"
                            Font-Name="'Arial Narrow'"
                            ForeColor="Red"
                            Font-Size="Medium"
                            ErrorMessage="City field is required!">
                        </asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegExpVal_City" runat="server"
                            ControlToValidate="txtCity"
                            Font-Name="'Arial Narrow'"
                            ForeColor="Red"
                            Font-Size="Medium"
                            ErrorMessage="Not a valid city"
                            ValidationExpression="[A-Za-z0-9\'\.\-\,\#?\s]{2,70}$">
                        </asp:RegularExpressionValidator>
                    </asp:TableCell>
                    <asp:TableCell>
                    <asp:Label runat="server" Text="State" ></asp:Label>
                        <br />
                         <asp:DropDownList ID="lstState" runat="server" Enabled="false">
                            <asp:ListItem Value="AL">AL</asp:ListItem>
                            <asp:ListItem Value="AK">AK</asp:ListItem>
                            <asp:ListItem Value="AZ">AZ</asp:ListItem>
                            <asp:ListItem Value="AR">AR</asp:ListItem>
                            <asp:ListItem Value="CA">CA</asp:ListItem>
                            <asp:ListItem Value="CO">CO</asp:ListItem>
                            <asp:ListItem Value="CT">CT</asp:ListItem>
                            <asp:ListItem Value="DC">DC</asp:ListItem>
                            <asp:ListItem Value="DE">DE</asp:ListItem>
                            <asp:ListItem Value="FL">FL</asp:ListItem>
                            <asp:ListItem Value="GA">GA</asp:ListItem>
                            <asp:ListItem Value="HI">HI</asp:ListItem>
                            <asp:ListItem Value="ID">ID</asp:ListItem>
                            <asp:ListItem Value="IL">IL</asp:ListItem>
                            <asp:ListItem Value="IN">IN</asp:ListItem>
                            <asp:ListItem Value="IA">IA</asp:ListItem>
                            <asp:ListItem Value="KS">KS</asp:ListItem>
                            <asp:ListItem Value="KY">KY</asp:ListItem>
                            <asp:ListItem Value="LA">LA</asp:ListItem>
                            <asp:ListItem Value="ME">ME</asp:ListItem>
                            <asp:ListItem Value="MD">MD</asp:ListItem>
                            <asp:ListItem Value="MA">MA</asp:ListItem>
                            <asp:ListItem Value="MI">MI</asp:ListItem>
                            <asp:ListItem Value="MN">MN</asp:ListItem>
                            <asp:ListItem Value="MS">MS</asp:ListItem>
                            <asp:ListItem Value="MO">MO</asp:ListItem>
                            <asp:ListItem Value="MT">MT</asp:ListItem>
                            <asp:ListItem Value="NE">NE</asp:ListItem>
                            <asp:ListItem Value="NV">NV</asp:ListItem>
                            <asp:ListItem Value="NH">NH</asp:ListItem>
                            <asp:ListItem Value="NJ">NJ</asp:ListItem>
                            <asp:ListItem Value="NM">NM</asp:ListItem>
                            <asp:ListItem Value="NY">NY</asp:ListItem>
                            <asp:ListItem Value="NC">NC</asp:ListItem>
                            <asp:ListItem Value="ND">ND</asp:ListItem>
                            <asp:ListItem Value="OH">OH</asp:ListItem>
                            <asp:ListItem Value="OK">OK</asp:ListItem>
                            <asp:ListItem Value="OR">OR</asp:ListItem>
                            <asp:ListItem Value="PA">PA</asp:ListItem>
                            <asp:ListItem Value="RI">RI</asp:ListItem>
                            <asp:ListItem Value="SC">SC</asp:ListItem>
                            <asp:ListItem Value="SD">SD</asp:ListItem>
                            <asp:ListItem Value="TN">TN</asp:ListItem>
                            <asp:ListItem Value="TX">TX</asp:ListItem>
                            <asp:ListItem Value="UT">UT</asp:ListItem>
                            <asp:ListItem Value="VT">VT</asp:ListItem>
                            <asp:ListItem Value="VA">VA</asp:ListItem>
                            <asp:ListItem Value="WA">WA</asp:ListItem>
                            <asp:ListItem Value="WV">WV</asp:ListItem>
                            <asp:ListItem Value="WI">WI</asp:ListItem>
                            <asp:ListItem Value="WY">WY</asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label Text="Zip Code * (E.g. 77539)" runat="server">
                        </asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label Text="Phone (E.g. (281) 467-9581)" runat="server" Enabled="false">
                        </asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:TextBox ID="txtZip" runat="server" Enabled="false"></asp:TextBox>

                        <br />
                         <asp:RequiredFieldValidator ID="ReqFldVal_Zip" runat="server"
                            ControlToValidate="txtZip"
                            Font-Name="'Arial Narrow'"
                            ForeColor="Red"
                            Font-Size="Medium"
                            ErrorMessage="Zip code field is required.">
                        </asp:RequiredFieldValidator>

                        <br />

                        <asp:RegularExpressionValidator ID="RegExpVal_Zip" runat="server"
                            ControlToValidate="txtZip"
                            Font-Name="'Arial Narrow'"
                            ForeColor="Red"
                            Font-Size="Medium"
                            ErrorMessage="Not a valid zip code"
                            ValidationExpression="^(\d{5}-\d{4}|\d{5}|\d{9})$|^([a-zA-Z]\d[a-zA-Z] \d[a-zA-Z]\d)$">
                        </asp:RegularExpressionValidator>


                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtPhone" runat="server" Enabled="false"></asp:TextBox>

                        <br />

                        <asp:RegularExpressionValidator ID="RegExpVal_Phone" runat="server"
                            ControlToValidate="txtPhone"
                            ForeColor="Red"
                            Font-Name="'Arial Narrow'"
                            Font-Size="Medium"
                            ErrorMessage="Not a valid phone number."
                            ValidationExpression="^(\([2-9]|[2-9])(\d{2}|\d{2}\))(-|.|\s)?\d{3}(-|.|\s)?\d{4}$">
                        </asp:RegularExpressionValidator>

                    </asp:TableCell>
                </asp:TableRow>


                <asp:TableRow>
                    <asp:TableCell ColumnSpan="2">
                        <asp:Button runat="server" ID="btnSubmit" Style="height: 35px" Text="Submit" OnClick="btnSubmit_Click" CssClass="Button" Enabled="false" />
                    </asp:TableCell>
                </asp:TableRow>

            </asp:Table>

        </div>
    </form>
</body>
</html>

