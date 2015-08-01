<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Mag.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta content="text/html;"  charset="utf-8" http-equiv="content-type"/>
    <title></title>
    <link href="page.css" media="screen" rel="stylesheet" type="text/css"/>

    <!--[if gte IE 9]
<style type="text/css">
.btn {
filter: none;
}
</style>
<![endif]-->
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnableHistory="true" OnNavigate="ScriptManager1_Navigate">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
        <ContentTemplate>
            <table align="center" class="style1" style="vertical-align: top;" border="0">
                <tr>
                    <td>
                        <table align="center" style="border-bottom-style: ridge; border-width: medium; border-color: #9933FF;
                            background-color: #ffffff; background-image: url('/Images/header3.jpg'); background-position: center;
                            height: 280px;">
                            <tr>
                                <td class="style8" align="center" rowspan="2">
                                    <%--<asp:Image ID="Image1" runat="server" Height="100" ImageUrl="~/Images/header1.jpg"
                                        Width="100" />--%>
                                    &nbsp;
                                </td>
                                <td class="style6" rowspan="2">
                                    <asp:LinkButton ID="lblLogo" runat="server" Font-Names="Eras Demi ITC" Font-Size="30pt"
                                        ForeColor="#6600CC" OnClick="lblLogo_Click" CausesValidation="false"></asp:LinkButton>
                                    <br />
                                    <asp:Label ID="lblDesc" runat="server" Text="Label"></asp:Label>
                                </td>
                                <td class="style7" rowspan="2">
                                    &nbsp;
                                </td>
                                <td rowspan="2" align="right">
                                    &nbsp;
                                </td>
                                <td align="left" style="vertical-align: top; width: 300px;">
                                    <div class="phon1">
                                        <div class="phone">
                                        </div>
                                        <asp:Label ID="lblTelefon1" runat="server" Text="+(000)000-00-00"></asp:Label>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="categoriesstyle" valign="middle">
                                    &nbsp;
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%--
                        <table align="center" class="style1" style="border: thin ridge #9900FF;">
                            <tr>
                                <td class="productstyle">
                                    &nbsp;
                                    <asp:Label ID="lblCategoryName" runat="server" Font-Size="15pt" ForeColor="#6600CC"></asp:Label>
                                </td>
                                <td class="categoriesstyle" style="border-left-style: ridge; border-width: thin; border-color: #9900FF">
                                    &nbsp;
                                    <asp:Label ID="lblProducts" runat="server" Text="Products" Font-Size="15pt" ForeColor="#6600CC"></asp:Label>
                                </td>
                            </tr>
                        </table>--%>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        <asp:LinkButton ID="lbtProducts" runat="server" Text="Наш каталог" Font-Size="15pt"
                            ForeColor="#6600CC" Style="margin-left: 60px; margin-bottom: 5px; text-decoration: none;"
                            OnClick="lblLogo_Click" CausesValidation="false"></asp:LinkButton>
                        <asp:Label ID="lblCategoryName" runat="server" Font-Size="15pt" ForeColor="#6633CC"></asp:Label>
                        <table align="left" class="style1">
                            <tr>
                                <td class="categoriesstyle" valign="top" align="left" style="padding: 0px; padding-top: 4px;
                                    margin: 0px;">
                                    <asp:Panel ID="pnlCategories" runat="server" ScrollBars="Auto" BorderColor="Black"
                                        BorderStyle="Inset" BorderWidth="1" BackColor="#A8BCD2" Style="width: 240px;
                                        margin: 0px; float: left;">
                                        <asp:DataList ID="dlCategories" runat="server" BackColor="White" BorderColor="#CCCCCC"
                                            BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal"
                                            Width="240">
                                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                            <HeaderStyle BackColor="#333333" Font-Bold="true" ForeColor="White" />
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lbtnCategory" runat="server" Text='<%# Eval("CategoryName") %>'
                                                    CommandArgument='<%# Eval("CategoryID") %>' OnClick="lbtnCategory_Click" CssClass="stylus"></asp:LinkButton>
                                            </ItemTemplate>
                                            <SelectedItemStyle BackColor="#CC3333" Font-Bold="true" ForeColor="White" />
                                        </asp:DataList>
                                    </asp:Panel>
                                </td>
                                <td class="productstyle" valign="top" align="left">
                                    <asp:Panel ID="pnlProducts" runat="server" ScrollBars="None" BorderColor="Black"
                                        BorderStyle="Inset" BorderWidth="0px" Width="100%" Style="margin-left: 0px; float: left;
                                        min-height: 100%; min-height: 600px;">
                                        <div id="main-wrapper" style="min-height: 100%;">
                                            <div id="content" style="min-height: 100%;">
                                                <asp:DataList ID="dlProducts" runat="server" RepeatColumns="3" Width="100%" Font-Bold="false"
                                                    Font-Italic="false" Font-Overline="false" Font-Strikeout="false" Font-Underline="false"
                                                    OnSelectedIndexChanged="dlProducts_SelectedIndexChanged" Style="float: left;
                                                    border: 0px solid blue; min-height: 600px" ItemStyle-VerticalAlign="Top">
                                                    <ItemTemplate>
                                                        <div align="left" style="padding-bottom: 30px; vertical-align: top; margin: 0 0 0 10px;">
                                                            <table cellspacing="1" class="style4" style="border: 0px ridge #FF00FF; margin: 0px;
                                                                height: 303px;">
                                                                <tr>
                                                                    <td style="vertical-align: top;">
                                                                        <div style="border: solid 1px black; width: 202px; display: block; height: 180px;
                                                                            overflow: hidden; text-align: center; margin: 0 auto 0 auto; background-color: White;">
                                                                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("ImageUrl") %>'
                                                                                OnClick="ImageButton1_Click" CommandArgument='<%# Eval("ProductID") %>' Height="180" />
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <asp:Label ID="lblProductName" runat="server" Text='<%# Eval("Name") %>' Style="font-weight: 700"></asp:Label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="border-top-style: dotted; border-bottom-style: dotted; border-width: 1px;
                                                                        border-color: #000000; padding: 5px 0px; vertical-align: bottom;">
                                                                        <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                                                                        грн.
                                                                        <asp:HiddenField ID="hfProductID" runat="server" Value='<%# Eval("ProductID") %>' />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="padding-top: 5px; vertical-align: bottom;" class="buttons">
                                                                        <asp:Button ID="btnAddToCart" runat="server" Text="Написать" CommandArgument='<%# Eval("ProductID") %>'
                                                                            Width="100%" Height="30px" BorderColor="Black" BorderStyle="solid" BorderWidth="1px"
                                                                            OnClick="btnAddToCart_Click" CausesValidation="false" BackColor="#666699" ForeColor="White"
                                                                            Style="overflow: hidden;" CssClass="btn" />
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                    </ItemTemplate>
                                                    <ItemStyle Width="33%" />
                                                </asp:DataList>
                                            </div>
                                            <div style="min-height: 10px; clear: both">
                                            </div>
                                        </div>
                                        
                                    </asp:Panel>
                                    <asp:Panel ID="pnlDetails" runat="server" ScrollBars="Auto" BorderColor="Black" BorderStyle="Inset"
                                        BorderWidth="0" Visible="false" Style="overflow: hidden; min-height: 600px;">
                                        <div style="display: block; float: left; padding: 20px; width: 582px">
                                            <asp:Label ID="lblProductName" runat="server" Text='<%# Eval("Name") %>' Style="font-weight: 700;
                                                font-size: 20px; padding: 20px 20px 0px 0px; width: 350px; border-color: Red;"></asp:Label></div>
                                        <div style="border: 2px solid Black; display: block; float: left; margin: 0px 30px 30px 20px;
                                            height: 200px; width: 234px; text-align: center; overflow: hidden; background-color: white;">
                                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("ImageUrl") %>' Height="200"
                                                BorderColor="Black" BorderStyle="Solid" BorderWidth="0px" Style="margin: 0; padding: 0;" /></div>
                                        <div style="left: 350px; border-color: Red; width: 364px; vertical-align: top; height: 204px;
                                            margin-left: 10px; display: inline-block;">
                                            В наличии
                                            <div style="background-color: #FFFFFF; border: 1px solid #EEEEEE; 
                                                -webkit-border-radius: 3px 3px 3px 3px;
                                                -moz-border-radius: 3px 3px 3px 3px;
                                                -o-border-radius: 3px 3px 3px 3px;
                                                border-radius: 3px 3px 3px 3px;
                                                width: 300px; -webkit-box-shadow: 0px 4px 3px -3px rgba(0, 0, 0, 0.28);-moz-box-shadow: 0px 4px 3px -3px rgba(0, 0, 0, 0.28);-o-box-shadow: 0px 4px 3px -3px rgba(0, 0, 0, 0.28);box-shadow: 0px 4px 3px -3px rgba(0, 0, 0, 0.28); color: #000;
                                                font-family: Arial,sans-serif; font-size: 13px; line-height: 14.6333px; float: left;
                                                margin: 10px 10px 10px 0px; padding: 10px 15px 15px 0px; border-color: Red">
                                                <div style="border-color: #9DB9DA; border-color: Red;">
                                                    <div style="border-color: Red; display: inline-block; margin-bottom: -3px; vertical-align: middle;
                                                        border-color: #9DB9DA;">
                                                        <div style="margin: 10px 0px 0px 20px; font-size: 24px; line-height: 28px; font-weight: bold;
                                                            color: #094581;">
                                                            <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                                                            грн.
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div style="border-color: Red; padding: 0px 0px 10px 0px;">
                                                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("ProductID") %>' />
                                                <asp:Button ID="btnWriteMessage" runat="server" Text="Написать" CommandArgument='<%# Eval("ProductID") %>'
                                                    Width="120" BorderColor="Black" BorderStyle="Inset" BorderWidth="1px" CausesValidation="false"
                                                    Style="display: inline-block; width: 195px; height: 37px; border-color: #FFF;
                                                    border-radius: 3px 3px 3px 3px;
-moz-border-radius: 3px 3px 3px 3px;
-webkit-border-radius: 3px 3px 3px 3px;
                                                    display: inline-block; 
                                                    position: relative; 
                                                    color: #FFF; 
                                                    background: transparent -webkit-linear-gradient(center top , #7A7A7A, #444) repeat scroll 0% 0%;
                                                    background: transparent -webkit-gradient(center top , #7A7A7A, #444) repeat scroll 0% 0%;
                                                    background: transparent -ms-linear-gradient(center top , #7A7A7A, #444) repeat scroll 0% 0%;
                                                    background:transparent -moz-linear-gradient(center top , #517BA5, #094581)repeat scroll 0% 0%;
                                                    background: transparent -o-linear-gradient(center top , #7A7A7A, #444) repeat scroll 0% 0%;
                                                    
                                                    
                                                    padding: 0px;
                                                    border-style: solid; 
                                                    border-width: 1px; 
                                                    font-weight: normal; 
                                                    -webkit-box-shadow: -1px 1px 2px rgba(0, 0, 0, 0.28);
                                                    -moz-box-shadow: -1px 1px 2px rgba(0, 0, 0, 0.28);
                                                    -o-box-shadow: -1px 1px 2px rgba(0, 0, 0, 0.28);
                                                    box-shadow: -1px 1px 2px rgba(0, 0, 0, 0.28);"
                                                    BackColor="#9999FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="btnWriteMessage_Click" />
                                            </div>
                                            <div class="phone">
                                            </div>
                                            <asp:Label ID="lblTelefon2" runat="server" Text=""></asp:Label>
                                        </div>
                                        <br />
                                        <div style="padding: 10px;" class="title">
                                            <asp:Label ID="lblProductDescription" runat="server" Text='' Style="margin: 10px 0px;"
                                                OnPreRender="lblProductDescription_PreRender" CssClass="title"></asp:Label><%# Eval("Description") %>
                                        </div>
                                        </div>
                                    </asp:Panel>
                                    
                                </td>
                            </tr>
                            <tr><td>
                            
                            </td><td>
                            <div id="pageall" runat="server" style="text-align:center;">
                                            <%--<asp:Button ID="btnfirst" runat="server" Font-Bold="true" Text="<<" Height="31px"
                                                        Width="43px" OnClick="btnfirst_Click" />--%>
                                            <asp:Button ID="btnprevious" runat="server" Font-Bold="true" Text="<" OnClick="btnprevious_Click"
                                                Height="30px" Width="30px" BorderWidth="0" BorderColor="Transparent" BackColor="Transparent" />
                                            <asp:Button ID="btnFirstPage" runat="server" Text="1" BorderWidth="0" BorderColor="Transparent"
                                                BackColor="Transparent" OnClick="btnFirstPage_Click" />...
                                            <asp:Button ID="btnLastPage" runat="server" Text="" BorderWidth="0" BorderColor="Transparent"
                                                BackColor="Transparent" OnClick="btnLastPage_Click" />
                                            <asp:Button ID="btnnext" runat="server" Font-Bold="true" Text=">" OnClick="btnnext_Click"
                                                Height="30px" Width="30px" BorderWidth="0" BorderColor="Transparent" BackColor="Transparent" />
                                            <%--<asp:Button ID="btnlast" runat="server" Font-Bold="true" Text=">>" Height="31px"
                                                        Width="43px" OnClick="btnlast_Click" />--%>
                                        </div>
                            </td></tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Panel ID="pnlCheckOut" runat="server" Width="100%" ScrollBars="Auto" BorderColor="Black"
                                        BorderStyle="Inset" BorderWidth="0" Visible="false" BackColor="White">
                                        <div class="writeme">
                                            <div class="popup">
                                                <table align="center" style="width: 400px; text-align: center;">
                                                    <tr>
                                                        <td align="left">
                                                            &nbsp;
                                                        </td>
                                                        <td align="right" style="vertical-align: top; margin: 0px; padding: 0px;">
                                                            <asp:Button ID="btnClose" runat="server" Text="X" BackColor="Transparent" Font-Size="Large"
                                                                EnableTheming="False" Height="30px" OnClick="btnClose_Click" Width="30px" CausesValidation="false"
                                                                BorderColor="Transparent" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="left">
                                                            Имя:
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:TextBox ID="txtCustomerName" runat="server" Width="345px" Style="margin-left: 0px"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
                                                                ControlToValidate="txtCustomerName" ForeColor="Red"></asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="left">
                                                            Телефон:
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:TextBox ID="txtCustomerPhoneNo" runat="server" Width="345px" MaxLength="10"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"
                                                                ControlToValidate="txtCustomerPhoneNo" ForeColor="Red"></asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="left">
                                                            E-mail:
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:TextBox ID="txtCustomerEmailID" runat="server" Width="345px"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"
                                                                ControlToValidate="txtCustomerEmailID" ForeColor="Red"></asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="left">
                                                            Сообщение:
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="left">
                                                            &nbsp;
                                                            <asp:TextBox ID="txtCustomerMessage" runat="server" Width="345px" Height="81" TextMode="MultiLine"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <br />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:HiddenField ID="hfProductID" runat="server" Value='<%# Eval("ProductID") %>' />
                                                            <asp:Button ID="btnPlaceOrder" runat="server" Text="Сохранить" Style="font-weight: 700;"
                                                                Width="90" OnClick="btnPlaceOrder_Click" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter Valid EmailID"
                                                                ForeColor="Red" ControlToValidate="txtCustomerEmailID" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </asp:Panel>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center" style="background-color:Black; height:40px;color:White;text-decoration:none;">
                                    Нужен 
                                    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" ForeColor="White" style="text-decoration:none;"><asp:Label ID="lblFooter" runat="server" Text="Label" ForeColor="White" ></asp:Label>?
                                    </asp:LinkButton> | <a href="Admin/Login.aspx" target="_blank" style="text-decoration:none;color:Gray;">AdminPanel</a><div style="float:right;margin-right:10px;"><asp:Label ID="lbl_Count" runat="server" ForeColor="Gray" /></div>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="ScriptManager1" />
        </Triggers>
    </asp:UpdatePanel>
    </form>
</body>
</html>
