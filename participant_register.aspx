<%@ Page Title="" Language="C#" MasterPageFile="~/participant.master" AutoEventWireup="true" CodeFile="participant_register.aspx.cs" Inherits="participant_register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style31
    {
        width: 300px;
        color: #000000;
        font-size: large;
    }
    .style32
    {
        width: 202px;
        color: #000000;
    }
    .style34
    {
        width: 281px;
        text-align: left;
        font-style: italic;
    }
    .style35
    {
        width: 243px;
        text-align: right;
        color: #000000;
        font-family: "Arial Unicode MS";
    }
    .style36
    {
        font-family: "Bell MT";
    }
    .style37
    {
        width: 195px;
    }
    .style38
    {
        color: #000000;
    }
    .style39
    {
        color: #FEFFFF;
        font-family: Candara;
    }
    .style40
    {
        width: 300px;
        font-weight: bold;
        font-size: large;
    }
    .style41
    {
        width: 202px;
        font-weight: bold;
        font-size: large;
    }
    .style42
    {
        font-family: Candara;
    }
    .style43
    {
        color: #000000;
        font-family: Candara;
        font-size: large;
    }
    .style45
    {
        font-size: large;
    }
    .style46
    {
        color: #000000;
        font-size: large;
    }
    .style47
    {
        font-family: Candara;
        font-size: large;
    }
    .style48
    {
        font-size: large;
        font-weight: normal;
    }
    .style49
    {
        color: #000000;
        font-size: large;
        font-weight: normal;
    }
    .style51
    {
        font-weight: bold;
    }
    .style52
    {
        color: #000000;
        font-size: large;
    }
    .style53
    {
        font-size: large;
        font-weight: bold;
    }
    .style54
    {
        font-family: Candara;
        font-size: large;
        font-weight: bold;
    }
    .style55
    {
        width: 202px;
        color: #000000;
        font-family: Candara;
        font-size: large;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="main">
    <h1>
        <br />
        Participant&#39;s Registration</h1>
    <h2>
        Personal Info</h2>
        <table style="width: 631px">
            <tr><td class="style35">Full Name :&nbsp;&nbsp; </td><td class="style37">
                <asp:TextBox ID="txtName" runat="server" Width="172px"></asp:TextBox>
                </td><td class="style34">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtName" ErrorMessage="***Name is Required" 
                        ForeColor="#FF3300" CssClass="style36"></asp:RequiredFieldValidator>
                </td>
            
            </tr>
        <p>
            
            <tr><td class="style35">Age:&nbsp;&nbsp; </td><td class="style37">
                <asp:TextBox ID="txtAge" runat="server" Width="172px"></asp:TextBox>
                </td><td class="style34">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtAge" ErrorMessage="***Age is Required" 
                        ForeColor="#FF3300" CssClass="style36"></asp:RequiredFieldValidator>
                </td>
            
            </tr>
            <tr><td class="style35">I/C:&nbsp;&nbsp; </td><td class="style37">
                <asp:TextBox ID="txtIC" runat="server" Width="170px"></asp:TextBox>
                </td><td class="style34">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtIC" ErrorMessage="***IC is Required" ForeColor="#FF3300" 
                        CssClass="style36"></asp:RequiredFieldValidator>
                </td>
            
            </tr>
            <tr><td class="style35">Contact Number:&nbsp;&nbsp; </td><td class="style37">
                <asp:TextBox ID="txtNum" runat="server" Width="170px"></asp:TextBox>
                </td><td class="style34">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtNum" ErrorMessage="***Contact Number is Required" 
                    ForeColor="#FF3300" CssClass="style36"></asp:RequiredFieldValidator>
                </td>
            
            </tr>
            <tr><td class="style35">Email Address:<br />
                (optional)&nbsp;&nbsp; </td><td class="style37">
                <asp:TextBox ID="txtEmail" runat="server" Width="167px"></asp:TextBox>
                </td><td class="style34">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="***Email is Required" 
                    ForeColor="#FF3300" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        CssClass="style36"></asp:RegularExpressionValidator>
                </td>
            
            </tr>
                    
            </table>&nbsp;<br />
    <h2>Package Info</h2>
    
    <br />
    <table style="width: 458px" border="1"><tr class="style38"><td class="style54">Category</td>
        <td class="style53"><span class="style42">Distance</td><td class="style53">Price</span></td></tr><tr>
        <td rowspan="2" bgcolor="Yellow" class="style43"><span class="style49">Kid Superhero</span><span 
                class="style51"><br 
                    class="style52" />
                </span>
                <span class="style49">Age 5 - 12 years old</span></td>
        <td bgcolor="Yellow" class="style38">
                    <asp:RadioButton ID="rb3km" runat="server" GroupName="rbGroupDistance" 
                    Text="3" CssClass="style47" />
                    <span class="style42"><span class="style45">km</span></td>
        <td bgcolor="Yellow"><span class="style52">RM25</span><br 
                        class="style52" />
                    <span class="style52">***includes wristband and certificate</span></span></td></tr>
        <tr class="style42"><td bgcolor="Yellow" class="style52">
                <asp:RadioButton ID="rb5km" runat="server" GroupName="rbGroupDistance" 
                    Text="5" CssClass="style46" />
                <span class="style38"><span class="style48">km</span></td>
            <td bgcolor="Yellow"><span class="style52">RM25</span><br class="style52" />
                <span class="style52">***includes wristband and certificate</span></span></td></tr><tr>
            <td rowspan="2" bgcolor="#99CCFF" class="style43"><span class="style49">Adult Superhero</span><span 
                    class="style51"><br 
                    class="style52" />
                </span>
                <span class="style49">Age 13 - 45 years old</span></td>
            <td bgcolor="#99CCFF" class="style38">
                <asp:RadioButton ID="rb10km" runat="server" GroupName="rbGroupDistance" 
                    Text="10" CssClass="style47" />
                <span class="style42"><span class="style45">km</span></td>
            <td bgcolor="#99CCFF"><span class="style52">RM40</span><br 
                        class="style52" />
                    <span class="style52">***includes wristband and certificate</span></span></td></tr>
        <tr class="style42"><td bgcolor="#99CCFF" class="style52">
                <asp:RadioButton ID="rb15km" runat="server" GroupName="rbGroupDistance" 
                    Text="15" CssClass="style46" />
                <span class="style38"><span class="style48">km</span></td>
            <td bgcolor="#99CCFF"><span class="style45">RM40</span><br class="style45" />
                    <span class="style45">***includes wristband and certificate</span></span></td></tr></table>
    <br />
    <h2>Add-Ons</h2><br />
    <table border="1" cellpadding="0"><tr class="style42"><td class="style41">Item Name</td>
        <td class="style40">Price</td></tr><tr class="style39"><td bgcolor="#66CCFF" 
            class="style32">
                <asp:CheckBox ID="chckMedal" runat="server" Text="Medal" 
            CssClass="style45" />
            </td><td bgcolor="#66CCFF" class="style31">RM20</td></tr><tr>
        <td bgcolor="#66CCFF" class="style55"><span class="style38">
                <asp:CheckBox ID="chckTshirt" runat="server" AutoPostBack="True" 
                    oncheckedchanged="chckTshirt_CheckedChanged" Text="T-Shirt" 
                CssClass="style45" />
            <br class="style45" />
    <asp:Label ID="lblSize" runat="server" CssClass="style45">Size : </asp:Label>
            <span class="style45">&nbsp; </span></span>
                <asp:DropDownList ID="ddlSize" runat="server" Visible="False" 
                CssClass="style47">
                    <asp:ListItem>Choose Size</asp:ListItem>
                    <asp:ListItem>S</asp:ListItem>
                    <asp:ListItem>M</asp:ListItem>
                    <asp:ListItem>L</asp:ListItem>
                    <asp:ListItem>XL</asp:ListItem>
                </asp:DropDownList>
            <span class="style42">
            <br class="style46" />
        </td><td bgcolor="#66CCFF" class="style31">RM20</span></td></tr>
        <tr class="style39"><td bgcolor="#66CCFF" class="style32">
                <asp:CheckBox ID="chckCap" runat="server" Text="Cap" CssClass="style45" />
            </td><td bgcolor="#66CCFF" class="style31">RM10</td></tr>
        <tr class="style39"><td bgcolor="#66CCFF" class="style32">
                <asp:CheckBox ID="chckBag" runat="server" Text="Bag" CssClass="style45" />
            </td><td bgcolor="#66CCFF" class="style31">RM30</td></tr>
        <tr class="style39"><td bgcolor="#66CCFF" class="style32">
                <asp:CheckBox ID="chckBfast" runat="server" Text="Breakfast Set" 
                CssClass="style45" />
            </td><td bgcolor="#66CCFF" class="style31">RM10</td></tr></table>
    <br />
    <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
        Text="Submit" />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server"></asp:Label>
</div>
</asp:Content>