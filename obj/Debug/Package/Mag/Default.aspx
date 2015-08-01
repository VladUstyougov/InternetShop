<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Mag.Default" %>

<%@ Register Src="Modal.ascx" TagName="Modal" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta charset="utf-8">
    <title></title>
    <style type="text/css">
        .buttons
        {
            box-shadow: -1px 2px 2px rgba(0, 0, 0, 0.28);
            /*box-shadow: 0 15px 20px rgba(0,0,0,.22),0 3px 3px rgba(0,0,0,.3);*/
            border-radius: 2px;
        }
        .btn
        {
            background: transparent -moz-linear-gradient(center top , #7A7AFF, #444) repeat scroll 0% 0%;
        }
        h1
        {
            padding: 0px;
            margin: 0px;
            width: 300px;
            display: inline;
        }
        .phone
        {
            margin: 0px 2px 0px 0px;
            float: left;
            padding: 0px;
            width: 30px;
            height: 24px; /* background-position: 0px 2px; */
            background-image: url("/images/phone.png");
            display: inline-block;
        }
        .phon1
        {
            font-size: 25px;
            font-weight:bold;
            padding: 7px;
            width: 300px;
            margin: 7px;
            border-radius: 2px; /*height: 25px;*/
            background-color: rgba(255, 255, 255, 0.85);
            border-color: red;
            display: inline-block;
        }
        body
        {
            background: #A5B9CD url("/images/texture.png") repeat scroll 50% 0px;
            margin: 0px;
            padding: 0px;
            /*background-color: #A5B9CD;*/
        }
        .style1
        {
            width: 990px;
            background-color: #A5B9CD;
            border-radius: 4px;
        }
        .style2
        {
            width: 633px;
            text-align: left;
        }
        .style3
        {
            width: 270px;
            text-align: center;
        }
        .style4
        {
            background-color: #A5B9CD;
            width: 200px;
            text-align: center;
        }
        .style6
        {
            width: 260px;
            text-align: left;
        }
        .style7
        {
            width: 427px;
            text-align: center;
        }
        .style8
        {
            width: 108px;
            text-align: center;
        }
        .writeme
        {
            border: 0px ridge #FFFF00;
            overflow: hidden;
            background-color: rgba(0, 0, 0, 0.65);
            color: #333;
            cursor: default;
            display: block;
            top: 0px;
            left: 0px;
            right: 0px;
            bottom: 0px;
            position: absolute;
            text-align: center;
            font-family: Arial,sans-serif;
            height: 500%;
        }
        .overlay
        {
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            z-index: 10;
            display: none; /* фон затемнения */
            background-color: rgba(0, 0, 0, 0.65);
            position: fixed; /* фиксированное поцизионирование */
            cursor: default; /* тип курсара */
        }
        /* активируем слой затемнения */
        .overlay:target
        {
            display: block;
        }
        /* стили модального окна */
        .popup
        {
            display:block;
            float:left;
            border: 2px solid Gray;
            top: 20%;
            right: 0;
            /*left: 30%;*/
            font-size: 14px;
            z-index: 99999;
            margin: 0;
            width: 400px;
            min-width: 320px;
            max-width: 600px; /* фиксированное позиционирование, окно стабильно при прокрутке */
            position: fixed;
            padding: 0px 0px 15px 15px; /*border: 1px solid #383838;*/
            background: #fefefe; /* скругление углов */
            -webkit-border-radius: 4px;
            -moz-border-radius: 4px;
            -ms-border-radius: 4px;
            border-radius: 4px;
            font: 14px/18px 'Tahoma' , Arial, sans-serif; /* внешняя тень */
            -webkit-box-shadow: 0 15px 20px rgba(0,0,0,.22),0 19px 60px rgba(0,0,0,.3);
            -moz-box-shadow: 0 15px 20px rgba(0,0,0,.22),0 19px 60px rgba(0,0,0,.3);
            -ms-box-shadow: 0 15px 20px rgba(0,0,0,.22),0 19px 60px rgba(0,0,0,.3);
            box-shadow: 0 15px 20px rgba(0,0,0,.22),0 19px 60px rgba(0,0,0,.3);
            -webkit-transform: translate(-50%, -500%); /*-ms-transform: translate(-50%, -500%);
            -o-transform: translate(-50%, -500%);
            transform: translate(-50%, -500%);*/
            -webkit-transition: -webkit-transform 0.6s ease-out;
            -moz-transition: -moz-transform 0.6s ease-out;
            -o-transition: -o-transform 0.6s ease-out;
            transition: transform 0.6s ease-out;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
        <ContentTemplate>
            <table align="center" class="style1">
                <tr>
                    <td>
                        <table align="center" class="style1" style='border-bottom-style: ridge; border-width: medium;
                            border-color: #9933FF; background-color: #ffffff; background-image: url(/Images/header3.jpg);
                            background-position: center; height: 280px;'>
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
                                <td class="style3" valign="middle">
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
                                <td class="style2">
                                    &nbsp;
                                    <asp:Label ID="lblCategoryName" runat="server" Font-Size="15pt" ForeColor="#6600CC"></asp:Label>
                                </td>
                                <td class="style3" style="border-left-style: ridge; border-width: thin; border-color: #9900FF">
                                    &nbsp;
                                    <asp:Label ID="lblProducts" runat="server" Text="Products" Font-Size="15pt" ForeColor="#6600CC"></asp:Label>
                                </td>
                            </tr>
                        </table>--%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblCategoryName" runat="server" Font-Size="15pt" ForeColor="#6600CC"></asp:Label>
                        <asp:Label ID="lblProducts" runat="server" Text="Наш каталог" Font-Size="15pt" ForeColor="#6600CC" style="margin-left: 50px;"></asp:Label>
                        <table align="center" class="style1">
                            <tr>
                                <td class="style3" valign="top" align="center">
                                    <asp:Panel ID="pnlCategories" runat="server" ScrollBars="Auto" Height="500" BorderColor="Black"
                                        BorderStyle="Inset" BorderWidth="1">
                                        <asp:DataList ID="dlCategories" runat="server" BackColor="White" BorderColor="#CCCCCC"
                                            BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal"
                                            Width="252">
                                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                            <HeaderStyle BackColor="#333333" Font-Bold="true" ForeColor="White" />
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lbtnCategory" runat="server" Text='<%# Eval("CategoryName") %>'
                                                    CommandArgument='<%# Eval("CategoryID") %>' OnClick="lbtnCategory_Click"></asp:LinkButton>
                                            </ItemTemplate>
                                            <SelectedItemStyle BackColor="#CC3333" Font-Bold="true" ForeColor="White" />
                                        </asp:DataList>
                                    </asp:Panel>
                                </td>
                                <td class="style2" valign="top">
                                    <asp:Panel ID="pnlProducts" runat="server" ScrollBars="Auto" Height="1000px" BorderColor="Black"
                                        BorderStyle="Inset" BorderWidth="0px">
                                        <asp:DataList ID="dlProducts" runat="server" RepeatColumns="3" Width="100%" Font-Bold="false"
                                            Font-Italic="false" Font-Overline="false" Font-Strikeout="false" Font-Underline="false">
                                            <ItemTemplate>
                                                <div align="left" style="padding-bottom: 50px;">
                                                    <table cellspacing="1" class="style4" style="border: 0px ridge #9900FF; ">
                                                        
                                                        <tr>
                                                            <td>
                                                                <div style="border: ridge 1px black; width: 198px; display: block; height: 180px;">
                                                                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("ImageUrl") %>'
                                                                        OnClick="ImageButton1_Click" CommandArgument='<%# Eval("ProductID") %>' Width="198"
                                                                        Height="180" />
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="border-bottom-style: dotted; border-width: 1px; border-color: #000000;padding: 5px 0px;">
                                                                <asp:Label ID="lblProductName" runat="server" Text='<%# Eval("Name") %>' Style="font-weight: 700"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="border-bottom-style: dotted; border-width: 1px; border-color: #000000;padding: 5px 0px;">
                                                                <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Price") %>' ></asp:Label>
                                                                грн.
                                                                <asp:HiddenField ID="hfProductID" runat="server" Value='<%# Eval("ProductID") %>' />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="padding-top: 7px;" class="buttons">
                                                                <asp:Button ID="btnAddToCart" runat="server" Text="Написать" CommandArgument='<%# Eval("ProductID") %>'
                                                                    Width="100%" Height="30px" BorderColor="Black" BorderStyle="solid" BorderWidth="1px" OnClick="btnAddToCart_Click"
                                                                    CausesValidation="false" BackColor="#666699" ForeColor="White" CssClass="btn"/>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </ItemTemplate>
                                            <ItemStyle Width="30%" />
                                        </asp:DataList>
                                    </asp:Panel>
                                    <asp:Panel ID="pnlDetails" runat="server" ScrollBars="Auto" Height="900" BorderColor="Black"
                                        BorderStyle="Inset" BorderWidth="1" Visible="false">
                                        <div style="display: block; float: left; padding: 20px; width: 582px">
                                            <asp:Label ID="lblProductName" runat="server" Text='<%# Eval("Name") %>' Style="font-weight: 700;
                                                font-size: 20px; padding: 20px 20px 0px 0px; width: 350px; border-color: Red;"></asp:Label></div>
                                        <div style="border-color: Red; display: block; float: left; padding: 0px 20px;">
                                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("ImageUrl") %>' Width="200"
                                                Height="200" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Style="margin: 10px 10px 10px 0px;" /></div>
                                        <div style="border-color: Red; width: 364px; vertical-align: top; height: 204px;
                                            display: inline-block;">
                                            В наличии
                                            <div style="background-color: #FFFFFF; border: 1px solid #EEEEEE; border-radius: 3px;
                                                width: 300px; box-shadow: 0px 4px 3px -3px rgba(0, 0, 0, 0.28); color: #000;
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
                                                    border-radius: 3px; display: inline-block; position: relative; color: #FFF; background: transparent -moz-linear-gradient(center top , #7A7A7A, #444) repeat scroll 0% 0%;
                                                    background-image: -moz-linear-gradient(center top , #517BA5, #094581); padding: 0px;
                                                    border-style: solid; border-width: 1px; font-weight: normal; box-shadow: -1px 1px 2px rgba(0, 0, 0, 0.28);"
                                                    BackColor="#9999FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="btnWriteMessage_Click" />
                                            </div>
                                            <div class="phone">
                                            </div>
                                            <asp:Label ID="lblTelefon2" runat="server" Text=""></asp:Label>
                                        </div>
                                        <br />
                                        <asp:Label ID="lblProductDescription" runat="server" Text=''
                                            Style="margin: 10px 0px;"></asp:Label><%# Eval("Description") %>
                                        </div>
                                    </asp:Panel>
                                    <asp:Panel ID="pnlMyCart" runat="server" ScrollBars="Auto" Height="500" BorderColor="Black"
                                        BorderStyle="Inset" BorderWidth="1" Visible="false">
                                        <table align="center" cellspacing="1">
                                            <tr>
                                                <td align="center">
                                                    pnlMyCart
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Panel ID="pnlCheckOut" runat="server" Width="500px" ScrollBars="Auto" BorderColor="Black"
                                        BorderStyle="Inset" BorderWidth="0" Visible="false" BackColor="White">
                                        <div class="writeme">
                                            <div class="popup">
                                                <table align="center" style="width: 400px;text-align:center;" >
                                                    <tr>
                                                        <td align="left">
                                                            &nbsp;
                                                        </td>
                                                        <td align="right" style="vertical-align:top; margin:0px; padding:0px;">
                                                            <asp:Button ID="btnClose" runat="server" Text="X" BackColor="Transparent" Font-Size="Large"
                                                                EnableTheming="False" Height="30px" OnClick="btnClose_Click" Width="30px" CausesValidation="false" BorderColor="Transparent"/>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="left">
                                                            Имя:
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:TextBox ID="txtCustomerName" runat="server" Width="345px" 
                                                                style="margin-left: 0px"></asp:TextBox>
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
                                                            <asp:TextBox ID="txtCustomerMessage" runat="server" Width="345px" Height="81" 
                                                                TextMode="MultiLine"></asp:TextBox>
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
                                    
                                    <asp:Panel ID="pnlMessagePlacedSuccessfully" runat="server" Visible="false">
                                        <div style="text-align: center;">
                                            <br />
                                            <label>
                                                Message Placed Successfully</label>
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                        </div>
                                    </asp:Panel>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center" style="border: thin ridge #9900FF;">
                                    &nbsp;&copy;<a href="#">ShoppingCartOnline</a> || <a href="Admin/Login.aspx" target="_blank">
                                        AdminPanel</a>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
    </form>
</body>
</html>
