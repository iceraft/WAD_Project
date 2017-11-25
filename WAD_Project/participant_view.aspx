<%@ Page Title="" Language="C#" MasterPageFile="~/participant.master" AutoEventWireup="true" CodeFile="participant_view.aspx.cs" Inherits="participant_view" %>

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
    <h2>
        Personal Info</h2>
    <table class="style1">
        <tr>
            <td>
                Full Name :</td>
            <td>
                <asp:Label ID="lblName" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Age</td>
            <td>
                <asp:Label ID="lblAge" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                I/C</td>
            <td>
                <asp:Label ID="lblIC" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Contact Number</td>
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
    <asp:Label ID="lblPackage" runat="server"></asp:Label>
    <h2>Add-Ons</h2>
    <asp:Label ID="lblAddons" runat="server"></asp:Label>
    <h2>Total</h2>
    <asp:Label ID="lblTotal" runat="server"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label1" runat="server"></asp:Label>
</div>
    </div>
</asp:Content>

