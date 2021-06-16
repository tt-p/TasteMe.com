<%@ Page Title="" Language="C#" MasterPageFile="~/TasteMe.com/src/Master/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Bim308_FinalProject.TasteMe.com.src.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" runat="server">
    <div class="header-img-profile">
        <asp:Label CssClass="header-tittle" runat="server"> Profile </asp:Label>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <form id="form1" runat="server">
    <div class="container d-profile">
        
        <div class="container text-center">
            <h2>Profile Info</h2>
            <asp:Button ID="btnLogout" runat="server" Text="Logout" CssClass="btn" ForeColor="#E45D27" OnClick="btnLogout_Click" BorderColor="#E45D27" />
        </div>       
        <hr />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="u_id" DataSourceID="SqlDataSource1" DefaultMode="Edit" Width="100%">
            <EditItemTemplate>
                Name
                <asp:TextBox ID="u_nameTextBox" runat="server" CssClass="form-control" Text='<%# Bind("u_name") %>' />
                <br />
                Surname
                <asp:TextBox ID="u_surnameTextBox" runat="server" CssClass="form-control" Text='<%# Bind("u_surname") %>' />
                <br />
                Mail
                <asp:TextBox ID="u_mailTextBox" runat="server" CssClass="form-control" Text='<%# Bind("u_mail") %>' />
                <br />
                Password
                <asp:TextBox ID="u_passTextBox" runat="server" CssClass="form-control" Text='<%# Bind("u_pass") %>' />
                <br />
                Birth Date<asp:TextBox ID="u_birthTextBox" runat="server" CssClass="form-control" Text='<%# Bind("u_birth") %>' TextMode="Date" />
                <br />
                Telephone
                <asp:TextBox ID="u_telTextBox" runat="server" CssClass="form-control" Text='<%# Bind("u_tel") %>' TextMode="Number" />
                <br />
                Gender<asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Text='<%# Bind("u_gender") %>'></asp:TextBox>
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" BackColor="#E45D27" CausesValidation="True" CommandName="Update" CssClass="btn" ForeColor="White" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="btn btn-secondary" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                u_name:
                <asp:TextBox ID="u_nameTextBox" runat="server" Text='<%# Bind("u_name") %>' />
                <br />
                u_surname:
                <asp:TextBox ID="u_surnameTextBox" runat="server" Text='<%# Bind("u_surname") %>' />
                <br />
                u_mail:
                <asp:TextBox ID="u_mailTextBox" runat="server" Text='<%# Bind("u_mail") %>' />
                <br />
                u_pass:
                <asp:TextBox ID="u_passTextBox" runat="server" Text='<%# Bind("u_pass") %>' />
                <br />
                u_birth:
                <asp:TextBox ID="u_birthTextBox" runat="server" Text='<%# Bind("u_birth") %>' />
                <br />
                u_tel:
                <asp:TextBox ID="u_telTextBox" runat="server" Text='<%# Bind("u_tel") %>' />
                <br />
                u_gender:
                <asp:TextBox ID="u_genderTextBox" runat="server" Text='<%# Bind("u_gender") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                u_id:
                <asp:Label ID="u_idLabel" runat="server" Text='<%# Eval("u_id") %>' />
                <br />
                u_name:
                <asp:Label ID="u_nameLabel" runat="server" Text='<%# Bind("u_name") %>' />
                <br />
                u_surname:
                <asp:Label ID="u_surnameLabel" runat="server" Text='<%# Bind("u_surname") %>' />
                <br />
                u_mail:
                <asp:Label ID="u_mailLabel" runat="server" Text='<%# Bind("u_mail") %>' />
                <br />
                u_pass:
                <asp:Label ID="u_passLabel" runat="server" Text='<%# Bind("u_pass") %>' />
                <br />
                u_birth:
                <asp:Label ID="u_birthLabel" runat="server" Text='<%# Bind("u_birth") %>' />
                <br />
                u_tel:
                <asp:Label ID="u_telLabel" runat="server" Text='<%# Bind("u_tel") %>' />
                <br />
                u_gender:
                <asp:Label ID="u_genderLabel" runat="server" Text='<%# Bind("u_gender") %>' />
                <br />

            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr %>" DeleteCommand="DELETE FROM [users] WHERE [u_id] = ?" InsertCommand="INSERT INTO [users] ([u_id], [u_name], [u_surname], [u_mail], [u_pass], [u_birth], [u_tel], [u_gender]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConStr.ProviderName %>" SelectCommand="SELECT * FROM [users] WHERE ([u_id] = ?)" UpdateCommand="UPDATE [users] SET [u_name] = ?, [u_surname] = ?, [u_mail] = ?, [u_pass] = ?, [u_birth] = ?, [u_tel] = ?, [u_gender] = ? WHERE [u_id] = ?">
            <DeleteParameters>
                <asp:Parameter Name="u_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="u_id" Type="Int32" />
                <asp:Parameter Name="u_name" Type="String" />
                <asp:Parameter Name="u_surname" Type="String" />
                <asp:Parameter Name="u_mail" Type="String" />
                <asp:Parameter Name="u_pass" Type="String" />
                <asp:Parameter Name="u_birth" Type="String" />
                <asp:Parameter Name="u_tel" Type="String" />
                <asp:Parameter Name="u_gender" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="u_id" SessionField="user_id" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="u_name" Type="String" />
                <asp:Parameter Name="u_surname" Type="String" />
                <asp:Parameter Name="u_mail" Type="String" />
                <asp:Parameter Name="u_pass" Type="String" />
                <asp:Parameter Name="u_birth" Type="String" />
                <asp:Parameter Name="u_tel" Type="String" />
                <asp:Parameter Name="u_gender" Type="String" />
                <asp:Parameter Name="u_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    <hr />
    <h2 class="text-center"> Shared Recipes </h2>
    <hr />
    <div class="container">
        <asp:GridView class="table table-sm table-bordered table-condensed table-responsive table-hover" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="r_id" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="r_name" HeaderText="Name" SortExpression="r_name" />
                <asp:BoundField DataField="r_desc" HeaderText="Description" SortExpression="r_desc" />
                <asp:BoundField DataField="r_ingreds" HeaderText="Ingrediants" SortExpression="r_ingreds" />
                <asp:BoundField DataField="r_instructs" HeaderText="Instructions" SortExpression="r_instructs" />
                <asp:BoundField DataField="r_prep" HeaderText="Preperation" SortExpression="r_prep" />
            </Columns>
            <HeaderStyle BackColor="#E0E0E0" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr %>" DeleteCommand="DELETE FROM [recipes] WHERE [r_id] = ?" InsertCommand="INSERT INTO [recipes] ([r_prep], [r_instructs], [r_ingreds], [r_desc], [r_id], [r_name]) VALUES (?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConStr.ProviderName %>" SelectCommand="SELECT [r_prep], [r_instructs], [r_ingreds], [r_desc], [r_id], [r_name] FROM [recipes] WHERE ([u_id] = ?)" UpdateCommand="UPDATE [recipes] SET [r_prep] = ?, [r_instructs] = ?, [r_ingreds] = ?, [r_desc] = ?, [r_name] = ? WHERE [r_id] = ?">
            <DeleteParameters>
                <asp:Parameter Name="r_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="r_prep" Type="Int32" />
                <asp:Parameter Name="r_instructs" Type="String" />
                <asp:Parameter Name="r_ingreds" Type="String" />
                <asp:Parameter Name="r_desc" Type="String" />
                <asp:Parameter Name="r_id" Type="Int32" />
                <asp:Parameter Name="r_name" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="u_id" SessionField="user_id" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="r_prep" Type="Int32" />
                <asp:Parameter Name="r_instructs" Type="String" />
                <asp:Parameter Name="r_ingreds" Type="String" />
                <asp:Parameter Name="r_desc" Type="String" />
                <asp:Parameter Name="r_name" Type="String" />
                <asp:Parameter Name="r_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
    </asp:Content>
