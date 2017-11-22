<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="admin_main.aspx.cs" Inherits="Admin_admin_main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:dbtestConnectionString %>" 
            DeleteCommand="DELETE FROM [ADMIN] WHERE [username] = @username" 
            InsertCommand="INSERT INTO [ADMIN] ([username], [password], [name]) VALUES (@username, @password, @name)" 
            SelectCommand="SELECT * FROM [ADMIN] WHERE ([name] = @name)" 
            
            UpdateCommand="UPDATE [ADMIN] SET [password] = @password, [name] = @name WHERE [username] = @username">
        <DeleteParameters>
            <asp:Parameter Name="username" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="name" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter DefaultValue="&quot; &quot;" Name="name" 
                    SessionField="name" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="username" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />Your Information :<br />
    <br />
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="username" 
            DataSourceID="SqlDataSource1">
        <EditItemTemplate>
                username:
                <asp:Label ID="usernameLabel1" runat="server" Text='<%# Eval("username") %>' />
            <br />
                password:
                <asp:TextBox ID="passwordTextBox" runat="server" 
                    Text='<%# Bind("password") %>' />
            <br />
                name:
                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
                username:
                <asp:TextBox ID="usernameTextBox" runat="server" 
                    Text='<%# Bind("username") %>' />
            <br />
                password:
                <asp:TextBox ID="passwordTextBox0" runat="server" 
                    Text='<%# Bind("password") %>' />
            <br />
                name:
                <asp:TextBox ID="nameTextBox0" runat="server" Text='<%# Bind("name") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
                username:
                <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' />
            <br />
                password:
                <asp:Label ID="passwordLabel" runat="server" Text='<%# Bind("password") %>' />
            <br />
                name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                    CommandName="Edit" Text="Edit" />
        </ItemTemplate>
    </asp:FormView>
</div>
</asp:Content>

