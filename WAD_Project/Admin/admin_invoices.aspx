<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="admin_invoices.aspx.cs" Inherits="Admin_admin_invoices" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>

        <div>
            All Invoices<br />
            <br />
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="pack_ID" 
                DataSourceID="SqlDataSource1">
                <AlternatingItemTemplate>
                    <tr style="background-color: #FAFAD2;color: #284775;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                                Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="pack_IDLabel" runat="server" Text='<%# Eval("pack_ID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="pack_priceLabel" runat="server" 
                                Text='<%# Eval("pack_price") %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="pack_shirtCheckBox" runat="server" 
                                Checked='<%# Eval("pack_shirt") %>' Enabled="false" />
                        </td>
                        <td>
                            <asp:Label ID="shirt_sizeLabel" runat="server" 
                                Text='<%# Eval("shirt_size") %>' />
                        </td>
                        <td>
                            <asp:Label ID="pack_foodLabel" runat="server" 
                                Text='<%# Eval("pack_food") %>' />
                        </td>
                        <td>
                            <asp:Label ID="pack_discountLabel" runat="server" 
                                Text='<%# Eval("pack_discount") %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="pack_medalCheckBox" runat="server" 
                                Checked='<%# Eval("pack_medal") %>' Enabled="false" />
                        </td>
                        <td>
                            <asp:Label ID="pack_categoryLabel" runat="server" 
                                Text='<%# Eval("pack_category") %>' />
                        </td>
                        <td>
                            <asp:Label ID="pack_recieptLabel" runat="server" 
                                Text='<%# Eval("pack_reciept") %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="pack_capCheckBox" runat="server" 
                                Checked='<%# Eval("pack_cap") %>' Enabled="false" />
                        </td>
                        <td>
                            <asp:CheckBox ID="pack_bagCheckBox" runat="server" 
                                Checked='<%# Eval("pack_bag") %>' Enabled="false" />
                        </td>
                        <td>
                            <asp:Label ID="part_IDLabel" runat="server" Text='<%# Eval("part_ID") %>' />
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
                            <asp:Label ID="pack_IDLabel1" runat="server" Text='<%# Eval("pack_ID") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="pack_priceTextBox" runat="server" 
                                Text='<%# Bind("pack_price") %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="pack_shirtCheckBox" runat="server" 
                                Checked='<%# Bind("pack_shirt") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="shirt_sizeTextBox" runat="server" 
                                Text='<%# Bind("shirt_size") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="pack_foodTextBox" runat="server" 
                                Text='<%# Bind("pack_food") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="pack_discountTextBox" runat="server" 
                                Text='<%# Bind("pack_discount") %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="pack_medalCheckBox" runat="server" 
                                Checked='<%# Bind("pack_medal") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="pack_categoryTextBox" runat="server" 
                                Text='<%# Bind("pack_category") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="pack_recieptTextBox" runat="server" 
                                Text='<%# Bind("pack_reciept") %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="pack_capCheckBox" runat="server" 
                                Checked='<%# Bind("pack_cap") %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="pack_bagCheckBox" runat="server" 
                                Checked='<%# Bind("pack_bag") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="part_IDTextBox" runat="server" Text='<%# Bind("part_ID") %>' />
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
                            <asp:TextBox ID="pack_priceTextBox" runat="server" 
                                Text='<%# Bind("pack_price") %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="pack_shirtCheckBox" runat="server" 
                                Checked='<%# Bind("pack_shirt") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="shirt_sizeTextBox" runat="server" 
                                Text='<%# Bind("shirt_size") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="pack_foodTextBox" runat="server" 
                                Text='<%# Bind("pack_food") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="pack_discountTextBox" runat="server" 
                                Text='<%# Bind("pack_discount") %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="pack_medalCheckBox" runat="server" 
                                Checked='<%# Bind("pack_medal") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="pack_categoryTextBox" runat="server" 
                                Text='<%# Bind("pack_category") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="pack_recieptTextBox" runat="server" 
                                Text='<%# Bind("pack_reciept") %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="pack_capCheckBox" runat="server" 
                                Checked='<%# Bind("pack_cap") %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="pack_bagCheckBox" runat="server" 
                                Checked='<%# Bind("pack_bag") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="part_IDTextBox" runat="server" Text='<%# Bind("part_ID") %>' />
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
                            <asp:Label ID="pack_IDLabel" runat="server" Text='<%# Eval("pack_ID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="pack_priceLabel" runat="server" 
                                Text='<%# Eval("pack_price") %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="pack_shirtCheckBox" runat="server" 
                                Checked='<%# Eval("pack_shirt") %>' Enabled="false" />
                        </td>
                        <td>
                            <asp:Label ID="shirt_sizeLabel" runat="server" 
                                Text='<%# Eval("shirt_size") %>' />
                        </td>
                        <td>
                            <asp:Label ID="pack_foodLabel" runat="server" 
                                Text='<%# Eval("pack_food") %>' />
                        </td>
                        <td>
                            <asp:Label ID="pack_discountLabel" runat="server" 
                                Text='<%# Eval("pack_discount") %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="pack_medalCheckBox" runat="server" 
                                Checked='<%# Eval("pack_medal") %>' Enabled="false" />
                        </td>
                        <td>
                            <asp:Label ID="pack_categoryLabel" runat="server" 
                                Text='<%# Eval("pack_category") %>' />
                        </td>
                        <td>
                            <asp:Label ID="pack_recieptLabel" runat="server" 
                                Text='<%# Eval("pack_reciept") %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="pack_capCheckBox" runat="server" 
                                Checked='<%# Eval("pack_cap") %>' Enabled="false" />
                        </td>
                        <td>
                            <asp:CheckBox ID="pack_bagCheckBox" runat="server" 
                                Checked='<%# Eval("pack_bag") %>' Enabled="false" />
                        </td>
                        <td>
                            <asp:Label ID="part_IDLabel" runat="server" Text='<%# Eval("part_ID") %>' />
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
                                            pack_ID</th>
                                        <th runat="server">
                                            pack_price</th>
                                        <th runat="server">
                                            pack_shirt</th>
                                        <th runat="server">
                                            shirt_size</th>
                                        <th runat="server">
                                            pack_food</th>
                                        <th runat="server">
                                            pack_discount</th>
                                        <th runat="server">
                                            pack_medal</th>
                                        <th runat="server">
                                            pack_category</th>
                                        <th runat="server">
                                            pack_reciept</th>
                                        <th runat="server">
                                            pack_cap</th>
                                        <th runat="server">
                                            pack_bag</th>
                                        <th runat="server">
                                            part_ID</th>
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
                            <asp:Label ID="pack_IDLabel" runat="server" Text='<%# Eval("pack_ID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="pack_priceLabel" runat="server" 
                                Text='<%# Eval("pack_price") %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="pack_shirtCheckBox" runat="server" 
                                Checked='<%# Eval("pack_shirt") %>' Enabled="false" />
                        </td>
                        <td>
                            <asp:Label ID="shirt_sizeLabel" runat="server" 
                                Text='<%# Eval("shirt_size") %>' />
                        </td>
                        <td>
                            <asp:Label ID="pack_foodLabel" runat="server" 
                                Text='<%# Eval("pack_food") %>' />
                        </td>
                        <td>
                            <asp:Label ID="pack_discountLabel" runat="server" 
                                Text='<%# Eval("pack_discount") %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="pack_medalCheckBox" runat="server" 
                                Checked='<%# Eval("pack_medal") %>' Enabled="false" />
                        </td>
                        <td>
                            <asp:Label ID="pack_categoryLabel" runat="server" 
                                Text='<%# Eval("pack_category") %>' />
                        </td>
                        <td>
                            <asp:Label ID="pack_recieptLabel" runat="server" 
                                Text='<%# Eval("pack_reciept") %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="pack_capCheckBox" runat="server" 
                                Checked='<%# Eval("pack_cap") %>' Enabled="false" />
                        </td>
                        <td>
                            <asp:CheckBox ID="pack_bagCheckBox" runat="server" 
                                Checked='<%# Eval("pack_bag") %>' Enabled="false" />
                        </td>
                        <td>
                            <asp:Label ID="part_IDLabel" runat="server" Text='<%# Eval("part_ID") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:dbtestConnectionString %>" 
                SelectCommand="SELECT * FROM [PACKAGE]" 
                DeleteCommand="DELETE FROM [PACKAGE] WHERE [pack_ID] = @pack_ID" 
                InsertCommand="INSERT INTO [PACKAGE] ([pack_price], [pack_shirt], [shirt_size], [pack_food], [pack_discount], [pack_medal], [pack_category], [pack_reciept], [pack_cap], [pack_bag], [part_ID]) VALUES (@pack_price, @pack_shirt, @shirt_size, @pack_food, @pack_discount, @pack_medal, @pack_category, @pack_reciept, @pack_cap, @pack_bag, @part_ID)" 
                UpdateCommand="UPDATE [PACKAGE] SET [pack_price] = @pack_price, [pack_shirt] = @pack_shirt, [shirt_size] = @shirt_size, [pack_food] = @pack_food, [pack_discount] = @pack_discount, [pack_medal] = @pack_medal, [pack_category] = @pack_category, [pack_reciept] = @pack_reciept, [pack_cap] = @pack_cap, [pack_bag] = @pack_bag, [part_ID] = @part_ID WHERE [pack_ID] = @pack_ID">
                <DeleteParameters>
                    <asp:Parameter Name="pack_ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="pack_price" Type="Int32" />
                    <asp:Parameter Name="pack_shirt" Type="Boolean" />
                    <asp:Parameter Name="shirt_size" Type="String" />
                    <asp:Parameter Name="pack_food" Type="String" />
                    <asp:Parameter Name="pack_discount" Type="Int32" />
                    <asp:Parameter Name="pack_medal" Type="Boolean" />
                    <asp:Parameter Name="pack_category" Type="String" />
                    <asp:Parameter Name="pack_reciept" Type="String" />
                    <asp:Parameter Name="pack_cap" Type="Boolean" />
                    <asp:Parameter Name="pack_bag" Type="Boolean" />
                    <asp:Parameter Name="part_ID" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="pack_price" Type="Int32" />
                    <asp:Parameter Name="pack_shirt" Type="Boolean" />
                    <asp:Parameter Name="shirt_size" Type="String" />
                    <asp:Parameter Name="pack_food" Type="String" />
                    <asp:Parameter Name="pack_discount" Type="Int32" />
                    <asp:Parameter Name="pack_medal" Type="Boolean" />
                    <asp:Parameter Name="pack_category" Type="String" />
                    <asp:Parameter Name="pack_reciept" Type="String" />
                    <asp:Parameter Name="pack_cap" Type="Boolean" />
                    <asp:Parameter Name="pack_bag" Type="Boolean" />
                    <asp:Parameter Name="part_ID" Type="Int32" />
                    <asp:Parameter Name="pack_ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>


    </div>

    </div>
</asp:Content>

