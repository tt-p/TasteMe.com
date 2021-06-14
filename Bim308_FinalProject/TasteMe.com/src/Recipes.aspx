<%@ Page Title="" Language="C#" MasterPageFile="~/TasteMe.com/src/Master/Site.Master" AutoEventWireup="true" CodeBehind="Recipes.aspx.cs" Inherits="Bim308_FinalProject.TasteMe.com.src.Recipes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Recipes</title>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="header" runat="server">
    <div class="header-img-recipes">
        <asp:Label CssClass="header-tittle" runat="server"> Recipes </asp:Label>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
     <div class="col-4 cat-list">
        <asp:Label runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#E45D27"> Catagories </asp:Label>
        <hr>
        <asp:DataList ID="dlCat" runat="server">
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("c_name") %>'></asp:Label>
            </ItemTemplate>
        </asp:DataList>
    </div>
    <form id="form1" runat="server">
    <h2 class="text-center">Recipes </h2>
    <div>
        <div class="container-fluid">
            <div class="row">
                <asp:Repeater ID="myRepeater" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
                            <div class="card my-2">
                                <asp:Image CssClass="card-img-top" ID="Image1" runat="server" ImageUrl='<%# Eval("r_img") %>' />
                                <div class="card-body">
                                    <asp:Label CssClass="card-title" ID="r_nameLabel" runat="server" Text='<%# Eval("r_name") %>' />
                                    <em>(Rate:<asp:Label ID="r_rateLabel" runat="server" Text='<%# Eval("r_rate") %>' />)</em>
                                    <br />
                                    <asp:Label CssClass="card-text" ID="r_descLabel" runat="server" Text='<%# Eval("r_desc") %>' />
                                    <br />
                                    <asp:LinkButton CssClass="btn" BackColor="#e45d27" ForeColor="White" ID="btnMore" CommandArgument='<%# Eval("r_id") %>' OnClick="btnMore_Click" Text="More..." runat="server"/>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr %>" ProviderName="<%$ ConnectionStrings:ConStr.ProviderName %>" SelectCommand="SELECT [r_id], [r_name], [r_desc], [r_rate], [r_img] FROM [recipes]"></asp:SqlDataSource>
            </div>
        </div>
    </div>
    </form>
</asp:Content>
