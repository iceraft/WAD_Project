<%@ Page Title="" Language="C#" MasterPageFile="~/participant.master" AutoEventWireup="true" CodeFile="participant_register.aspx.cs" Inherits="participant_register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        Participant&#39;s Registration</p>
    <p>
        Personal Info</p>
    <table class="style1">
        <tr>
            <td>
                Full Name :</td>
            <td>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtName" ErrorMessage="Name is Required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Age</td>
            <td>
                <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtAge" ErrorMessage="Age is Required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                I/C</td>
            <td>
                <asp:TextBox ID="txtIC" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtIC" ErrorMessage="IC is Required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Contact Number</td>
            <td>
                <asp:TextBox ID="txtNum" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtNum" ErrorMessage="Contact Number is Required" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Email Address</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="Email is Required" 
                    ForeColor="#FF3300" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
    </table>
    <br />
    Package Info<br />
    <table class="style1">
        <tr>
            <td>
                Package</td>
            <td>
                Distance</td>
            <td>
                Price</td>
        </tr>
        <tr>
            <td rowspan="2">
                Children</td>
            <td>
                <asp:RadioButton ID="rb3km" runat="server" GroupName="rbGroupDistance" 
                    Text="3" />
&nbsp;KM</td>
            <td>
                3</td>
        </tr>
        <tr>
            <td>
                <asp:RadioButton ID="rb5km" runat="server" GroupName="rbGroupDistance" 
                    Text="5" />
&nbsp;KM</td>
            <td>
                5</td>
        </tr>
        <tr>
            <td rowspan="2">
                Adult</td>
            <td class="style2">
                <asp:RadioButton ID="rb10km" runat="server" GroupName="rbGroupDistance" 
                    Text="10" />
&nbsp;KM</td>
            <td class="style2">
                10</td>
        </tr>
        <tr>
            <td>
                <asp:RadioButton ID="rb15km" runat="server" GroupName="rbGroupDistance" 
                    Text="15" />
&nbsp;KM</td>
            <td>
                15</td>
        </tr>
    </table>
    <br />
    Add-Ons<br />
    <table class="style1">
        <tr>
            <td>
                Item Name</td>
            <td>
                Price</td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="chckMedal" runat="server" Text="Medal" />
            </td>
            <td>
                1</td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="chckTshirt" runat="server" AutoPostBack="True" 
                    oncheckedchanged="chckTshirt_CheckedChanged" Text="T-Shirt" />
&nbsp;
                <asp:Label ID="lblSize" runat="server" Text=" Size : " Visible="False"></asp:Label>
                <asp:DropDownList ID="ddlSize" runat="server" Visible="False">
                    <asp:ListItem>Choose Size</asp:ListItem>
                    <asp:ListItem>S</asp:ListItem>
                    <asp:ListItem>M</asp:ListItem>
                    <asp:ListItem>L</asp:ListItem>
                    <asp:ListItem>XL</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                1</td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="chckCap" runat="server" Text="Cap" />
            </td>
            <td>
                1</td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="chckBag" runat="server" Text="Bag" />
            </td>
            <td>
                1</td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="chckBfast" runat="server" Text="Breakfast Set" />
            </td>
            <td>
                1</td>
        </tr>
    </table>
    <br />
    <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
        Text="Submit" />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server"></asp:Label>
</asp:Content>

