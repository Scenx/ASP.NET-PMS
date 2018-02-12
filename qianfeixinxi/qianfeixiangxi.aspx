<%@ Page Language="C#" AutoEventWireup="true" CodeFile="qianfeixiangxi.aspx.cs" Inherits="qianfei" %>

<%@ Register Src="../userControl/syhead.ascx" TagName="syhead" TagPrefix="uc2" %>

<%@ Register Src="../userControl/foot.ascx" TagName="foot" TagPrefix="uc1" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>^_^  小区物业内部管理网-------欠费用户详细信息  ^_^</title>
<script language="javascript" type="text/javascript">
<!--

function Table7_onclick() {

}

// -->
</script>
</head>
<body background="../image/index_03.jpg">
    <form id="form1" runat="server">
    <div>
        <div align="center">
            <div>
                <table id="Table1" align="center" border="1" cellpadding="1" cellspacing="1" width="780" style="background-image: url(../image/guanli_03.jpg)">
                    <tr>
                        <td align="center" style="height: 126px">
                            <uc2:syhead ID="Syhead1" runat="server" />
                            &nbsp;</td>
                    </tr>
                    <tr style="font-size: 12pt">
                        <td style="height: 695px">
                            <table id="Table3" border="0" cellpadding="0" cellspacing="0" style="width: 828px;
                                height: 528px" width="828">
                                <tr>
                                    <td style="width: 213px; height: 261px" valign="top">
                                        <table id="Table4" border="0" cellpadding="0" cellspacing="0" style="border-right: #ff9900 1px solid"
                                            width="100%">
                                            <tr>
                                                <td align="right" style="height: 29px">
                                                    <img id="imgCzq" alt="" src="../image/banner.gif" />&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td style="height: 16px">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="height: 21px">
                                                    <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" OnClick="LinkButton2_Click" >欠费用户信息查询</asp:LinkButton></td>
                                            </tr>
                                            <tr>
                                                <td align="center" style="height: 40px">
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" style="height: 36px">
                                                    <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" OnClick="LinkButton3_Click" >欠费用户信息审核</asp:LinkButton></td>
                                            </tr>
                                            <tr>
                                                <td align="center" style="height: 221px">
                                                    </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td style="width: 630px; height: 261px" valign="top">
                                        <table id="Table6" border="0" cellpadding="1" cellspacing="0" width="615">
                                            <tr>
                                                <td align="center" style="font-size: 22px; width: 619px; font-family: 隶书; height: 53px">
                                                    <hr size="3" style="font-size: 1px; width: 100%; color: #ff9900; height: 3px" width="100%" />
                                                    &nbsp;<asp:Label ID="Label5" runat="server" Height="34px" Text="欠费用户详细信息" Width="232px"></asp:Label>
                                                    &nbsp;
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" style="font-size: 24px; width: 619px; color: #0000ff; font-family: 隶书;
                                                    height: 145px" valign="top">
                                                    <font color="#ff6600" face="宋体">
                                                        <table id="Table7" border="0" cellpadding="0" cellspacing="0" style="border-top: #ff9900 1px solid;
                                                            border-bottom: #ff9900 1px solid" width="100%" language="javascript" onclick="return Table7_onclick()">
                                                            <tr>
                                                                <td colspan="1" rowspan="1" style="width: 13px" valign="top">
                                                                </td>
                                                                <td style="width: 54px; height: 34px">
                                                                </td>
                                                                <td style="width: 105px; height: 34px">
                                                                </td>
                                                                <td style="width: 119px; height: 34px">
                                                                </td>
                                                                <td style="width: 68px; height: 34px">
                                                                </td>
                                                                <td style="width: 35px; height: 34px">
                                                                </td>
                                                                <td style="width: 131px; height: 34px">
                                                                </td>
                                                                <td style="width: 36px; height: 34px">
                                                                </td>
                                                                <td style="width: 117px; height: 34px">
                                                                </td>
                                                                <td style="width: 8px; height: 34px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="1" rowspan="10" style="width: 13px" valign="top">
                                                                    &nbsp;&nbsp;</td>
                                                                <td style="width: 54px; height: 34px">
                                                                </td>
                                                                <td style="width: 105px; height: 34px">
                                                                                <asp:Label ID="Label31" runat="server" Font-Names="幼圆" Font-Size="Medium" ForeColor="RoyalBlue"
                                                                                    Text="欠费用户名:" Font-Bold="False" Width="132px"></asp:Label></td>
                                                                <td style="width: 119px; height: 34px">
                                                                                <asp:Label ID="lblqfname" runat="server" Font-Names="幼圆" Font-Size="Medium" ForeColor="RoyalBlue"
                                                                                    Text="Label" Font-Bold="False"></asp:Label></td>
                                                                <td style="width: 68px; height: 34px">
                                                                                </td>
                                                                <td style="width: 35px; height: 34px">
                                                                    <asp:Label ID="Label7" runat="server" Font-Names="幼圆" Font-Size="Medium" ForeColor="RoyalBlue"
                                                                        Text="地 址:" Font-Bold="False" Width="127px"></asp:Label></td>
                                                                <td style="width: 131px; height: 34px">
                                                                    <asp:Label ID="lblzz" runat="server" Font-Names="幼圆" Font-Size="Medium" ForeColor="RoyalBlue"
                                                                        Text="Label" Font-Bold="False"></asp:Label></td>
                                                                <td style="width: 36px; height: 34px">
                                                                </td>
                                                                <td style="height: 34px; width: 117px;">
                                                                    </td>
                                                                <td style="width: 8px; height: 34px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 54px; height: 34px">
                                                                </td>
                                                                <td style="width: 105px; height: 34px">
                                                                </td>
                                                                <td style="width: 119px; height: 34px">
                                                                </td>
                                                                <td style="width: 68px; height: 34px">
                                                                </td>
                                                                <td style="width: 35px; height: 34px">
                                                                </td>
                                                                <td style="width: 131px; height: 34px">
                                                                </td>
                                                                <td style="width: 36px; height: 34px">
                                                                </td>
                                                                <td style="width: 117px; height: 34px">
                                                                </td>
                                                                <td style="width: 8px; height: 34px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 54px; height: 34px">
                                                                </td>
                                                                <td style="width: 105px; height: 34px">
                                                                    <asp:Label ID="lblzs" runat="server" Font-Names="幼圆" Font-Size="Medium" ForeColor="RoyalBlue"
                                                                        Text="欠费时间：" Font-Bold="False" Width="118px"></asp:Label></td>
                                                                <td style="width: 119px; height: 34px">
                                                                <asp:Label ID="lblrqzs" runat="server" Font-Names="幼圆" Font-Size="Medium" ForeColor="RoyalBlue" Font-Bold="False" Width="97px"></asp:Label></td>
                                                                <td style="width: 68px; height: 34px">
                                                                    </td>
                                                                <td style="width: 35px; height: 34px">
                                                                    <asp:Label ID="lblbf" runat="server" Font-Names="幼圆" Font-Size="Medium" ForeColor="RoyalBlue"
                                                                        Text="终止时间:" Width="150px" Font-Bold="False"></asp:Label></td>
                                                                <td style="width: 131px; height: 34px">
                                                                    <asp:Label ID="lblzzsj" runat="server" Font-Names="幼圆" Font-Size="Medium" ForeColor="RoyalBlue"
                                                                        Text="Label" Font-Bold="False"></asp:Label></td>
                                                                <td style="width: 36px; height: 34px">
                                                                </td>
                                                                <td style="height: 34px; width: 117px;">
                                                                </td>
                                                                <td style="width: 8px; height: 34px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 54px; height: 34px">
                                                                </td>
                                                                <td style="width: 105px; height: 34px">
                                                                </td>
                                                                <td style="width: 119px; height: 34px">
                                                                </td>
                                                                <td style="width: 68px; height: 34px">
                                                                </td>
                                                                <td style="width: 35px; height: 34px">
                                                                </td>
                                                                <td style="width: 131px; height: 34px">
                                                                </td>
                                                                <td style="width: 36px; height: 34px">
                                                                </td>
                                                                <td style="width: 117px; height: 34px">
                                                                </td>
                                                                <td style="width: 8px; height: 34px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 54px; height: 21px">
                                                                </td>
                                                                <td style="width: 105px; height: 21px">
                                                                    <asp:Label ID="Label9" runat="server" Font-Names="幼圆" Font-Size="Medium" ForeColor="RoyalBlue"
                                                                        Text="类 别:" Font-Bold="False"></asp:Label></td>
                                                                <td style="width: 119px; height: 21px">
                                                                    <asp:Label ID="lbllb" runat="server" Font-Names="幼圆" Font-Size="Medium" ForeColor="RoyalBlue"
                                                                        Text="Label" Font-Bold="False"></asp:Label></td>
                                                                <td style="width: 68px; height: 21px">
                                                                    &nbsp;</td>
                                                                <td style="width: 35px; height: 21px">
                                                                    <asp:Label ID="Label6" runat="server" Font-Bold="False" Font-Names="幼圆" Font-Size="Medium"
                                                                        ForeColor="RoyalBlue" Text="金额：" Width="122px"></asp:Label></td>
                                                                <td style="width: 131px; height: 21px">
                                                                    <asp:Label ID="lblje" runat="server" Font-Bold="False" Font-Names="幼圆" Font-Size="Medium"
                                                                        ForeColor="RoyalBlue" Text="Label"></asp:Label></td>
                                                                <td style="width: 36px; height: 21px">
                                                                </td>
                                                                <td style="height: 21px; width: 117px;">
                                                                    </td>
                                                                <td style="width: 8px; height: 21px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 54px; height: 21px">
                                                                </td>
                                                                <td style="width: 105px; height: 21px">
                                                                </td>
                                                                <td style="width: 119px; height: 21px">
                                                                </td>
                                                                <td style="width: 68px; height: 21px">
                                                                </td>
                                                                <td style="width: 35px; height: 21px">
                                                                </td>
                                                                <td style="width: 131px; height: 21px">
                                                                </td>
                                                                <td style="width: 36px; height: 21px">
                                                                </td>
                                                                <td style="width: 117px; height: 21px">
                                                                </td>
                                                                <td style="width: 8px; height: 21px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 54px; height: 34px">
                                                                </td>
                                                                <td style="width: 105px; height: 34px">
                                                                    <asp:Label ID="Label13" runat="server" Font-Bold="False" Font-Names="幼圆" Font-Size="Medium"
                                                                        ForeColor="RoyalBlue" Text="经手人:"></asp:Label></td>
                                                                <td style="width: 119px; height: 34px">
                                                                    <asp:Label ID="lbljsr" runat="server" Font-Bold="False" Font-Size="Medium" ForeColor="RoyalBlue"
                                                                        Text="Label" Font-Names="幼圆"></asp:Label></td>
                                                                <td style="width: 68px; height: 34px">
                                                                    </td>
                                                                <td style="width: 35px; height: 34px">
                                                                    <asp:Label ID="Label12" runat="server" Font-Bold="False" Font-Names="幼圆" Font-Size="Medium"
                                                                        ForeColor="RoyalBlue" Text="状态：" Width="136px"></asp:Label></td>
                                                                <td style="width: 131px; height: 34px">
                                                                    <asp:Label ID="Lblzt" runat="server" Font-Bold="False" Font-Names="幼圆" Font-Size="Medium"
                                                                        ForeColor="RoyalBlue" Text="Label"></asp:Label></td>
                                                                <td style="width: 36px; height: 34px">
                                                                </td>
                                                                <td style="height: 34px; width: 117px;">
                                                                </td>
                                                                <td style="width: 8px; height: 34px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 54px; height: 21px">
                                                                </td>
                                                                <td style="width: 105px; height: 21px">
                                                                </td>
                                                                <td style="width: 119px; height: 21px">
                                                                </td>
                                                                <td style="width: 68px; height: 21px">
                                                                </td>
                                                                <td style="width: 35px; height: 21px">
                                                                </td>
                                                                <td style="width: 131px; height: 21px">
                                                                </td>
                                                                <td style="width: 36px; height: 21px">
                                                                </td>
                                                                <td style="width: 117px; height: 21px">
                                                                </td>
                                                                <td style="width: 8px; height: 21px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 54px; height: 19px">
                                                                </td>
                                                                <td style="width: 105px; height: 19px">
                                                                    </td>
                                                                <td style="width: 119px; height: 19px">
                                                                    </td>
                                                                <td style="width: 68px; height: 19px">
                                                                    </td>
                                                                <td style="width: 35px; height: 19px">
                                                                </td>
                                                                <td style="width: 131px; height: 19px">
                                                                    <asp:Button ID="Button1" runat="server"  Text="返回首页" Width="68px" OnClick="Button1_Click" Height="22px" /></td>
                                                                <td style="width: 36px; height: 19px">
                                                                </td>
                                                                <td style="height: 19px; width: 117px;">
                                                                    </td>
                                                                <td style="width: 8px; height: 19px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 54px; height: 20px">
                                                                </td>
                                                                <td style="width: 105px; height: 20px">
                                                                </td>
                                                                <td style="width: 119px; height: 20px">
                                                                </td>
                                                                <td style="width: 68px; height: 20px">
                                                                </td>
                                                                <td style="width: 35px; height: 20px">
                                                                </td>
                                                                <td style="width: 131px; height: 20px">
                                                                </td>
                                                                <td style="width: 36px; height: 20px">
                                                                </td>
                                                                <td style="height: 20px; width: 117px;">
                                                                </td>
                                                                <td style="width: 8px; height: 20px">
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
                            <uc1:foot ID="Foot1" runat="server" />
                        </td>
                    </tr>
                </table>
                                                                    </div>
        </div>
    
    </div>
    </form>
</body>
</html>
