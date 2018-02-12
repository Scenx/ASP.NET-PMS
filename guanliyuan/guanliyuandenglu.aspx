<%@ Page Language="C#" AutoEventWireup="true" CodeFile="guanliyuandenglu.aspx.cs" Inherits="denglu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>^_^  小区物业内部管理网-------管理员登录  ^_^</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style>
<link href="css/css.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
a {
	font-size: 12px;
	color: #0000CC;
}
a:visited {
	color: #0000CC;
}
a:hover {
	color: #FF9600;
}
a:active {
	color: #FF9600;
}
-->
</style>
<script language="javascript" type="text/javascript">
// <!CDATA[



// ]]>
</script>
</head>
<body bgcolor="D9D8D8">
    <form id="form1" runat="server">
    <div><table width="580" height="372" border="0" align="center" cellpadding="0" cellspacing="0" id="__01" bgcolor="D9D8D8">
      <tr>
        <td colspan="3"><img src="../image/login_01.jpg" alt="" width="636" height="281" style="width: 635px"></td>
      </tr>
      <tr>
        <td colspan="3" style="height: 17px"><img src="../image/login_02.jpg" alt="" width="644" height="20" style="width: 635px"></td>
      </tr>
      <tr>
        <td width="36" valign="middle"><img src="../image/login_03.jpg" width="36" alt="" style="height: 57px"></td>
        <td width="564" valign="middle" bgcolor="#FFFFFF"><table width="86%" height="100%" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td width="11%"><img src="../image/login_04.jpg" width="60" height="34"></td>
              <td width="12%"></td>
              <td width="1%">&nbsp;<asp:TextBox ID="txtworkname" runat="server" Width="80px">admin</asp:TextBox></td>
              <td width="9%"><img src="../image/login_06.jpg" width="50" height="34"></td>
              <td width="12%"></td>
              <td width="1%" align="center">&nbsp;<asp:TextBox ID="txtworkpwd" runat="server" TextMode="Password" Width="80px">111</asp:TextBox></td>
              <td width="9%"><img src="../image/login_08.jpg" width="51" height="34"></td>
              <td width="12%"></td>
              <td width="1%">&nbsp;<asp:DropDownList ID="ddlQx" runat="server" Width="112px" Font-Bold="False" Font-Names="幼圆" Font-Size="Medium" ForeColor="Red">
                        <asp:ListItem Selected="True">管理员</asp:ListItem>
                        <asp:ListItem>普通员工</asp:ListItem>
                    </asp:DropDownList></td>
              <td width="30%">
                  <asp:ImageButton ID="imbtn" runat="server" ImageUrl="~/image/login_10.jpg"
                      OnClick="ImageButton1_Click" /><a href="#"></a></td>
            </tr>
        </table></td>
        <td style="width: 45px"><img src="../image/login_11.jpg" alt="" width="45" height="55" style="height: 55px"></td>
      </tr>
      <tr>
        <td colspan="3" style="height: 3px"><img src="../image/login_12.jpg" height="37" alt="" style="width: 635px" /></td>
      </tr>
    </table>
    <!-- ImageReady Slices (登录.psd) -->
<table width="100%" style="height:500px">
  <tr>
    <td bgcolor="D9D8D8" style="height: 600px " valign="middle">&nbsp;
        
    </td>
  </tr>
</table>
<!-- End ImageReady Slices -->
        &nbsp;</div>
        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    </form>
</body>
</html>
