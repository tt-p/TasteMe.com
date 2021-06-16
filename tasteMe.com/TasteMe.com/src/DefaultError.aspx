<%@ Page Title="" Language="C#" MasterPageFile="~/TasteMe.com/src/Master/Site.Master" AutoEventWireup="true" CodeBehind="DefaultError.aspx.cs" Inherits="Bim308_FinalProject.TasteMe.com.src.DefaultError" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Error</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" runat="server">
    <div class="header-img-home">
        <asp:Label CssClass="header-tittle" runat="server"> Error </asp:Label>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <div class="container text-center">
        <asp:Label ID="errorMessage" runat="server" Font-Size="XX-Large" ForeColor="Red"></asp:Label>
    </div>
</asp:Content>
