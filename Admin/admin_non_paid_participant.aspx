<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="admin_non_paid_participant.aspx.cs" Inherits="Admin_admin_non_payed_participant" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    All participants


        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:dbtestConnectionString %>" 
            
            SelectCommand="SELECT * FROM [PARTICIPANT] WHERE ([part_paid] = @part_paid)" 
            onselecting="SqlDataSource1_Selecting">
            <SelectParameters>
                <asp:Parameter DefaultValue="0" Name="part_paid" Type="Boolean" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="part_ID" 
            DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                            Text="Delete" />
                    </td>
                    <td>
                        <asp:Label ID="part_IDLabel" runat="server" Text='<%# Eval("part_ID") %>' />
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
                        <asp:CheckBox ID="part_paidCheckBox" runat="server" 
                            Checked='<%# Eval("part_paid") %>' Enabled="false" />
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
                        <asp:Label ID="part_IDLabel1" runat="server" Text='<%# Eval("part_ID") %>' />
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
                        <asp:CheckBox ID="part_paidCheckBox0" runat="server" 
                            Checked='<%# Bind("part_paid") %>' />
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
                        &nbsp;</td>
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
                        <asp:CheckBox ID="part_paidCheckBox1" runat="server" 
                            Checked='<%# Bind("part_paid") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="DeleteButton0" runat="server" CommandName="Delete" 
                            Text="Delete" />
                    </td>
                    <td>
                        <asp:Label ID="part_IDLabel2" runat="server" Text='<%# Eval("part_ID") %>' />
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
                        <asp:CheckBox ID="part_paidCheckBox2" runat="server" 
                            Checked='<%# Eval("part_paid") %>' Enabled="false" />
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
                                        part_ID</th>
                                    <th runat="server">
                                        part_icno</th>
                                    <th runat="server">
                                        part_name</th>
                                    <th runat="server">
                                        part_email</th>
                                    <th runat="server">
                                        part_phoneno</th>
                                    <th runat="server">
                                        part_paid</th>
                                </tr>
                                <tr runat="server" ID="itemPlaceholder">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                        ShowLastPageButton="True" />
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
                    </td>
                    <td>
                        <asp:Label ID="part_IDLabel3" runat="server" Text='<%# Eval("part_ID") %>' />
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
                        <asp:CheckBox ID="part_paidCheckBox3" runat="server" 
                            Checked='<%# Eval("part_paid") %>' Enabled="false" />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>

