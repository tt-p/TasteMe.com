<%@ Page Title="" Language="C#" MasterPageFile="~/TasteMe.com/src/Master/Site.Master" AutoEventWireup="true" CodeBehind="RecipeDetails.aspx.cs" Inherits="Bim308_FinalProject.TasteMe.com.src.RandomRecipe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Recipe</title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
        .auto-style2 {
            font-size: x-large;
        }
        .auto-style3 {
            text-decoration: underline;
            color: #E45D27;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="header" runat="server">
    <div class="header-img-details">
        <asp:Label CssClass="header-tittle" runat="server"> Random Recipe </asp:Label>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <form id="form1" runat="server">
    <h2 class="text-center">Recipe</h2>
    <div class="container">
        <asp:DataList ID="dlRnd" runat="server" Height="438px">
            <ItemTemplate>
                <asp:Label ID="lblCat" runat="server" Text='<%# Eval("c_name") %>' Font-Italic="False" Font-Size="X-Large" style="font-weight: 700"></asp:Label>
                <span class="auto-style1">&nbsp;</span><span class="auto-style2"><strong>/</strong></span><span class="auto-style1"> </span><asp:Label ID="lblName" runat="server" Font-Italic="False" Font-Size="X-Large" Text='<%# Eval("r_name") %>'></asp:Label>
                <br />
                <br />
                <span class="auto-style3">Ingredients</span><br />
                <asp:Label ID="lblIngreds" runat="server" Text='<%# Eval("r_ingreds") %>'></asp:Label>
                <br />
                <br />
                <span class="auto-style3">Instructions</span><br />
                <asp:Label ID="lblInstructs" runat="server" Text='<%# Eval("r_instructs") %>'></asp:Label>
                <br />
                <br />
                <span class="auto-style3">Rate:</span>
                <asp:Label ID="lblRate" runat="server" Text='<%# Eval("r_rate") %>'></asp:Label>
                &nbsp;<span class="auto-style3">Publish Date:</span>
                <asp:Label ID="lblDate" runat="server" Text='<%# Eval("r_date") %>' Font-Italic="False"></asp:Label>
                <hr />
                <div class="text-center">
                    <em>by
                    <asp:Label ID="lblUserName" runat="server" Text='<%# Eval("u_name") %>'></asp:Label>
                    <asp:Label ID="lblSurname" runat="server" Text='<%# Eval("u_surname") %>'></asp:Label>
                    </em>
                </div>
                <hr />
            </ItemTemplate>
        </asp:DataList>
    </div>

    </form>

</asp:Content>
