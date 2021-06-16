<%@ Page Title="" Language="C#" MasterPageFile="~/TasteMe.com/src/Master/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Bim308_FinalProject.TasteMe.com.src.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>TasteMe.com</title>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="header" runat="server">
    <div class="header-img-home">
        <asp:Label CssClass="header-tittle" runat="server"> Home </asp:Label>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <form runat="server">
        <div class="img-login text-center">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                ConnectionString="<%$ ConnectionStrings:ConStr %>"
                ProviderName="<%$ ConnectionStrings:ConStr.ProviderName %>"
                SelectCommand="SELECT [u_name], [u_surname] FROM [users] WHERE ([u_id] = ?)">
                <SelectParameters>
                    <asp:SessionParameter Name="u_id" SessionField="user_id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <div style="text-shadow: 1.5px 1.5px #e45d27;" class="display-1 text-center mx-auto">
                <asp:FormView ID="fwWelcome" Visible="false" runat="server" DataSourceID="SqlDataSource1" Width="100%">
                    <ItemTemplate>
                        <span>Welcome </span>
                        <asp:Label ID="u_nameLabel" runat="server" Text='<%# Bind("u_name") %>'></asp:Label>
                        <asp:Label ID="u_surnameLabel" runat="server" Text='<%# Bind("u_surname") %>' />
                        <br />
                    </ItemTemplate>
                </asp:FormView>
            </div>
            <div id="divLogin" class="container" runat="server">
                <div class="row d-flex justify-content-center">
                    <div class="card m-4 col-xs-12 col-sm-8 col-lg-6 col-xl-4">
                        <div class="card-body">
                            <h2 class="card-title mb-4 mt-1">Sign in</h2>
                            <hr>
                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fa fa-user"></i></span>
                                    </div>
                                    <asp:TextBox ID="txtMail" CssClass="form-control" placeholder="e-mail" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fa fa-lock"></i></span>
                                    </div>
                                    <asp:TextBox ID="txtPass" CssClass="form-control" runat="server" placeholder="password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                            <asp:CustomValidator ID="custom_val" runat="server" ErrorMessage="CustomValidator" ForeColor="Red">Invalid username or password</asp:CustomValidator>
                            <br />
                            <div class="form-group">
                                <asp:Button ID="btnLogin" CssClass="btn" runat="server" Text="Login" OnClick="btnLogin_Click" BackColor="#E45D27" ForeColor="White"></asp:Button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
