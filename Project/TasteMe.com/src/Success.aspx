<%@ Page Title="" Language="C#" MasterPageFile="~/TasteMe.com/src/Master/Site.Master" AutoEventWireup="true" CodeBehind="Success.aspx.cs" Inherits="Bim308_FinalProject.TasteMe.com.src.Success" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" runat="server">
    <div class="header-img-home">
        <asp:Label CssClass="header-tittle" runat="server"> Success </asp:Label>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <div class="d-success">
    <div class="container-fluid text-center">
        <div class="col success-text">
            <h2 CssClass="display-4" runat="server">Successful!</h2>
            <br>
            <div class="text-center">
            <img alt="success gif" class="img-fluid" src="../res/icon/success.gif">
            </div>
            <asp:Label ID="lblMessage" CssClass="lead" runat="server"></asp:Label>
            <hr class="my-4">
        </div>
    </div>
</div>
</asp:Content>
