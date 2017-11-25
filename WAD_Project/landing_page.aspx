<%@ Page Language="C#" AutoEventWireup="true" CodeFile="landing_page.aspx.cs" Inherits="landing_page" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 30%;
        }
        #bg1 
        {
            background-image: url('landing-bg1.jpg');
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
    
            <table class="style1">
                <tr>
                    <td>
                        <table class="style1">
                            <tr>
                                <td class="style1" id="bg1">
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:dbtestConnectionString %>" 
                                        SelectCommand="SELECT [username], [password] FROM [ADMIN]">
                                    </asp:SqlDataSource>
                                </td>
                                <td>
                                    <table class="style1">
                                        <tr>
                                            <td class="style2">
                                                </td>
                                            <td class="style2">
                                                Username:</td>
                                            <td class="style2">
                                                </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                Password:</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                            <td style="margin-left: 80px">
                                                <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                            <td style="margin-left: 80px">
                                                <asp:Button ID="btnLogin" runat="server" Text="Login" 
                                                    onclick="btnLogin_Click" />
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                            <td style="margin-left: 80px">
                                                <asp:Label ID="lblResponse" runat="server"></asp:Label>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table class="style1">
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td class="style2">
                                    &nbsp;</td>
                                <td class="style2">
                                    &nbsp;&nbsp;</td>
                                <td class="style2">
                                    &nbsp;&nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
    
        </div>
    </form>
</body>
</html>
