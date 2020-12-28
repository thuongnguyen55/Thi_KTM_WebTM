﻿<%@ Page Title="Tacgia" Language="C#" MasterPageFile="~/BaiTap/Frontend.Master" AutoEventWireup="true" CodeBehind="Tacgia.aspx.cs" Inherits="Baithiketthucmon.BaiTap.Tacgia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="TGIA_ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="TGIA_ID" HeaderText="TGIA_ID" ReadOnly="True" SortExpression="TGIA_ID" />
            <asp:BoundField DataField="TENTG" HeaderText="TENTG" SortExpression="TENTG" />
            <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LapTrinhWebConnectionString1 %>" DeleteCommand="DELETE FROM [TACGIA] WHERE [TGIA_ID] = @TGIA_ID" InsertCommand="INSERT INTO [TACGIA] ([TGIA_ID], [TENTG], [EMAIL]) VALUES (@TGIA_ID, @TENTG, @EMAIL)" ProviderName="<%$ ConnectionStrings:LapTrinhWebConnectionString1.ProviderName %>" SelectCommand="SELECT [TGIA_ID], [TENTG], [EMAIL] FROM [TACGIA]" UpdateCommand="UPDATE [TACGIA] SET [TENTG] = @TENTG, [EMAIL] = @EMAIL WHERE [TGIA_ID] = @TGIA_ID">
        <DeleteParameters>
            <asp:Parameter Name="TGIA_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TGIA_ID" Type="String" />
            <asp:Parameter Name="TENTG" Type="String" />
            <asp:Parameter Name="EMAIL" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TENTG" Type="String" />
            <asp:Parameter Name="EMAIL" Type="String" />
            <asp:Parameter Name="TGIA_ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
<asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
    <Fields>
        <asp:CommandField ShowInsertButton="True" />
    </Fields>
</asp:DetailsView>
</asp:Content>
