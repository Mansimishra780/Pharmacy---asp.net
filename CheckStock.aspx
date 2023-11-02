<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="CheckStock.aspx.cs" Inherits="Pharma.CheckStock" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" BackColor="Red" Font-Bold="False" Font-Italic="True" Font-Names="Georgia" Font-Overline="False" Font-Size="Larger" Font-Strikeout="False" Font-Underline="False" ForeColor="White" HorizontalAlign="Center" ShowFooter="False">
        <ItemTemplate>
            OrderID:
            <asp:Label ID="OrderIDLabel" runat="server" Text='<%# Eval("OrderID") %>' />
            <br />
            Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            Address:
            <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
            <br />
            MedicineID:
            <asp:Label ID="MedicineIDLabel" runat="server" Text='<%# Eval("MedicineID") %>' />
            <br />
            Quantity:
            <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' />
            <br />
            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
            <br />
            Total:
            <asp:Label ID="TotalLabel" runat="server" Text='<%# Eval("Total") %>' />
            <br />
            PurchDate:
            <asp:Label ID="PurchDateLabel" runat="server" Text='<%# Eval("PurchDate") %>' />
            <br />
<br />
        </ItemTemplate>
        <SeparatorStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="True" ForeColor="White" HorizontalAlign="Center" />
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LoginDBConnectionString2 %>" ProviderName="<%$ ConnectionStrings:LoginDBConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [Shipping]"></asp:SqlDataSource>
</asp:Content>
