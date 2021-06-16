<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="Bim308_FinalProject.TasteMe.com.src.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>  
    <style> 
        a {color: white; 
           margin: 2px; padding: 2px; 
           border:outset; border-width:1px; border-color: black; background-color:orangered; 
           text-decoration: none; 
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr %>" DeleteCommand="DELETE FROM [users] WHERE [u_id] = ?" InsertCommand="INSERT INTO [users] ([u_id], [u_name], [u_surname], [u_mail], [u_pass], [u_birth], [u_tel], [u_gender]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConStr.ProviderName %>" SelectCommand="SELECT * FROM [users]" UpdateCommand="UPDATE [users] SET [u_name] = ?, [u_surname] = ?, [u_mail] = ?, [u_pass] = ?, [u_birth] = ?, [u_tel] = ?, [u_gender] = ? WHERE [u_id] = ?">
            <DeleteParameters>
                <asp:Parameter Name="u_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="u_id" Type="Int32" />
                <asp:Parameter Name="u_name" Type="String" />
                <asp:Parameter Name="u_surname" Type="String" />
                <asp:Parameter Name="u_mail" Type="String" />
                <asp:Parameter Name="u_pass" Type="String" />
                <asp:Parameter Name="u_birth" Type="String" />
                <asp:Parameter Name="u_tel" Type="String" />
                <asp:Parameter Name="u_gender" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="u_name" Type="String" />
                <asp:Parameter Name="u_surname" Type="String" />
                <asp:Parameter Name="u_mail" Type="String" />
                <asp:Parameter Name="u_pass" Type="String" />
                <asp:Parameter Name="u_birth" Type="String" />
                <asp:Parameter Name="u_tel" Type="String" />
                <asp:Parameter Name="u_gender" Type="String" />
                <asp:Parameter Name="u_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
        <br/>
        <h2 style="text-align:center">User Settings</h2>   
        
        <asp:GridView ID="GridView1" CssClass="table table-dark" runat="server" AutoGenerateColumns="False" DataKeyNames="u_id" DataSourceID="SqlDataSource1" BorderColor="#FF3300" BorderStyle="Groove" BorderWidth="3px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="u_id" ControlStyle-CssClass="col" HeaderText="u_id" InsertVisible="False" ReadOnly="True" SortExpression="u_id" />
                <asp:BoundField DataField="u_name" ControlStyle-CssClass="col" HeaderText="u_name" SortExpression="u_name" />
                <asp:BoundField DataField="u_surname" ControlStyle-CssClass="col" HeaderText="u_surname" SortExpression="u_surname" />
                <asp:BoundField DataField="u_mail" ControlStyle-CssClass="col" HeaderText="u_mail" SortExpression="u_mail" />
                <asp:BoundField DataField="u_pass" ControlStyle-CssClass="col" HeaderText="u_pass" SortExpression="u_pass" />
                <asp:BoundField DataField="u_birth" ControlStyle-CssClass="col" HeaderText="u_birth" SortExpression="u_birth" />
                <asp:BoundField DataField="u_tel" ControlStyle-CssClass="col" HeaderText="u_tel" SortExpression="u_tel" />
                <asp:BoundField DataField="u_gender" ControlStyle-CssClass="col" HeaderText="u_gender" SortExpression="u_gender" />
            </Columns>
        </asp:GridView>
       
        <h2 style="text-align:center">Category Settings</h2>  
        
        <asp:GridView ID="GridView2" CssClass="table table-dark" runat="server" AutoGenerateColumns="False" DataKeyNames="c_id" DataSourceID="SqlDataSource2" BorderColor="#FF3300" BorderStyle="Groove" BorderWidth="3px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="c_id" ControlStyle-CssClass="col" HeaderText="c_id" InsertVisible="False" ReadOnly="True" SortExpression="c_id" />
                <asp:BoundField DataField="c_name" ControlStyle-CssClass="col" HeaderText="c_name" SortExpression="c_name" />
            </Columns>
        </asp:GridView>
        
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr %>" DeleteCommand="DELETE FROM [categories] WHERE [c_id] = ?" InsertCommand="INSERT INTO [categories] ([c_id], [c_name]) VALUES (?, ?)" ProviderName="<%$ ConnectionStrings:ConStr.ProviderName %>" SelectCommand="SELECT * FROM [categories]" UpdateCommand="UPDATE [categories] SET [c_name] = ? WHERE [c_id] = ?">
            <DeleteParameters>
                <asp:Parameter Name="c_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="c_id" Type="Int32" />
                <asp:Parameter Name="c_name" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="c_name" Type="String" />
                <asp:Parameter Name="c_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
        <h2 style="text-align:center">Comment Settings</h2> 
       
        <asp:GridView ID="GridView3" CssClass="table table-dark" runat="server" AutoGenerateColumns="False" DataKeyNames="c_id" DataSourceID="SqlDataSource3" BorderColor="#FF3300" BorderStyle="Groove" BorderWidth="3px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="c_id" ControlStyle-CssClass="col" HeaderText="c_id" InsertVisible="False" ReadOnly="True" SortExpression="c_id" />
                <asp:BoundField DataField="c_text" ControlStyle-CssClass="col" HeaderText="c_text" SortExpression="c_text" />
                <asp:BoundField DataField="c_date" ControlStyle-CssClass="col" HeaderText="c_date" SortExpression="c_date" />
                <asp:BoundField DataField="u_id" ControlStyle-CssClass="col" HeaderText="u_id" SortExpression="u_id" />
                <asp:BoundField DataField="r_id" ControlStyle-CssClass="col" HeaderText="r_id" SortExpression="r_id" />
            </Columns>
        </asp:GridView>
       
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr %>" DeleteCommand="DELETE FROM [comments] WHERE [c_id] = ?" InsertCommand="INSERT INTO [comments] ([c_id], [c_text], [c_date], [u_id], [r_id]) VALUES (?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConStr.ProviderName %>" SelectCommand="SELECT * FROM [comments]" UpdateCommand="UPDATE [comments] SET [c_text] = ?, [c_date] = ?, [u_id] = ?, [r_id] = ? WHERE [c_id] = ?">
            <DeleteParameters>
                <asp:Parameter Name="c_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="c_id" Type="Int32" />
                <asp:Parameter Name="c_text" Type="String" />
                <asp:Parameter Name="c_date" Type="DateTime" />
                <asp:Parameter Name="u_id" Type="Int32" />
                <asp:Parameter Name="r_id" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="c_text" Type="String" />
                <asp:Parameter Name="c_date" Type="DateTime" />
                <asp:Parameter Name="u_id" Type="Int32" />
                <asp:Parameter Name="r_id" Type="Int32" />
                <asp:Parameter Name="c_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <h2 style="text-align:center">Contact Settings</h2> 
       
        <asp:GridView ID="GridView4" CssClass="table table-dark" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource4" BorderColor="#FF3300" BorderStyle="Groove" BorderWidth="3px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="ID" ControlStyle-CssClass="col" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="u_name" ControlStyle-CssClass="col" HeaderText="u_name" SortExpression="u_name" />
                <asp:BoundField DataField="u_surname" ControlStyle-CssClass="col" HeaderText="u_surname" SortExpression="u_surname" />
                <asp:BoundField DataField="u_mail" ControlStyle-CssClass="col" HeaderText="u_mail" SortExpression="u_mail" />
                <asp:BoundField DataField="u_tel" ControlStyle-CssClass="col" HeaderText="u_tel" SortExpression="u_tel" />
                <asp:BoundField DataField="u_message" ControlStyle-CssClass="col" HeaderText="u_message" SortExpression="u_message" />
            </Columns>
        </asp:GridView>
        
        <h2 style="text-align:center">Recipe Settings</h2> 

        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr %>" DeleteCommand="DELETE FROM [contact] WHERE [ID] = ?" InsertCommand="INSERT INTO [contact] ([ID], [u_name], [u_surname], [u_mail], [u_tel], [u_message]) VALUES (?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConStr.ProviderName %>" SelectCommand="SELECT * FROM [contact]" UpdateCommand="UPDATE [contact] SET [u_name] = ?, [u_surname] = ?, [u_mail] = ?, [u_tel] = ?, [u_message] = ? WHERE [ID] = ?">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="Int32" />
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
        
        <asp:GridView ID="GridView5" CssClass="table table-dark" runat="server" AutoGenerateColumns="False" DataKeyNames="r_id" DataSourceID="SqlDataSource5" BorderColor="#FF3300" BorderStyle="Groove" BorderWidth="3px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="r_id" ControlStyle-CssClass="col" HeaderText="r_id" InsertVisible="False" ReadOnly="True" SortExpression="r_id" />
                <asp:BoundField DataField="r_name" ControlStyle-CssClass="col" HeaderText="r_name" SortExpression="r_name" />
                <asp:BoundField DataField="r_desc" ControlStyle-CssClass="col" HeaderText="r_desc" SortExpression="r_desc" />
                <asp:BoundField DataField="r_ingreds" ControlStyle-CssClass="col" HeaderText="r_ingreds" SortExpression="r_ingreds" />
                <asp:BoundField DataField="r_instructs" ControlStyle-CssClass="col" HeaderText="r_instructs" SortExpression="r_instructs" />
                <asp:BoundField DataField="r_date" ControlStyle-CssClass="col" HeaderText="r_date" SortExpression="r_date" />
                <asp:BoundField DataField="r_prep" ControlStyle-CssClass="col" HeaderText="r_prep" SortExpression="r_prep" />
                <asp:BoundField DataField="r_img" ControlStyle-CssClass="col" HeaderText="r_img" SortExpression="r_img" />
                <asp:BoundField DataField="c_id" ControlStyle-CssClass="col" HeaderText="c_id" SortExpression="c_id" />
                <asp:BoundField DataField="u_id" ControlStyle-CssClass="col"  HeaderText="u_id" SortExpression="u_id" />
            </Columns>
        </asp:GridView>  
        <br/>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr %>" DeleteCommand="DELETE FROM [recipes] WHERE [r_id] = ?" InsertCommand="INSERT INTO [recipes] ([r_id], [r_name], [r_desc], [r_ingreds], [r_instructs], [r_date], [r_prep], [r_img], [c_id], [u_id]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConStr.ProviderName %>" SelectCommand="SELECT * FROM [recipes]" UpdateCommand="UPDATE [recipes] SET [r_name] = ?, [r_desc] = ?, [r_ingreds] = ?, [r_instructs] = ?, [r_date] = ?, [r_prep] = ?, [r_img] = ?, [c_id] = ?, [u_id] = ? WHERE [r_id] = ?">
            <DeleteParameters>
                <asp:Parameter Name="r_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="r_id" Type="Int32" />
                <asp:Parameter Name="r_name" Type="String" />
                <asp:Parameter Name="r_desc" Type="String" />
                <asp:Parameter Name="r_ingreds" Type="String" />
                <asp:Parameter Name="r_instructs" Type="String" />
                <asp:Parameter Name="r_date" Type="DateTime" />
                <asp:Parameter Name="r_prep" Type="Int32" />
                <asp:Parameter Name="r_img" Type="String" />
                <asp:Parameter Name="c_id" Type="Int32" />
                <asp:Parameter Name="u_id" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="r_name" Type="String" /> 
                <asp:Parameter Name="r_desc" Type="String" />
                <asp:Parameter Name="r_ingreds" Type="String" />
                <asp:Parameter Name="r_instructs" Type="String" />
                <asp:Parameter Name="r_date" Type="DateTime" />
                <asp:Parameter Name="r_prep" Type="Int32" />
                <asp:Parameter Name="r_img" Type="String" />
                <asp:Parameter Name="c_id" Type="Int32" />
                <asp:Parameter Name="u_id" Type="Int32" />
                <asp:Parameter Name="r_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
