<%@ Page Language="C#" AutoEventWireup="true" CodeFile="xiangxi.aspx.cs" Inherits="xiangxi" %>

<%@ Register Src="../userControl/head.ascx" TagName="head" TagPrefix="uc1" %>
<%@ Register Src="../userControl/foot.ascx" TagName="foot" TagPrefix="uc2" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>^_^  小区物业内部管理网-------员工详细信息  ^_^</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table id="Table1" align="center" border="1" cellpadding="1" cellspacing="1" width="780" style="padding-right: 0px; padding-left: 0px; background-image: url(../image/guanli_03.jpg); padding-bottom: 0px; margin: 0px; padding-top: 0px">
            <tr>
                <td align="center" style="height: 132px">
                    <uc1:head ID="Head1" runat="server" />
                    &nbsp;&nbsp;</td>
            </tr>
            <tr>
                <td align="center" style="height: 22px">
                </td>
            </tr>
            <tr style="font-size: 12pt">
                <td style="height: 695px">
                    <table id="Table3" border="0" cellpadding="0" cellspacing="0" style="width: 828px;
                        height: 528px" width="828">
                        <tr>
                            <td style="width: 213px; height: 274px" valign="top">
                                <table id="Table4" border="0" cellpadding="0" cellspacing="0" style="border-right: #ff9900 1px solid"
                                    width="100%">
                                    <tr>
                                        <td align="right" style="height: 29px">
                                            <img id="imgCzq" alt="" src="../image/banner.gif" />&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="height: 21px" align="center">
                                            <hr size="1" width="100%" />
                                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" >员工信息维护</asp:LinkButton></td>
                                    </tr>
                                    <tr>
                                        <td align="center" style="height: 40px">
                                            </td>
                                    </tr>
                                    <tr>
                                        <td align="center" style="height: 40px">
                                            <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" >员工信息查询</asp:LinkButton></td>
                                    </tr>
                                    <tr>
                                        <td align="center" style="height: 554px">
                                            </td>
                                    </tr>
                                </table>
                            </td>
                            <td style="width: 630px; height: 274px" valign="top">
                                <table id="Table6" border="0" cellpadding="1" cellspacing="0" width="615">
                                    <tr>
                                        <td align="center" style="font-size: 22px; width: 605px; font-family: 隶书; height: 53px">
                                            <hr size="3" style="font-size: 1px; width: 100%; color: #ff9900; height: 3px" width="100%" />
                                            &nbsp;<asp:Label ID="lblYgxx" runat="server" Height="34px" Text="员工详细资料" Width="232px"></asp:Label>
                                            &nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" style="font-size: 24px; width: 605px; color: #0000ff; font-family: 隶书;
                                            height: 136px" valign="top">
                                            <font color="#ff6600" face="宋体">
                                                <table id="Table7" border="0" cellpadding="0" cellspacing="0" style="border-top: #ff9900 1px solid;
                                                    border-bottom: #ff9900 1px solid" width="100%">
                                                    <tr>
                                                        <td colspan="1" style="width: 67px; height: 25px">
                                                        </td>
                                                        <td colspan="7" style="width: 217px; height: 25px">
                                                            </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 67px; height: 34px">
                                                        </td>
                                                        <td style="width: 476px;" colspan="3" rowspan="14" valign="top">
                                                            <asp:Image ID="imgTp" runat="server" Height="464px" Width="400px" />
                                                            &nbsp;</td>
                                                        <td style="width: 123px; height: 34px" align="left" valign="top">
                                                            <asp:Label ID="lblBh" runat="server" Font-Names="华文新魏" Font-Size="Medium" Height="24px"
                                                                Text="人员编号:" Width="89px" ForeColor="Black"></asp:Label></td>
                                                        <td style="width: 68px; height: 34px" align="left" valign="top">
                                                            <asp:Label ID="lblBhx" runat="server" Font-Names="华文新魏" Font-Size="Medium" Text="Label" ForeColor="Black"></asp:Label></td>
                                                        <td style="height: 34px">
                                                        </td>
                                                        <td style="width: 8px; height: 34px">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 67px; height: 15px">
                                                        </td>
                                                        <td style="width: 123px; height: 15px" valign="top">
                                                            <asp:Label ID="lblZwm" runat="server" Font-Names="华文新魏" Font-Size="Medium" Text="人员中文名称:" ForeColor="#404040"></asp:Label></td>
                                                        <td style="width: 68px; height: 15px" align="left" valign="top">
                                                            <asp:Label ID="lblZwmx" runat="server" Font-Names="华文新魏" Font-Size="Medium" Text="Label" ForeColor="Black"></asp:Label></td>
                                                        <td style="height: 15px">
                                                        </td>
                                                        <td style="width: 8px; height: 15px">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 67px; height: 20px">
                                                        </td>
                                                        <td style="width: 123px; height: 20px">
                                                            <asp:Label ID="lblYwm" runat="server" Font-Names="华文新魏" Font-Size="Medium" Text="人员英文名称:" ForeColor="Black"></asp:Label></td>
                                                        <td style="width: 68px; height: 20px" align="left" valign="top">
                                                            <asp:Label ID="lblYwmx" runat="server" Font-Names="华文新魏" Font-Size="Medium" Text="Label" ForeColor="Black"></asp:Label></td>
                                                        <td style="height: 20px">
                                                        </td>
                                                        <td style="width: 8px; height: 20px">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 67px; height: 21px">
                                                        </td>
                                                        <td style="width: 123px; height: 21px" align="left" valign="top">
                                                            <asp:Label ID="lblZzlb" runat="server" Font-Names="华文新魏" Font-Size="Medium" Text="在职类别:" ForeColor="Black"></asp:Label></td>
                                                        <td style="width: 68px; height: 21px" align="left" valign="top">
                                                            <asp:Label ID="lblZzlbx" runat="server" Font-Names="华文新魏" Font-Size="Medium" Text="Label" ForeColor="Black"></asp:Label></td>
                                                        <td style="height: 21px" valign="top">
                                                        </td>
                                                        <td style="width: 8px; height: 21px">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 67px; height: 17px">
                                                        </td>
                                                        <td align="left" style="width: 123px; height: 17px" valign="top">
                                                            <asp:Label ID="lblGzzt" runat="server" Font-Names="华文新魏" Font-Size="Medium" Text="工作状态:" ForeColor="Black"></asp:Label></td>
                                                        <td style="width: 68px; height: 17px" align="left" valign="top">
                                                            <asp:Label ID="lblGzztx" runat="server" Font-Names="华文新魏" Font-Size="Medium" Text="Label" ForeColor="Black"></asp:Label></td>
                                                        <td style="height: 17px">
                                                        </td>
                                                        <td style="width: 8px; height: 17px">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 67px; height: 14px">
                                                        </td>
                                                        <td align="left" style="width: 123px; height: 14px" valign="top">
                                                            <asp:Label ID="lblXb" runat="server" Font-Names="华文新魏" Font-Size="Medium"
                                                                Text="性  别:" Width="54px" ForeColor="Black"></asp:Label></td>
                                                        <td style="width: 68px; height: 14px" align="left" valign="top">
                                                            <asp:Label ID="lblXbx" runat="server" Font-Names="华文新魏" Font-Size="Medium" Text="Label" ForeColor="Black"></asp:Label></td>
                                                        <td style="height: 14px">
                                                        </td>
                                                        <td style="width: 8px; height: 14px">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 67px; height: 14px">
                                                        </td>
                                                        <td style="width: 123px; height: 14px" align="left" valign="top">
                                                            <asp:Label ID="lblHyzt" runat="server" Font-Names="华文新魏" Font-Size="Medium"
                                                                Text="婚姻状态:" ForeColor="Black"></asp:Label></td>
                                                        <td style="width: 68px; height: 14px" align="left">
                                                            <asp:Label ID="lblHyztx" runat="server" Font-Names="华文新魏" Font-Size="Medium" Text="Label" ForeColor="Black"></asp:Label></td>
                                                        <td style="height: 14px">
                                                        </td>
                                                        <td style="width: 8px; height: 14px">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 67px; height: 33px">
                                                        </td>
                                                        <td style="width: 123px; height: 33px" align="left" valign="top">
                                                            <asp:Label ID="lblJkzt" runat="server" Font-Names="华文新魏" Font-Size="Medium" Text="健康状态:" ForeColor="Black"></asp:Label></td>
                                                        <td style="width: 68px; height: 33px" align="left" valign="top">
                                                            <asp:Label ID="lblJkztx" runat="server" Font-Names="华文新魏" Font-Size="Medium" Text="Label" ForeColor="Black"></asp:Label></td>
                                                        <td style="height: 33px">
                                                        </td>
                                                        <td style="width: 8px; height: 33px">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 67px; height: 10px">
                                                        </td>
                                                        <td style="width: 123px; height: 10px" align="left" valign="top">
                                                            <asp:Label ID="lblMz" runat="server" Font-Italic="True" Font-Size="Small" Text="民  族:" ForeColor="Black"></asp:Label></td>
                                                        <td style="width: 68px; height: 10px" align="left" valign="top">
                                                            <asp:Label ID="lblMzx" runat="server" Font-Names="华文新魏" Font-Size="Medium" Text="Label" ForeColor="Black"></asp:Label></td>
                                                        <td style="height: 10px">
                                                        </td>
                                                        <td style="width: 8px; height: 10px">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 67px; height: 16px">
                                                        </td>
                                                        <td style="width: 123px; height: 16px" align="left" valign="top">
                                                            <asp:Label ID="lblCsny" runat="server" Font-Names="华文新魏" Font-Size="Medium" Text="出生年月日:" ForeColor="Black"></asp:Label></td>
                                                        <td style="width: 68px; height: 16px" align="left" valign="top">
                                                            <asp:Label ID="lblCsnyx" runat="server" Font-Names="华文新魏" Font-Size="Medium" Text="Label" ForeColor="Black"></asp:Label></td>
                                                        <td style="height: 16px">
                                                        </td>
                                                        <td style="width: 8px; height: 16px">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 67px; height: 6px">
                                                        </td>
                                                        <td style="width: 123px; height: 6px" align="left" valign="top">
                                                            <asp:Label ID="lblHksz" runat="server" Font-Names="华文新魏" Font-Size="Medium" Text="户口所在地:" ForeColor="Black"></asp:Label></td>
                                                        <td style="width: 68px; height: 6px" align="left">
                                                            <asp:Label ID="lblHkszx" runat="server" Font-Names="华文新魏" Font-Size="Medium" Text="Label" ForeColor="Black"></asp:Label></td>
                                                        <td style="height: 6px">
                                                        </td>
                                                        <td style="width: 8px; height: 6px">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 67px; height: 17px">
                                                        </td>
                                                        <td style="width: 123px; height: 17px" align="left" valign="top">
                                                            <asp:Label ID="lblSj" runat="server" Font-Names="华文新魏" Font-Size="Medium" Text="手  机:" ForeColor="Black"></asp:Label></td>
                                                        <td style="width: 68px; height: 17px" align="left" valign="top">
                                                            <asp:Label ID="lblSjx" runat="server" Font-Size="Medium" Text="Label" ForeColor="Black"></asp:Label></td>
                                                        <td style="height: 17px">
                                                        </td>
                                                        <td style="width: 8px; height: 17px">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 67px; height: 16px">
                                                        </td>
                                                        <td style="width: 123px; height: 16px" align="left" valign="top">
                                                            <asp:Label ID="lbljldh" runat="server" Font-Names="华文新魏" Font-Size="Medium" Text="家里电话:" ForeColor="Black"></asp:Label></td>
                                                        <td style="width: 68px; height: 16px" align="left" valign="top">
                                                            <asp:Label ID="lblJldhx" runat="server" Font-Names="华文新魏" Font-Size="Medium" Text="Label" ForeColor="Black"></asp:Label></td>
                                                        <td style="height: 16px">
                                                        </td>
                                                        <td style="width: 8px; height: 16px">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 67px; height: 54px">
                                                        </td>
                                                        <td align="center" style="height: 54px" colspan="2">
                                                            <asp:Button ID="btnFh" runat="server" OnClick="Button1_Click" Text="返回" Width="62px" /></td>
                                                        <td style="height: 54px">
                                                        </td>
                                                        <td style="width: 8px; height: 54px">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right" colspan="1" style="width: 67px; height: 41px">
                                                        </td>
                                                        <td align="right" colspan="5" style="height: 41px">
                                                            &nbsp; &nbsp;&nbsp; &nbsp;
                                                        </td>
                                                        <td style="height: 41px">
                                                        </td>
                                                        <td style="width: 8px; height: 41px">
                                                        </td>
                                                    </tr>
                                                </table>
                                                &nbsp;
                                            </font>
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
    </form>
</body>
</html>
