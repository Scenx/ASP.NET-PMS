
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default2" %>

<%@ Register Src="userControl/syhead.ascx" TagName="syhead" TagPrefix="uc2" %>

<%@ Register Src="userControl/foot.ascx" TagName="foot" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>^_^  小区物业内部管理网-------网站首页  ^_^</title>
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
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_displayStatusMsg(msgStr) { 
  status=msgStr;
  document.MM_returnValue = true;
}
//-->
</script>
<script>
function click() {
if (event.button==2) {window.external.addFavorite('http://****.com','《小区物业内部管理网》') }}
document.onmousedown=click
</script>
    <link href="css/css.css" rel="stylesheet" type="text/css" />
    <link href="css/css.css" rel="stylesheet" type="text/css" />
    <link href="css/css.css" rel="stylesheet" type="text/css" />
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" onLoad="MM_displayStatusMsg('欢迎光临小区物业内部管理主页!');return document.MM_returnValue" background="image/index_03.jpg" >
    <form id="form1" runat="server">
    <div align="center">
        <table border="1"　background="images/index_03.jpg">
            <tr>
                <td align="left" colspan="3" style="padding-right: 0px; padding-left: 0px; padding-bottom: 0px;
                    margin: 0px; width: 714px; padding-top: 0px" valign="top">
                    &nbsp;<uc2:syhead ID="Syhead1" runat="server"  />
                </td>
            </tr>
            <tr>
                <td colspan="3" style="height: 140px; width: 741px;" valign="top">
                    <table>
                        <tr>
                            <td style="width: 100px; height: 727px;" valign="top">
                                <table>
                                    <tr>
                                        <td style="width: 95px" valign="top" align="center">
                                            <table>
                                                <tr>
                                                    <td colspan="2" style="height: 31px; width: 231px;" valign="top">
                                                        <asp:Image ID="imgYhzc" runat="server" ImageUrl="~/image/dengl_01.jpg" /></td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 231px; background-image: url(image/dengl_02.jpg); height: 104px;" colspan="2" rowspan="2" valign="top">
                                                        <div style="text-align: center">
                                                            <table>
                                                                <tr>
                                                                    <td style="width: 100px">
                                                                        &nbsp;<asp:Image ID="Image3" runat="server" ImageUrl="~/image/login_04.jpg" /></td>
                                                                    <td style="width: 100px">
                                                        <asp:TextBox ID="txtyhname" runat="server" Width="100px"></asp:TextBox></td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 100px">
                                                                        &nbsp;<asp:Image ID="Image4" runat="server" ImageUrl="~/image/login_06.jpg" Width="52px" /></td>
                                                                    <td style="width: 100px">
                                                        <asp:TextBox ID="txtyhmm" runat="server" TextMode="Password" Width="100px"></asp:TextBox></td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="2">
                                                                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/image/dl.gif" OnClick="ImageButton1_Click" />&nbsp;
                                                                        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/image/zc.gif" OnClick="ImageButton2_Click" />
                                                        &nbsp;&nbsp;</td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="2">
                                                                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">进入后台</asp:LinkButton></td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                        <asp:Label ID="lblxzchdl" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#FFC080"
                                                            Width="164px">请先注册!后登录...</asp:Label>
                                                        <asp:Label ID="lblshibai" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#FFC080"
                                                            Height="23px" Visible="False" Width="180px">恭喜你!登录成功...</asp:Label></td>
                                                </tr>
                                                <tr>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" rowspan="1" style="width: 231px; height: 7px" valign="top">
                                                        <asp:Image ID="Image1" runat="server" ImageUrl="~/image/dengl_03.jpg" Width="99%" /></td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" rowspan="1" style="width: 231px; height: 10px;" valign="top">
                                                        <asp:Image ID="Image5" runat="server" ImageUrl="~/image/gg1.gif" /></td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="background-image: url(image/gg2.gif); width: 231px; height: 21px"
                                                        valign="bottom">
                                                        <marquee direction=up style="width: 223%; height: 140px;"><asp:Label id="lblGgxx" runat="server" Width="222px" ForeColor="Black" Font-Size="Small" Font-Bold="False" Height="177px" Font-Names="宋体"></asp:Label></marquee>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" valign="bottom" style="background-image: url(image/rili_01.jpg); height: 34px; width: 231px;">
                                                        </td>
                                                </tr>
                                            </table>
                                <asp:Calendar ID="CalRq" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana"
                                    Font-Size="8pt" ForeColor="Black" Height="180px" Width="226px">
                                    <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                    <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                    <SelectorStyle BackColor="#CCCCCC" />
                                    <WeekendDayStyle BackColor="#FFFFCC" />
                                    <OtherMonthDayStyle ForeColor="#808080" />
                                    <NextPrevStyle VerticalAlign="Bottom" />
                                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                    <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                </asp:Calendar>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 95px" valign="top">
                                            <asp:Image ID="Image2" runat="server" Height="86px" ImageUrl="~/image/quai.gif" /></td>
                                    </tr>
                                </table>
                                </td>
                            <td style="width: 100px; height: 727px;" valign="top">
                                <table>
                                    <tr>
                                        <td style="width: 101px">
                                            <asp:Image ID="imgWzxw" runat="server" Height="50px" ImageUrl="~/image/xw.gif"
                                                Width="548px" /></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 101px; height: 174px;">
                                            <asp:GridView ID="gvXw" runat="server" AutoGenerateColumns="False" CellPadding="4"
                                                ForeColor="#333333" GridLines="None" Width="552px" Font-Names="华文新魏"  PageSize="1" OnRowDataBound="gvXw_RowDataBound">
                                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                <Columns>
                                                    <asp:BoundField DataField="title" HeaderText="新闻标题" />
                                                    <asp:BoundField DataField="fabushijian" HeaderText="发布时间" />
                                                    <asp:BoundField DataField="renqi" HeaderText="人气指数" />
                                                    <asp:HyperLinkField DataNavigateUrlFields="title" DataNavigateUrlFormatString="xinwenxinxi/xinwenxiangxi.aspx?title={0}"
                                                        HeaderText="详细信息" Text="详细信息" />
                                                </Columns>
                                                <RowStyle BackColor="#EFF3FB" />
                                                <EditRowStyle BackColor="#FF8000" />
                                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                                <HeaderStyle BackColor="Orange" BorderWidth="2px" Font-Bold="True" ForeColor="White" />
                                                <AlternatingRowStyle BackColor="White" />
                                            </asp:GridView>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" style="width: 101px; height: 10px">
                                            </td>
                                    </tr>
                                    <tr>
                                        <td align="right" style="width: 101px; height: 37px">
                                            <asp:Image ID="imgQfyh" runat="server" Height="41px" ImageUrl="~/image/qf.gif"
                                                Width="544px" /></td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="width: 101px">
                                            <asp:GridView ID="gvQf" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
                                                Width="552px" AutoGenerateColumns="False"    OnRowDataBound="gvQf_RowDataBound" Font-Bold="False" Font-Names="华文新魏">
                                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                <RowStyle BackColor="#EFF3FB" />
                                                <EditRowStyle BackColor="#FF8000" />
                                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                                <HeaderStyle BackColor="Orange" Font-Bold="True" ForeColor="White" BorderWidth="2px" />
                                                <AlternatingRowStyle BackColor="White" />
                                                <Columns>
                                                    <asp:BoundField DataField="name" HeaderText="欠费姓名" />
                                                    <asp:BoundField DataField="address" HeaderText="住址" />
                                                    <asp:BoundField DataField="leibie" HeaderText="欠费类别" Visible="False" />
                                                    <asp:BoundField DataField="stime" HeaderText="欠费时间" />
                                                    <asp:HyperLinkField DataNavigateUrlFields="name" DataNavigateUrlFormatString="qianfeixinxi/qianfeixiangxi.aspx?name={0}"
                                                        HeaderText="详细信息" Text="详细信息" />
                                                </Columns>
                                            </asp:GridView>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" style="width: 101px">
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <uc1:foot ID="Foot1" runat="server" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
