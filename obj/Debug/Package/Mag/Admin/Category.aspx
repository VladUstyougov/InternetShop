<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="Mag.Admin.Category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div align="center">
    <asp:Label ID="lblTitle" runat="server" Style="font-weight: 700;">All Categories</asp:Label>
    <hr />
</div>
<table align="center" cellspacing="1" style="width: 100%; background-color: #FFFFFF;">
<tr>
<td align="center">
    <asp:GridView ID="gvAvailableCategories" runat="server" BackColor="White" 
        BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" 
        CellSpacing="1" GridLines="None">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
</td>
</tr>
</table>
</asp:Content>
