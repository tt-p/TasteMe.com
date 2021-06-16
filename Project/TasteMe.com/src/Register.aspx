<%@ Page Title="" Language="C#" MasterPageFile="~/TasteMe.com/src/Master/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Bim308_FinalProject.TasteMe.com.src.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Register</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" runat="server">
    <div class="header-img-register">
        <asp:Label CssClass="header-tittle" runat="server"> Register </asp:Label>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <form id="form1" runat="server">
    <div class="container d-register">
        <h2 class="text-center">Register Form</h2>
        <hr />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="u_id" DataSourceID="SqlDataSource1" DefaultMode="Insert" Width="100%" OnItemInserted="FormView1_ItemInserted">
            <EditItemTemplate>
                u_id:
                <asp:Label ID="u_idLabel1" runat="server" Text='<%# Eval("u_id") %>' />
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
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Name<asp:TextBox CssClass="form-control" ID="u_nameTextBox" runat="server" Text='<%# Bind("u_name") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="u_nameTextBox" ErrorMessage="RequiredFieldValidator" ForeColor="Red"> Name field is required </asp:RequiredFieldValidator>
                <br />
                Surname<asp:TextBox CssClass="form-control" ID="u_surnameTextBox" runat="server" Text='<%# Bind("u_surname") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="u_surnameTextBox" ErrorMessage="RequiredFieldValidator" ForeColor="Red"> Surname field is required </asp:RequiredFieldValidator>
                <br />
                Mail<asp:TextBox CssClass="form-control" ID="u_mailTextBox" runat="server" Text='<%# Bind("u_mail") %>' />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="u_mailTextBox" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">This is not a valid e-mail</asp:RegularExpressionValidator>
                <br />
                Password<asp:TextBox CssClass="form-control" ID="u_passTextBox" runat="server" Text='<%# Bind("u_pass") %>' TextMode="Password" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="u_passTextBox" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Password field is required </asp:RequiredFieldValidator>
                <br />
                Reenter Password<br />
                <asp:TextBox CssClass="form-control" ID="re_passTextBox" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="u_passTextBox" ControlToValidate="re_passTextBox" ErrorMessage="CompareValidator" ForeColor="Red">Password did not match</asp:CompareValidator>
                <br />
                Date of Birth<br /> <asp:TextBox CssClass="form-control" ID="u_birthTextBox" runat="server" Text='<%# Bind("u_birth") %>' TextMode="Date" />
                <br />
                Telephone<asp:TextBox CssClass="form-control" ID="u_telTextBox" runat="server" Text='<%# Bind("u_tel") %>' TextMode="Number" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="u_telTextBox" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^[0][1-9]\d{9}$|^[1-9]\d{9}$">This is not a valid telephone</asp:RegularExpressionValidator>
                <br />
                Gender<asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="16px" SelectedValue='<%# Bind("u_gender") %>' Width="99px">
                    <asp:ListItem Value="Female" Selected="True">Female</asp:ListItem>
                    <asp:ListItem Value="Male">Male</asp:ListItem>
                </asp:RadioButtonList>
                &nbsp;<br />
                <asp:LinkButton  CssClass="btn" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" BackColor="#E45D27" ForeColor="White" />
                &nbsp;<asp:LinkButton CssClass="btn btn-secondary" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
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
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <hr />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:ConStr %>"
            DeleteCommand="DELETE FROM [users] WHERE [u_id] = ?"
            InsertCommand="INSERT INTO [users] ([u_name], [u_surname], [u_mail], [u_pass], [u_birth], [u_tel], [u_gender]) VALUES (?, ?, ?, ?, ?, ?, ?)"
            ProviderName="<%$ ConnectionStrings:ConStr.ProviderName %>"
            SelectCommand="SELECT * FROM [users]"
            UpdateCommand="UPDATE [users] SET [u_name] = ?, [u_surname] = ?, [u_mail] = ?, [u_pass] = ?, [u_birth] = ?, [u_tel] = ?, [u_gender] = ? WHERE [u_id] = ?">
            <DeleteParameters>
                <asp:Parameter Name="u_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="u_name" Type="String" />
                <asp:Parameter Name="u_surname" Type="String" />
                <asp:Parameter Name="u_mail" Type="String" />
                <asp:Parameter Name="u_pass" Type="String" />
                <asp:Parameter Name="u_birth" Type="DateTime" />
                <asp:Parameter Name="u_tel" Type="String" />
                <asp:Parameter Name="u_gender" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="u_name" Type="String" />
                <asp:Parameter Name="u_surname" Type="String" />
                <asp:Parameter Name="u_mail" Type="String" />
                <asp:Parameter Name="u_pass" Type="String" />
                <asp:Parameter Name="u_birth" Type="DateTime" />
                <asp:Parameter Name="u_tel" Type="String" />
                <asp:Parameter Name="u_gender" Type="String" />
                <asp:Parameter Name="u_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</asp:Content>
