<%@ Page Title="" Language="C#" MasterPageFile="~/TasteMe.com/src/Master/Site.Master" AutoEventWireup="true" CodeBehind="RecipeDetails.aspx.cs" Inherits="Bim308_FinalProject.TasteMe.com.src.RandomRecipe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Recipe Details</title>
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
        <asp:Label CssClass="header-tittle" runat="server"> Recipe Details </asp:Label>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <form id="form1" runat="server">
        <h2 class="text-center">Recipe</h2>
        <div class="container">
            <asp:DataList ID="dlRecipe" runat="server" Height="438px">
                <ItemTemplate>
                    <asp:Label ID="lblCat" runat="server" Text='<%# Eval("c_name") %>' Font-Italic="False" Font-Size="X-Large" Style="font-weight: 700"></asp:Label>
                    <span class="auto-style1">&nbsp;</span><span class="auto-style2"><strong>/</strong></span><span class="auto-style1"> </span>
                    <asp:Label ID="lblName" runat="server" Font-Italic="False" Font-Size="X-Large" Text='<%# Eval("r_name") %>'></asp:Label>
                    <br />
                    <br />
                    <div class="text-center ">
                        <asp:Image Style="width: 40rem; height: 30rem; object-fit: cover" CssClass="img-fluid ratio-4x3" ID="Image1" runat="server" ImageUrl='<%# Eval("r_img") %>' />
                    </div>
                    <span class="auto-style3">Ingredients</span><br />
                    <asp:Label ID="lblIngreds" runat="server" Text='<%# Eval("r_ingreds") %>'></asp:Label>
                    <br />
                    <br />
                    <span class="auto-style3">Instructions</span><br />
                    <asp:Label ID="lblInstructs" runat="server" Text='<%# Eval("r_instructs") %>'></asp:Label>
                    <br />
                    <br />
                    <span class="auto-style3">Preparation time:</span>
                    <asp:Label ID="lblRate" runat="server" Text='<%# Eval("r_prep") %>'></asp:Label>
                    <span>min.<br />
                        <span class="auto-style3">Publish Date:</span>
                        <asp:Label ID="lblDate" runat="server" Font-Italic="False" Text='<%# Eval("r_date") %>'></asp:Label>
                    </span>
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
        <div class="container d-comment">
            <asp:GridView class="table table-sm table-bordered table-condensed table-responsive table-hover" ID="gvComment" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="c_text" HeaderText="c_text" SortExpression="c_text" />
                    <asp:BoundField DataField="c_date" HeaderText="c_date" SortExpression="c_date" />
                    <asp:BoundField DataField="u_name" HeaderText="u_name" SortExpression="u_name" />
                    <asp:BoundField DataField="u_surname" HeaderText="u_surname" SortExpression="u_surname" />
                </Columns>
                <HeaderStyle BackColor="#CCCCCC" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr %>" ProviderName="<%$ ConnectionStrings:ConStr.ProviderName %>" SelectCommand="SELECT comments.c_text, comments.c_date, users.u_name, users.u_surname FROM (comments INNER JOIN users ON comments.u_id = users.u_id) WHERE (comments.r_id = ?)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="r_id" QueryStringField="p1" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <div class="container d-comment">
            <asp:FormView ID="fwComment" runat="server" DataKeyNames="c_id" DataSourceID="SqlDataSource2" DefaultMode="Insert" Width="100%" OnItemInserted="fwComment_ItemInserted">
                <InsertItemTemplate>
                    Comment<asp:TextBox ID="c_textTextBox" runat="server" CssClass="form-control" Text='<%# Bind("c_text") %>' TextMode="MultiLine" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="c_textTextBox" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" BackColor="#E45D27" CausesValidation="True" CommandName="Insert" CssClass="btn" ForeColor="White" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="btn btn-secondary" Text="Cancel" />
                </InsertItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server"
                ConnectionString="<%$ ConnectionStrings:ConStr %>"
                DeleteCommand="DELETE FROM [comments] WHERE [c_id] = ?"
                InsertCommand="INSERT INTO [comments] ([c_text], [u_id], [r_id]) VALUES (?, ?, ?)"
                ProviderName="<%$ ConnectionStrings:ConStr.ProviderName %>"
                SelectCommand="SELECT [c_id], [c_text] FROM [comments] WHERE (([u_id] = ?) AND ([r_id] = ?))"
                UpdateCommand="UPDATE [comments] SET [c_text] = ? WHERE [c_id] = ?">
                <InsertParameters>
                    <asp:Parameter Name="c_text" Type="String" />
                    <asp:SessionParameter Name="u_id" SessionField="user_id" Type="Int32" />
                    <asp:QueryStringParameter Name="r_id" QueryStringField="p1" Type="Int32" />
                </InsertParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</asp:Content>
