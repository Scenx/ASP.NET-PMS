<%@ Page Language="C#" AutoEventWireup="true" CodeFile="xinwenxiangxi.aspx.cs" Inherits="xinwenxiangxi" %>

<%@ Register Src="../userControl/foot.ascx" TagName="foot" TagPrefix="uc2" %>
<%@ Register Src="../userControl/head.ascx" TagName="head" TagPrefix="uc4" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>^_^  小区物业内部管理网-------新闻信息维护详情  ^_^</title>
</head>
<body background="../image/index_03.jpg">
    <form id="form1" runat="server">
    <div align="center">
        <div>
            <table id="Table1" align="center" border="1" cellpadding="1" cellspacing="1" width="780" style="padding-right: 0px; padding-left: 0px; background-image: url(../image/guanli_03.jpg); padding-bottom: 0px; margin: 0px; padding-top: 0px">
                <tr>
                    <td align="center" style="height: 132px">
                        <uc4:head ID="Head1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td align="center" style="height: 22px">
                    </td>
                </tr>
                <tr style="font-size: 12pt">
                    <td style="height: 695px" align="left">
                        <table id="Table3" border="0" cellpadding="0" cellspacing="0" style="width: 828px;
                            height: 528px" width="828">
                            <tr>
                                <td style="width: 213px; height: 268px" valign="top">
                                    <table id="Table4" border="0" cellpadding="0" cellspacing="0" style="border-right: #ff9900 1px solid"
                                        width="100%">
                                        <tr>
                                            <td align="left" style="height: 29px">
                                                &nbsp;<img id="imgCzq" alt="" src="../image/banner.gif" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="height: 21px" rowspan="1">
                                                </td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height: 40px">
                                                <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" OnClick="LinkButton2_Click">新闻信息维修</asp:LinkButton></td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height: 27px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height: 27px">
                                                <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">新闻信息查询</asp:LinkButton></td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height: 420px">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td style="width: 630px; height: 268px" valign="top">
                                    <table id="Table6" border="0" cellpadding="1" cellspacing="0" width="615">
                                        <tr>
                                            <td align="center" style="font-size: 22px; width: 619px; font-family: 隶书; height: 53px">
                                                <hr size="3" style="font-size: 1px; width: 100%; color: #ff9900; height: 3px" width="100%" />
                                                &nbsp;<asp:Label ID="Label5" runat="server" Height="34px" Text="网站新闻详细信息" Width="380px" Font-Bold="True" Font-Size="X-Large" ForeColor="Maroon"></asp:Label>
                                                &nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="font-size: 24px; width: 619px; color: #0000ff; font-family: 隶书;
                                                height: 147px" valign="top">
                                                <font color="#ff6600" face="宋体">
                                                    <table id="Table7" border="0" cellpadding="0" cellspacing="0" style="border-top: #ff9900 1px solid;
                                                        border-bottom: #ff9900 1px solid" width="100%">
                                                        <tr>
                                                            <td colspan="1" rowspan="1" style="width: 406px" valign="top">
                                                                <table>
                                                                    <tr>
                                                                        <td style="width: 100px">
                                                                            <asp:Label ID="lblZnbt" runat="server" Font-Names="幼圆" Font-Size="Medium"
                                                                                Text="网站标题:" Width="132px" ForeColor="Goldenrod"></asp:Label></td>
                                                                        <td style="width: 100px">
                                                                            <asp:Label ID="lbltitle" runat="server" Font-Names="幼圆" Font-Size="Medium" ForeColor="Goldenrod"
                                                                                Text="Label" ToolTip="新闻标题"></asp:Label></td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                            <td style="width: 104px;">
                                                            </td>
                                                            <td style="width: 68px;">
                                                            </td>
                                                            <td>
                                                            </td>
                                                            <td style="width: 8px;">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="1" rowspan="1" style="width: 406px" valign="top" align="left">
                                                            </td>
                                                            <td style="width: 104px; height: 34px">
                                                            </td>
                                                            <td style="width: 68px; height: 34px">
                                                            </td>
                                                            <td style="height: 34px">
                                                            </td>
                                                            <td style="width: 8px; height: 34px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="1" rowspan="10" style="width: 406px" valign="top" align="center">
                                                                <asp:TextBox ID="TextBox1" runat="server" BackColor="White" BorderColor="LightSteelBlue"
                                                                    Height="382px" TextMode="MultiLine" Width="369px" ToolTip="小区物业新闻内容"></asp:TextBox>
                                                                &nbsp;</td>
                                                            <td style="width: 104px; height: 30px" align="left" valign="top">
                                                                <asp:Label ID="lblTime" runat="server" Font-Names="幼圆" Font-Size="Medium" Text="发布时间:" ForeColor="Goldenrod"></asp:Label></td>
                                                            <td style="width: 68px; height: 30px" valign="top">
                                                                <asp:Label ID="lblFbsj" runat="server" Font-Names="幼圆" Font-Size="Medium" Text="Label" ForeColor="Goldenrod" ToolTip="发布时间" Width="102px"></asp:Label></td>
                                                            <td style="height: 30px">
                                                            </td>
                                                            <td style="width: 8px; height: 30px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 104px; height: 34px">
                                                                </td>
                                                            <td style="width: 68px; height: 34px">
                                                                </td>
                                                            <td style="height: 34px">
                                                            </td>
                                                            <td style="width: 8px; height: 34px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 104px; height: 20px" align="left">
                                                                <asp:Label ID="lblPerson" runat="server" Font-Names="幼圆" Font-Size="Medium" Text="发表人:" ForeColor="Goldenrod"></asp:Label></td>
                                                            <td style="width: 68px; height: 20px">
                                                                <asp:Label ID="lblfbr" runat="server" Font-Names="幼圆" Font-Size="Medium" Text="Label" ForeColor="Goldenrod" ToolTip="发布人"></asp:Label></td>
                                                            <td style="height: 20px">
                                                            </td>
                                                            <td style="width: 8px; height: 20px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 104px; height: 20px">
                                                            </td>
                                                            <td style="width: 68px; height: 20px">
                                                            </td>
                                                            <td style="height: 20px">
                                                            </td>
                                                            <td style="width: 8px; height: 20px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 104px; height: 35px" align="left">
                                                                <asp:Label ID="lblleibie" runat="server" Font-Names="幼圆" Font-Size="Medium" Text="新闻类别:" ForeColor="Goldenrod"></asp:Label></td>
                                                            <td style="width: 68px; height: 35px">
                                                                <asp:Label ID="lblzzlb" runat="server" Font-Names="华文中宋" Font-Size="Medium" Text="Label" ForeColor="Goldenrod" ToolTip="在职类别"></asp:Label></td>
                                                            <td style="height: 35px">
                                                            </td>
                                                            <td style="width: 8px; height: 35px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 104px; height: 35px">
                                                            </td>
                                                            <td style="width: 68px; height: 35px">
                                                            </td>
                                                            <td style="height: 35px">
                                                            </td>
                                                            <td style="width: 8px; height: 35px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left" style="width: 104px; height: 58px">
                                                                <asp:Label ID="lblrqzs" runat="server" Font-Names="幼圆" Font-Size="Medium" Text="人气指数:" ForeColor="Goldenrod"></asp:Label></td>
                                                            <td style="width: 68px; height: 58px">
                                                                <asp:Label ID="lblzs" runat="server" Font-Names="幼圆" Font-Size="Medium" Text="Label" ForeColor="Goldenrod" ToolTip="人气指数"></asp:Label></td>
                                                            <td style="height: 58px">
                                                            </td>
                                                            <td style="width: 8px; height: 58px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="center" style="width: 104px; height: 37px">
                                                            </td>
                                                            <td style="width: 68px; height: 37px">
                                                            </td>
                                                            <td style="height: 37px">
                                                            </td>
                                                            <td style="width: 8px; height: 37px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left" style="width: 104px; height: 36px">
                                                                <asp:Label ID="lblbf" runat="server" Font-Names="幼圆" Font-Size="Medium"
                                                                    Text="状 态:" Width="54px" ForeColor="Goldenrod"></asp:Label></td>
                                                            <td style="width: 68px; height: 36px">
                                                                <asp:Label ID="lblbz" runat="server" Font-Names="幼圆" Font-Size="Medium" Text="Label" ForeColor="Goldenrod" ToolTip="新闻备注"></asp:Label></td>
                                                            <td style="height: 36px">
                                                            </td>
                                                            <td style="width: 8px; height: 36px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="center" colspan="2" style="height: 32px">
                                                                <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Small" OnClick="LinkButton1_Click">返回首页</asp:LinkButton></td>
                                                            <td style="height: 32px">
                                                            </td>
                                                            <td style="width: 8px; height: 32px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right" colspan="3" style="height: 49px">
                                                                &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                                            </td>
                                                            <td style="height: 49px">
                                                            </td>
                                                            <td style="width: 8px; height: 49px">
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    &nbsp; </font>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                        <uc2:foot ID="Foot1" runat="server" />
                    </td>
                </tr>
            </table>
        </div>
    
    </div>
    </form>
</body>
</html>
