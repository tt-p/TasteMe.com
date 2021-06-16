<%@ Page Title="" Language="C#" MasterPageFile="~/TasteMe.com/src/Master/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Bim308_FinalProject.TasteMe.com.src.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Contact</title>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="header" runat="server">
    <div class="header-img-contact">
        <asp:Label CssClass="header-tittle" runat="server"> Contact </asp:Label>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <form id="form1" runat="server">
    <div class="container d-contact">
        <h2 class="text-center">Contact Form</h2>
        <hr>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Width="100%" OnItemInserted="FormView1_ItemInserted">
            <EditItemTemplate>
                ID:
                <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                <br />
                u_name:
                <asp:TextBox ID="u_nameTextBox" runat="server" Text='<%# Bind("u_name") %>' />
                <br />
                u_surname:
                <asp:TextBox ID="u_surnameTextBox" runat="server" Text='<%# Bind("u_surname") %>' />
                <br />
                u_mail:
                <asp:TextBox ID="u_mailTextBox" runat="server" Text='<%# Bind("u_mail") %>' />
                <br />
                u_tel:
                <asp:TextBox ID="u_telTextBox" runat="server" Text='<%# Bind("u_tel") %>' />
                <br />
                u_message:
                <asp:TextBox ID="u_messageTextBox" runat="server" Text='<%# Bind("u_message") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Name<asp:TextBox CssClass="form-control" ID="u_nameTextBox" runat="server" Text='<%# Bind("u_name") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="u_nameTextBox" ForeColor="Red"> Name field is required </asp:RequiredFieldValidator>
                <br />
                Surname
                <asp:TextBox CssClass="form-control" ID="u_surnameTextBox" runat="server" Text='<%# Bind("u_surname") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="u_surnameTextBox" ForeColor="Red"> Surname field is required </asp:RequiredFieldValidator>
                <br />
                E-mail
                <asp:TextBox CssClass="form-control" ID="u_mailTextBox" runat="server" Text='<%# Bind("u_mail") %>' TextMode="Email" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="u_mailTextBox" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="(?:[a-z0-9!#$%&amp;'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&amp;'*+/=?^_`{|}~-]+)*|&quot;(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*&quot;)@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4][0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9][0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])">This is not a valid e-mail</asp:RegularExpressionValidator>
                <br />
                Telephone
                <asp:TextBox CssClass="form-control" ID="u_telTextBox" runat="server" Text='<%# Bind("u_tel") %>' TextMode="Number" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="u_telTextBox" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^[0][1-9]\d{9}$|^[1-9]\d{9}$">This is not a valid telephone</asp:RegularExpressionValidator>
                <br />
                Message:
                <asp:TextBox ID="u_messageTextBox" runat="server" Text='<%# Bind("u_message") %>' Height="150px" Rows="4" TextMode="MultiLine" Width="100%" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="u_messageTextBox" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Message field is required</asp:RequiredFieldValidator>
                <br />
                <asp:LinkButton CssClass="btn" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" BackColor="#E45D27" ForeColor="White" />
                &nbsp;<asp:LinkButton CssClass="btn btn-secondary" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                ID:
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
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
                u_tel:
                <asp:Label ID="u_telLabel" runat="server" Text='<%# Bind("u_tel") %>' />
                <br />
                u_message:
                <asp:Label ID="u_messageLabel" runat="server" Text='<%# Bind("u_message") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <hr />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:ConStr %>"
            DeleteCommand="DELETE FROM [contact] WHERE [ID] = ?"
            InsertCommand="INSERT INTO [contact] ([u_name], [u_surname], [u_mail], [u_tel], [u_message]) VALUES (?, ?, ?, ?, ?)"
            ProviderName="<%$ ConnectionStrings:ConStr.ProviderName %>"
            SelectCommand="SELECT * FROM [contact]"
            UpdateCommand="UPDATE [contact] SET [u_name] = ?, [u_surname] = ?, [u_mail] = ?, [u_tel] = ?, [u_message] = ? WHERE [ID] = ?">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="u_name" Type="String" />
                <asp:Parameter Name="u_surname" Type="String" />
                <asp:Parameter Name="u_mail" Type="String" />
                <asp:Parameter Name="u_tel" Type="String" />
                <asp:Parameter Name="u_message" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="u_name" Type="String" />
                <asp:Parameter Name="u_surname" Type="String" />
                <asp:Parameter Name="u_mail" Type="String" />
                <asp:Parameter Name="u_tel" Type="String" />
                <asp:Parameter Name="u_message" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</asp:Content>
