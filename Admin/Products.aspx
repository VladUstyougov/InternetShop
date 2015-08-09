<%@ Page  ValidateRequest="false" Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Mag.Admin.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
    <asp:Label ID="lblTitle" runat="server" Style="font-weight: 700;">All Product</asp:Label>
    <hr />
</div>
<table align="center" cellspacing="1" style="width: 100%; background-color: #FFFFFF;">

<tr><td style="width:900px;" align="center">
    <asp:GridView ID="gvAvailableProducts" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" ForeColor="#333333" GridLines="None" 
        onrowcancelingedit="gvAvailableProducts_RowCancelingEdit" 
        onrowdeleting="gvAvailableProducts_RowDeleting" onrowediting="gvAvailableProducts_RowEditing" 
        onrowupdating="gvAvailableProducts_RowUpdating" 
        onrowdatabound="gvAvailableProducts_RowDataBound" OnPageIndexChanging="gvAvailableProducts_PageIndexChanging" AllowPaging="true" PageSize="8">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:TemplateField HeaderText="Id">
                <EditItemTemplate>
                    <asp:Label ID="lblEdtProdId" runat="server" Text='<%# Eval("ProductID") %>' Width="20"></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblProdId" runat="server" Text='<%# Eval("ProductID") %>' Width="20"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ProductName" >
                <EditItemTemplate>
                    <asp:TextBox ID="txtEdtName" runat="server" Text='<%# Eval("Name") %>' Width="200"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>' Width="200"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Description">
                <EditItemTemplate>
                    <asp:TextBox ID="txtEdtDescr" runat="server" Text='<%# Eval("Description") %>' Width="250" TextMode="MultiLine" Height="100"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:TextBox ID="txtDescr" runat="server" Text ='<%# Eval("Description") %>' ReadOnly="true" Width="250" Height="100" TextMode="MultiLine"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ProductCategory" >
                <EditItemTemplate>
                    <asp:DropDownList ID="ddlEdtCategory" runat="server" >
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlEdtCategory" InitialValue="NA" ErrorMessage="Выберите категорию"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblCatName" runat="server" Text='<%# Eval("CategoryName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Price" >
                <EditItemTemplate>
                    <asp:TextBox ID="txtEdtPrice" runat="server" Text='<%# Eval("Price") %>' Width="30"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Price") %>' Width="30"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Image">
                <EditItemTemplate>
                <asp:TextBox ID="txtImg" runat="server" Text='<%# Eval("ImageUrl") %>' Width="30" Visible="false"></asp:TextBox>
                    <asp:Image ID="srcImg" runat="server" ImageUrl='<%# Eval("ImageUrl") %>' Width="100" Height="100"/>
                    <asp:FileUpload ID="FileForUpload" runat="server" Width="100" Height="20"/>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ImageUrl") %>' Width="100" Height="100" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField HeaderText="Edit" ShowEditButton="True" />
            <asp:CommandField HeaderText="Delete" ShowDeleteButton="True"   />
            
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
</td></tr>
</table>

</asp:Content>


