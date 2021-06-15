<%@ Page Title="" Language="C#" MasterPageFile="~/TasteMe.com/src/Master/Site.Master" AutoEventWireup="true" CodeBehind="SendRecipe.aspx.cs" Inherits="Bim308_FinalProject.TasteMe.com.src.SendRecipe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" runat="server">
    <div class="header-img-send">
        <asp:Label CssClass="header-tittle" runat="server"> Send Recipe </asp:Label>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <form id="form1" runat="server">
        <div class="container d-send">
            <h2 class="text-center">Recipe Form</h2>
            <hr />
            Name
                <asp:TextBox CssClass="form-control" ID="r_nameTextBox" runat="server"/>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="r_nameTextBox" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            Description
                <asp:TextBox CssClass="form-control" ID="r_descTextBox" runat="server"/>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="r_descTextBox" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            Ingredients
                <asp:TextBox CssClass="form-control" ID="r_ingredsTextBox" runat="server" TextMode="MultiLine" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="r_ingredsTextBox" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            Instructions<br />
            <asp:TextBox CssClass="form-control" ID="r_instructsTextBox" runat="server" TextMode="MultiLine" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="r_instructsTextBox" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            Preparation time:<br />
            <asp:TextBox CssClass="form-control" ID="r_prepTextBox" runat="server" TextMode="Number"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="r_prepTextBox" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            Category<br />
            <asp:DropDownList CssClass="form-control" ID="r_CatDD" runat="server">
                <asp:ListItem Selected="True" Value="1">Main Dish</asp:ListItem>
                <asp:ListItem Value="2">Side Dish</asp:ListItem>
                <asp:ListItem Value="3">Breakfast</asp:ListItem>
                <asp:ListItem Value="4">Dinner</asp:ListItem>
                <asp:ListItem Value="5">Lunch</asp:ListItem>
                <asp:ListItem Value="6">Pastry</asp:ListItem>
                <asp:ListItem Value="7">Soup</asp:ListItem>
                <asp:ListItem Value="8">Beverage</asp:ListItem>
                <asp:ListItem Value="9">Dessert</asp:ListItem>
                <asp:ListItem Value="10">Salad</asp:ListItem>
                <asp:ListItem Value="11">Appetizers</asp:ListItem>
                <asp:ListItem Value="12">Misscellaneus</asp:ListItem>
            </asp:DropDownList>
            <asp:FileUpload CssClass="form-control" ID="upImage" runat="server" Width="100%" />
            <br />
            <asp:LinkButton CssClass="btn" ID="InsertButton" runat="server" CausesValidation="True" Text="Send" OnClick="InsertButton_Click" BackColor="#E45D27" ForeColor="White" />
            &nbsp;<asp:LinkButton CssClass="btn btn-secondary" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </div>
    </form>
    <hr />
</asp:Content>
