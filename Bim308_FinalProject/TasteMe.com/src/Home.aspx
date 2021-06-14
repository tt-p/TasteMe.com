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
    <div class="img-login text-center">
        <asp:Label class="display-1" ID="lblWelcome" runat="server" Visible="false" Text="Welcome Back!" style="text-align: justify"></asp:Label>
        <div id="divLogin" class="container" runat="server">
            <div class="row d-flex justify-content-center">
                <div class="card m-4 col-xs-12 col-sm-8 col-lg-6 col-xl-4">
                    <div class="card-body">
                        <h2 class="card-title mb-4 mt-1">Sign in</h2>
                        <hr>
                        <form runat="server">
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
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
