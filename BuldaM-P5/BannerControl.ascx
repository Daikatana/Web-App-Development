<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BannerControl.ascx.cs" Inherits="BannerControl" %>

<div class="bannerContainer">
        <div class="bannerTitle">
          
            <asp:Label runat="server" id="companyName" CssClass="companyName"></asp:Label>
        
        </div>
        <!--This div tag ends bannerTitle-->
        <div class="businessContent">
            <!--Company description-->
            <div>
                <p id="businessDesc">
                <asp:Label runat="server" ID="bizDesc"></asp:Label>
                </p>
            </div>
        </div>
        <!--This div tag ends businessContent-->
    </div>
    <!--This div tag ends bannerContainer-->
    