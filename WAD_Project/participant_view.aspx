﻿<%@ Page Title="" Language="C#" MasterPageFile="~/participant.master" AutoEventWireup="true" CodeFile="participant_view.aspx.cs" Inherits="participant_view" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1
        {
            width: 100%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="main">
<div class="main">
    <h1>
        <br />
        Participant&#39;s Registration</h1>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <h2>
        Personal Info</h2>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <table class="style1">
        <tr>
            <td>
                Full Name :</td>
            <td>
                <asp:Label ID="lblName" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <!--<td>
                Age</td>
            <td>
                <asp:Label ID="lblAge" runat="server"></asp:Label>
            </td>-->
        </tr>
        <tr>
            <td>
                I/C</td>
            <td>
                <asp:Label ID="lblIC" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Contact Number</td>
            <td>
                <asp:Label ID="lblNumber" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Email Address</td>
            <td>
                <asp:Label ID="lblEmail" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <h2>Package Info</h2>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <table border="1" align="center">
            <tr><td class="style21" bgcolor="White">Category</td><td class="style20" 
                    bgcolor="White">Distance(KM)</td>
                <td class="style44" bgcolor="White">Price</td></tr>
            <tr><td class="style21" bgcolor="#FFCC66"><asp:Label ID="lblCatg" runat="server"></asp:Label></td><td class="style20" 
                    bgcolor="#FFCC66"><asp:Label ID="lblCatDist" runat="server"></asp:Label></td>
                <td class="style44" bgcolor="#FFCC66"><asp:Label ID="lblCatPrice" runat="server"></asp:Label></td></tr>
    </table>
    
    <h2>Add-Ons</h2>
    <br />
    <br />
    <asp:Label ID="lblAddons" runat="server"></asp:Label>
    <h2>Pricing</h2>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    Discount applied: RM<asp:Label ID="lblDiscount" runat="server"></asp:Label>
    <br />
    Total Amt to pay : RM<asp:Label ID="lblTotal" runat="server"></asp:Label>
    <br />
    <asp:Label ID="lblTest" runat="server"></asp:Label>
    <br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <asp:Button ID="btnPay" runat="server" Text="Paynow?" onclick="btnPay_Click" />
            <br />
            <br />
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:FileUpload ID="fuReciept" runat="server" Visible="False" />
            <br />
            <br />
            <asp:Button ID="btnUpload" runat="server" onclick="tnUpload_Click" 
                Text="Upload Reciept" Visible="False" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnCancel" runat="server" onclick="btnCancel_Click" 
                Text="Cancel" Visible="False" />
            <br />
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Button ID="lblDone" runat="server" onclick="lblDone_Click" Text="Done" />
    <br />
</div>
    </div>
</asp:Content>

