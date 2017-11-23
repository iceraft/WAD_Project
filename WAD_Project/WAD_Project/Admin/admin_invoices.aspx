<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="admin_invoices.aspx.cs" Inherits="Admin_admin_invoices" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>

        <div>
            All Invoices<br />
            <br />
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="part_ID" 
                DataSourceID="SqlDataSource1">
                <AlternatingItemTemplate>
                    <tr style="background-color: #FAFAD2;color: #284775;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                                Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
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
                    <tr style="background-color: #FFCC66;color: #000080;">
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
                            <asp:CheckBox ID="part_paidCheckBox" runat="server" 
                                Checked='<%# Bind("part_paid") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" 
                        style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
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
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                Text="Clear" />
                        </td>
                        <td>
                            &nbsp;</td>
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
                            <asp:CheckBox ID="part_paidCheckBox" runat="server" 
                                Checked='<%# Bind("part_paid") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color: #FFFBD6;color: #333333;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                                Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
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
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table ID="itemPlaceholderContainer" runat="server" border="1" 
                                    style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color: #FFFBD6;color: #333333;">
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
                                    <tr ID="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" 
                                style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
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
                    <tr style="background-color: #FFCC66;font-weight: bold;color: #000080;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                                Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
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
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:dbtestConnectionString %>" 
                DeleteCommand="DELETE FROM [PARTICIPANT] WHERE [part_ID] = @part_ID" 
                InsertCommand="INSERT INTO [PARTICIPANT] ([part_icno], [part_name], [part_email], [part_phoneno], [part_paid]) VALUES (@part_icno, @part_name, @part_email, @part_phoneno, @part_paid)" 
                SelectCommand="SELECT * FROM [PARTICIPANT] WHERE ([part_paid] IS NULL)" 
                UpdateCommand="UPDATE [PARTICIPANT] SET [part_icno] = @part_icno, [part_name] = @part_name, [part_email] = @part_email, [part_phoneno] = @part_phoneno, [part_paid] = @part_paid WHERE [part_ID] = @part_ID">
                <DeleteParameters>
                    <asp:Parameter Name="part_ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="part_icno" Type="String" />
                    <asp:Parameter Name="part_name" Type="String" />
                    <asp:Parameter Name="part_email" Type="String" />
                    <asp:Parameter Name="part_phoneno" Type="String" />
                    <asp:Parameter Name="part_paid" Type="Boolean" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="part_icno" Type="String" />
                    <asp:Parameter Name="part_name" Type="String" />
                    <asp:Parameter Name="part_email" Type="String" />
                    <asp:Parameter Name="part_phoneno" Type="String" />
                    <asp:Parameter Name="part_paid" Type="Boolean" />
                    <asp:Parameter Name="part_ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>


    </div>

    </div>
</asp:Content>

