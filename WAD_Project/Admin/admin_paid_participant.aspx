<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="admin_paid_participant.aspx.cs" Inherits="Admin_admin_payed_participant" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        All paid participants<br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:dbtestConnectionString %>" 
            
            SelectCommand="SELECT * FROM [PARTICIPANT] WHERE ([part_paid] = @part_paid)">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="part_paid" Type="Boolean" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="part_ID" 
            DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                            Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="part_icnoLabel" runat="server" Text='<%# Eval("part_icno") %>' />
                    </td>
                    <td>
                        <asp:Label ID="part_nameLabel" runat="server" Text='<%# Eval("part_name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="part_emailLabel" runat="server" 
                            Text='<%# Eval("part_email") %>' />
                    </td>
                    <td>
                        <asp:Label ID="part_phonenoLabel" runat="server" 
                            Text='<%# Eval("part_phoneno") %>' />
                    </td>
                    <td>
                        <asp:Label ID="part_IDLabel" runat="server" Text='<%# Eval("part_ID") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                            Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                            Text="Cancel" />
                    </td>
                    <td>
                        <asp:TextBox ID="part_icnoTextBox" runat="server" 
                            Text='<%# Bind("part_icno") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="part_nameTextBox" runat="server" 
                            Text='<%# Bind("part_name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="part_emailTextBox" runat="server" 
                            Text='<%# Bind("part_email") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="part_phonenoTextBox" runat="server" 
                            Text='<%# Bind("part_phoneno") %>' />
                    </td>
                    <td>
                        <asp:Label ID="part_IDLabel1" runat="server" Text='<%# Eval("part_ID") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>
                            No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                            Text="Insert" />
                        <asp:Button ID="CancelButton0" runat="server" CommandName="Cancel" 
                            Text="Clear" />
                    </td>
                    <td>
                        <asp:TextBox ID="part_icnoTextBox0" runat="server" 
                            Text='<%# Bind("part_icno") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="part_nameTextBox0" runat="server" 
                            Text='<%# Bind("part_name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="part_emailTextBox0" runat="server" 
                            Text='<%# Bind("part_email") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="part_phonenoTextBox0" runat="server" 
                            Text='<%# Bind("part_phoneno") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="DeleteButton0" runat="server" CommandName="Delete" 
                            Text="Delete" />
                        <asp:Button ID="EditButton0" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="part_icnoLabel0" runat="server" 
                            Text='<%# Eval("part_icno") %>' />
                    </td>
                    <td>
                        <asp:Label ID="part_nameLabel0" runat="server" 
                            Text='<%# Eval("part_name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="part_emailLabel0" runat="server" 
                            Text='<%# Eval("part_email") %>' />
                    </td>
                    <td>
                        <asp:Label ID="part_phonenoLabel0" runat="server" 
                            Text='<%# Eval("part_phoneno") %>' />
                    </td>
                    <td>
                        <asp:Label ID="part_IDLabel2" runat="server" Text='<%# Eval("part_ID") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table ID="itemPlaceholderContainer" runat="server" border="0" style="">
                                <tr runat="server" style="">
                                    <th runat="server">
                                    </th>
                                    <th runat="server">
                                        part_icno</th>
                                    <th runat="server">
                                        part_name</th>
                                    <th runat="server">
                                        part_email</th>
                                    <th runat="server">
                                        part_phoneno</th>
                                    <th runat="server">
                                        part_ID</th>
                                </tr>
                                <tr ID="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                        ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    <asp:NumericPagerField />
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" 
                                        ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="DeleteButton1" runat="server" CommandName="Delete" 
                            Text="Delete" />
                        <asp:Button ID="EditButton1" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="part_icnoLabel1" runat="server" 
                            Text='<%# Eval("part_icno") %>' />
                    </td>
                    <td>
                        <asp:Label ID="part_nameLabel1" runat="server" 
                            Text='<%# Eval("part_name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="part_emailLabel1" runat="server" 
                            Text='<%# Eval("part_email") %>' />
                    </td>
                    <td>
                        <asp:Label ID="part_phonenoLabel1" runat="server" 
                            Text='<%# Eval("part_phoneno") %>' />
                    </td>
                    <td>
                        <asp:Label ID="part_IDLabel3" runat="server" Text='<%# Eval("part_ID") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>

