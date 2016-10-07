<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="WebFormsDemo.Customers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Customers</h1>
<p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CustomerID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" SortExpression="CustomerID" />
            <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString1 %>" DeleteCommand="DELETE FROM [Customers] WHERE [CustomerID] = @CustomerID" InsertCommand="INSERT INTO [Customers] ([CustomerID], [CompanyName], [City], [Country]) VALUES (@CustomerID, @CompanyName, @City, @Country)" ProviderName="<%$ ConnectionStrings:NorthwindConnectionString1.ProviderName %>" SelectCommand="SELECT [CustomerID], [CompanyName], [City], [Country] FROM [Customers]" UpdateCommand="UPDATE [Customers] SET [CompanyName] = @CompanyName, [City] = @City, [Country] = @Country WHERE [CustomerID] = @CustomerID">
        <DeleteParameters>
            <asp:Parameter Name="CustomerID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CustomerID" Type="String" />
            <asp:Parameter Name="CompanyName" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CompanyName" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="CustomerID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
</asp:Content>
