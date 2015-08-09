<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Mag.Admin.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin: 200px;">
        <table align="center" class="style1" style="border: 1px ridge #999999; width: 450px;">
            <tr>
                <td align="center" colspan="2">
                    <asp:Label ID="lblHeader" runat="server" Font-Names="Ahraroni" ForeColor="#0033CC" Text=""
                        Style="font-weight: 700"></asp:Label>
                    <hr />
                </td>
            </tr>
            <tr>
                <td align="center" style="width: 50%">
                    Логин:
                </td>
                <td style="width: 50%">
                    <asp:TextBox ID="txtLoginId" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" style="width: 50%">
                    Пароль:
                </td>
                <td style="width: 50%">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" style="width: 50%">
                    &nbsp;
                </td>
                <td style="width: 50%">
                    <asp:Button ID="btnLogin" runat="server" Text="Войти" 
                        onclick="btnLogin_Click" />
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Label ID="lblAlert" runat="server" Font-Names="Ahraroni" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>

