<%@ Page Title="Tintuc" Language="C#" MasterPageFile="~/BaiTap/Frontend.Master" AutoEventWireup="true" CodeBehind="TinTuc.aspx.cs" Inherits="Baithiketthucmon.BaiTap.TinTuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="TIN_ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="TIN_ID" HeaderText="TIN_ID" ReadOnly="True" SortExpression="TIN_ID" />
            <asp:BoundField DataField="NOIDUNG" HeaderText="NOIDUNG" SortExpression="NOIDUNG" />
            <asp:BoundField DataField="NGAYGUI" HeaderText="NGAYGUI" SortExpression="NGAYGUI" />
            <asp:BoundField DataField="TGIA_ID" HeaderText="TGIA_ID" SortExpression="TGIA_ID" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LapTrinhWebConnectionString1 %>" DeleteCommand="DELETE FROM [TINTUC] WHERE [TIN_ID] = @TIN_ID" InsertCommand="INSERT INTO [TINTUC] ([TIN_ID], [NOIDUNG], [NGAYGUI], [TGIA_ID]) VALUES (@TIN_ID, @NOIDUNG, @NGAYGUI, @TGIA_ID)" ProviderName="<%$ ConnectionStrings:LapTrinhWebConnectionString1.ProviderName %>" SelectCommand="SELECT [TIN_ID], [NOIDUNG], [NGAYGUI], [TGIA_ID] FROM [TINTUC]" UpdateCommand="UPDATE [TINTUC] SET [NOIDUNG] = @NOIDUNG, [NGAYGUI] = @NGAYGUI, [TGIA_ID] = @TGIA_ID WHERE [TIN_ID] = @TIN_ID">
        <DeleteParameters>
            <asp:Parameter Name="TIN_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TIN_ID" Type="String" />
            <asp:Parameter Name="NOIDUNG" Type="String" />
            <asp:Parameter DbType="Date" Name="NGAYGUI" />
            <asp:Parameter Name="TGIA_ID" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NOIDUNG" Type="String" />
            <asp:Parameter DbType="Date" Name="NGAYGUI" />
            <asp:Parameter Name="TGIA_ID" Type="String" />
            <asp:Parameter Name="TIN_ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
<asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
    <Fields>
        <asp:CommandField ShowInsertButton="True" />
    </Fields>
</asp:DetailsView>
</asp:Content>
