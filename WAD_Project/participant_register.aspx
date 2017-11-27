<%@ Page Title="" Language="C#" MasterPageFile="~/participant.master" AutoEventWireup="true" CodeFile="participant_register.aspx.cs" Inherits="participant_register" %>

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
    <h1>
        <br />
        Participant&#39;s Registration</h1>
        <p>
            &nbsp;</p>
        <h2>
        Personal Info</h2>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
            <p>
            &nbsp;</p>
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
    <h2>Package Info</h2><br />
    <table border="1" align="center">
            <tr><td class="style21" bgcolor="White">Category</td><td class="style20" 
                    bgcolor="White">Distance</td>
                <td class="style44" bgcolor="White">Price</td></tr>
            <tr><td class="style13" rowspan="2" bgcolor="#FFCC66"><span class="style46">Kid Superhero</span><br 
                    class="style46" />
                <span class="style46">Age 5 - 12 years old</span></td><td class="style16" 
                    bgcolor="#FFCC66">
                    <asp:RadioButton ID="rb3km" runat="server" GroupName="rbGroupDistance" 
                    Text="3" />
                    <span class="style46">&nbsp;km</span><br class="style46" />
                </td><td class="style15" bgcolor="#FFCC66"><span class="style46">RM25</span><br 
                        class="style46" />
                    <span class="style46">***includes wristband and certificate</span></td></tr>
            <tr><td class="style47" bgcolor="#FFCC66">
                <asp:RadioButton ID="rb5km" runat="server" GroupName="rbGroupDistance" 
                    Text="5" />
                &nbsp;km</td><td class="style15" 
                    bgcolor="#FFCC66"><span class="style46">RM25</span><br class="style46" />
                <span class="style46">***includes wristband and certificate</span></td></tr>
            <tr><td class="style13" rowspan="2" bgcolor="#FF6600"><span class="style46">Adult Superhero</span><br 
                    class="style46" />
                <span class="style46">Age 13 - 45 years old</span></td><td class="style47" 
                    bgcolor="#FF6600">
                <asp:RadioButton ID="rb10km" runat="server" GroupName="rbGroupDistance" 
                    Text="10" />
                &nbsp;km</td>
                <td class="style15" bgcolor="#FF6600"><span class="style46">RM40</span><br 
                        class="style46" />
                    <span class="style46">***includes wristband and certificate</span></td></tr>
            <tr><td class="style17" bgcolor="#FF6600">
                <asp:RadioButton ID="rb15km" runat="server" GroupName="rbGroupDistance" 
                    Text="15" />
    &nbsp;km</td>
                <td class="style18" 
                    bgcolor="#FF6600"><span class="style46">RM40</span><br class="style46" />
                    <span class="style46">***includes wristband and certificate</span></td></tr>
            
            </table>
    <br />
    <h2>Add-Ons (5% on Children)</h2><br />
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
                20</td>
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
                20</td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="chckCap" runat="server" Text="Cap" />
            </td>
            <td>
                10</td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="chckBag" runat="server" Text="Bag" />
            </td>
            <td>
                30</td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="chckBfast" runat="server" Text="Breakfast Set" />
            </td>
            <td>
                10</td>
        </tr>
    </table>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        &nbsp;&nbsp;

    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
                <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
        Text="Submit" />
            <br />
            <br />
            <br />
            <asp:UpdateProgress ID="UpdateProgress1" runat="server" DisplayAfter="0" 
                    DynamicLayout="true" ImageAlign="AbsMiddle" 
                    AssociatedUpdatePanelID="UpdatePanel1">
                <ProgressTemplate>
                    Processing<img alt="" class="style3"  src="o44oO.gif" style="width: 118px; height: 91px" />
                    Your Form
                </ProgressTemplate>
            </asp:UpdateProgress>
        </ContentTemplate>
    </asp:UpdatePanel>
        <br />
        <asp:Button ID="btnCancel" runat="server" CausesValidation="False" 
            onclick="btnCancel_Click" Text="Cancel" />

    <br />
    <br />
    <asp:Label ID="lblTest" runat="server"></asp:Label>
</div>
</asp:Content>