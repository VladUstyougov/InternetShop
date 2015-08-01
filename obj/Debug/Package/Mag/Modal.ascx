<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Modal.ascx.cs" Inherits="Mag.Modal" %>
<asp:Panel runat="server" ID="panelMain" ToolTip="Введите ваш email и пароль для входа на сайт">
   <asp:Label runat="server" ID="Label1" AssociatedControlID="txtEmail" CssClass="req" Text="Ваш email"></asp:Label>:
   <br />
   <asp:TextBox runat="server" ID="txtEmail" AutoCompleteType="Email" MaxLength="255"></asp:TextBox>
   <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Необходимо ввести email."></asp:RequiredFieldValidator>
   <br />
   <br />
   <asp:Label runat="server" ID="Label2" AssociatedControlID="txtPassword" CssClass="req" Text="Пароль"></asp:Label>:
   <br />
   <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" MaxLength="255"></asp:TextBox>
   <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="Необходимо ввести пароль."></asp:RequiredFieldValidator>
   <br />
   <br />
   <asp:CheckBox ID="chkRememberMe" runat="server" Text="запомнить меня." />
   <br />
   <br />
   <asp:Literal ID="strError" runat="server" EnableViewState="False"></asp:Literal>
   <br />
   <asp:Button ID="butOk" runat="server" Text="Войти" OnClick="butOk_Click" />
   <asp:Button ID="butCancel" runat="server" Text="Отмена" CausesValidation="false" />
</asp:Panel>
<script type="text/javascript">
   $(document).ready(function()
   {
      $("#<%= this.panelMain.ClientID %>").css("display", "block");
      $("#<%= this.panelMain.ClientID %>").dialog
      ({
         autoOpen: false,
         modal: true,
         width: 400,
         height: 300,
         dialogClass: "popupDialog",
         resizable: false,
         overlay: { opacity: 0.5, background: "black" }
      });

      $(".lbPopupLink").click(function()
      {
         $("#<%= this.panelMain.ClientID %>").dialog("open");
         $("#<%= this.txtEmail.ClientID %>").focus();
         return false;
      });

      $("#<%= this.butCancel.ClientID %>").click(function()
      {
         $("#<%= this.panelMain.ClientID %>").dialog("close");
         return false;
      });
   });

   // Global variables
var __passwordCloneValues;

//
// Function that will close jQuery UI dialog, clone it back to aspnet form and perform submit.
// Should be applied to the dialog.
//
// Arguments:
//      butOkId — id of the submit button
//
$.fn.extend({
   dialogCloseAndSubmit: function(butOkId)
   {
      if (!Page_IsValid)
         return false;

      __passwordCloneValues = new Array();
      $(":password", $(this)).each(function()
      {
         __passwordCloneValues.push($(this).val());
      });
      __passwordCloneValues = __passwordCloneValues.reverse();

      var dlg = $(this).clone();
      $(this).dialog("destroy").remove();

      dlg.css("display", "none");
      $("form:first").append(dlg);
      $(":password", dlg).each(function()
      {
         $(this).val(__passwordCloneValues.pop());
      });
      $("#" + butOkId, dlg).click();

      return true;
   }
});

$("#<%= this.butOk.ClientID %>").click(function()
{
   return $("#<%= this.panelMain.ClientID %>").dialogCloseAndSubmit($(this).attr(«id»));
});
</script>