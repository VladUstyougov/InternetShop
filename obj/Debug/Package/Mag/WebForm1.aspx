<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Mag.WebForm1" %>

<%@ Register src="Modal.ascx" tagname="Modal" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
    .writeme
        {
            overflow: hidden;
            background-color: rgba(0, 0, 0, 0.85);
            color: #333;
            cursor: default;
            display: block;
            top: 0px;
            left: 0px;
            right: 0px;
            bottom: 0px;
            position: fixed;
            text-align: center;
            height: 100%;
            font-family: Arial,sans-serif;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="writeme">
        
        <uc1:Modal ID="Modal1" runat="server" />
        
  </div>

    </form>
</body>
</html>
