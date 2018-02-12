<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tousuguanli.aspx.cs" Inherits="tousuguanli" %>

<%@ Register Src="../userControl/foot.ascx" TagName="foot" TagPrefix="uc1" %>
<%@ Register Src="../userControl/head.ascx" TagName="head" TagPrefix="uc2" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>^_^  小区物业内部管理网-------投诉信息管理  ^_^</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>
            <table id="Table1" align="center" border="1" cellpadding="1" cellspacing="1" width="780" style="background-image: url(../image/guanli_03.jpg)">
                <tr>
                    <td  align="center" style="height: 132px; width: 98%;">
                        &nbsp;<uc2:head ID="Head1" runat="server" />
                    </td>
                </tr>
                <tr style="font-size: 12pt">
                    <td style="height: 695px">
                        <table id="Table3" border="0" cellpadding="0" cellspacing="0" style="width: 828px;
                            height: 528px" width="828">
                            <tr>
                                <td style="width: 213px; height: 283px" valign="top">
                                    <table id="Table4" border="0" cellpadding="0" cellspacing="0" style="border-right: #ff9900 1px solid"
                                        width="100%">
                                        <tr>
                                            <td align="right" style="height: 29px; width: 233px;">
                                                <img id="imgCzq" alt="" src="../image/banner.gif" />&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td style="height: 16px; width: 233px;">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="height: 55px; width: 233px;" valign="top" align="center">
                                                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" CausesValidation="False">小区物业业主投诉信息审核</asp:LinkButton></td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height: 27px; width: 233px;">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="height: 21px; width: 233px;" align="center">
                                                &nbsp;
                                                <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" CausesValidation="False">住户投诉管理信息查询</asp:LinkButton></td>
                                        </tr>
                                        <tr>
                                            <td style="height: 21px; width: 233px;">
                                                <hr size="1" width="100%" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height: 40px; width: 233px;">
                                                </td>
                                        </tr>
                                        <tr>
                                            <td align="center"style="height: 27px; width: 233px;">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height: 27px; width: 233px;">
                                                </td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height: 27px; width: 233px;">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height: 27px; width: 233px;">
                                                </td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height: 263px; width: 233px;">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td style="width: 630px; height: 283px" valign="top">
                                    <table id="Table6" border="0" cellpadding="1" cellspacing="0" width="615">
                                        <tr>
                                            <td align="center" style="font-size: 22px; width: 619px; font-family: 隶书; height: 53px">
                                                <hr size="3" style="font-size: 1px; width: 100%; color: #ff9900; height: 3px" width="100%" />
                                                <asp:Label ID="lblz" runat="server" Height="34px" Text="住户投诉信息管理" Width="193px"></asp:Label>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="font-size: 24px; width: 619px; color: #0000ff; font-family: 隶书;
                                                height: 140px" valign="top">
                                                <font color="#ff6600" face="宋体">
                                                    <table id="Table7" border="0" cellpadding="0" cellspacing="0" style="border-top: #ff9900 1px solid;
                                                        border-bottom: #ff9900 1px solid" width="100%">
                                                        <tr>
                                                            <td colspan="7" style="width: 217px; height: 12px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 108px; height: 34px">
                                                            </td>
                                                            <td style="width: 41px; height: 34px" align="left" valign="top">
                                                                <asp:Label ID="lblTsbh" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="#FFC080"
                                                                    Text="投诉编号：" Width="103px"></asp:Label></td>
                                                            <td style="height: 34px; width: 203px;" align="left" valign="top">
                                                                <asp:TextBox ID="txtTsbh" runat="server" Width="153px"></asp:TextBox>
                                                                <asp:Button ID="btnBh" runat="server" CausesValidation="False" OnClick="Button1_Click1"
                                                                    Text="检验投诉编号" Width="86px" /></td>
                                                            <td colspan="2" style="height: 34px" align="left">
                                                                <asp:RequiredFieldValidator ID="rfvTsbh" runat="server" ControlToValidate="txtTsbh"
                                                                    Display="Dynamic" ErrorMessage="编号不能为空" Font-Names="华文新魏" Font-Size="Medium"></asp:RequiredFieldValidator>
                                                                </td>
                                                            <td style="height: 34px">
                                                            </td>
                                                            <td style="width: 9px; height: 34px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 108px; height: 30px">
                                                            </td>
                                                            <td style="width: 41px; height: 30px" valign="top">
                                                                <asp:Label ID="lblTsname" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="#FFC080"
                                                                    Text="投诉住户名：" Width="99px"></asp:Label></td>
                                                            <td style="height: 30px; width: 203px;" align="left" valign="top">
                                                                <asp:TextBox ID="txtTszhm" runat="server" Width="153px"></asp:TextBox></td>
                                                            <td colspan="2" style="height: 30px">
                                                                <asp:RequiredFieldValidator ID="rfvTszh" runat="server" ControlToValidate="txtTszhm"
                                                                    Display="Dynamic" ErrorMessage="住户姓名不能为空" Font-Names="华文新魏" Font-Size="Medium"></asp:RequiredFieldValidator></td>
                                                            <td style="height: 30px">
                                                            </td>
                                                            <td style="width: 9px; height: 30px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 108px; height: 26px">
                                                            </td>
                                                            <td align="left" style="width: 41px; height: 26px" valign="top">
                                                                <asp:Label ID="Label13" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="#FFC080"
                                                                    Text="投诉日期：" Width="104px"></asp:Label></td>
                                                            <td align="left" style="height: 26px; width: 203px;" valign="top">
                                                                <asp:TextBox ID="txtDate" runat="server" Width="152px" ToolTip="请选择投诉日期旁边的按钮"></asp:TextBox>&nbsp;
                                                            </td>
                                                            <td align="center" colspan="2" style="height: 26px" valign="top">
                                                                <asp:RequiredFieldValidator ID="rfvTsrq" runat="server" ControlToValidate="txtDate"
                                                                    Display="Dynamic" ErrorMessage="投诉日期不能为空" Font-Names="华文新魏" Font-Size="Medium"></asp:RequiredFieldValidator>
                                                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtDate"
                                                                    Display="Dynamic" ErrorMessage="日期时间格式不正确" Font-Names="华文新魏" Font-Size="Medium"
                                                                    Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
                                                                </td>
                                                            <td style="height: 26px">
                                                            </td>
                                                            <td style="width: 9px; height: 26px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 108px; height: 33px">
                                                            </td>
                                                            <td style="width: 41px; height: 33px" align="left" valign="top">
                                                                <asp:Label ID="Label10" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="#FFC080"
                                                                    Text="投诉内容：" Width="101px"></asp:Label></td>
                                                            <td style="height: 33px; width: 203px;" align="left">
                                                                <asp:TextBox ID="txtTsnr" runat="server" TextMode="MultiLine" Width="158px"></asp:TextBox></td>
                                                            <td colspan="2" style="height: 33px">
                                                                <asp:RequiredFieldValidator ID="rfvTsnr" runat="server" ControlToValidate="txtTsnr"
                                                                    Display="Dynamic" ErrorMessage="投诉内容不能为空" Font-Names="华文新魏" Font-Size="Medium"></asp:RequiredFieldValidator></td>
                                                            <td style="height: 33px">
                                                            </td>
                                                            <td style="width: 9px; height: 33px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 108px; height: 16px">
                                                            </td>
                                                            <td style="width: 41px; height: 16px" align="left" valign="top">
                                                                <asp:Label ID="Label15" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="#FFC080"
                                                                    Text="状　态：" Width="84px"></asp:Label></td>
                                                            <td style="height: 16px; width: 203px;" align="left" valign="top">
                                                                <asp:DropDownList ID="ddlZt" runat="server" Width="163px" Font-Bold="False" Font-Names="华文新魏" Font-Size="Medium" ForeColor="Red">
                                                                    <asp:ListItem>已处理</asp:ListItem>
                                                                    <asp:ListItem Selected="True">未处理</asp:ListItem>
                                                                </asp:DropDownList></td>
                                                            <td colspan="2" style="height: 16px">
                                                                &nbsp;</td>
                                                            <td style="height: 16px">
                                                            </td>
                                                            <td style="width: 9px; height: 16px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right" colspan="5" style="height: 54px">
                                                                &nbsp;<asp:Button ID="btnAdd" runat="server"  Text="添加" Width="41px" OnClick="Button1_Click" Height="21px" />
                                                                <asp:Button ID="btnDelete" runat="server"  Text="删除" Width="40px" OnClick="Button2_Click" Height="21px" />&nbsp;<asp:Button
                                                                    ID="btnUpdate" runat="server" Height="21px"  Text="修改" Width="42px" OnClick="Button4_Click" />
                                                                <asp:Button ID="btnSelect" runat="server"  Text="查询" Width="45px" CausesValidation="False" OnClick="btnSelect_Click" Height="21px" />&nbsp;
                                                            </td>
                                                            <td style="height: 54px">
                                                            </td>
                                                            <td style="width: 9px; height: 54px">
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    &nbsp;<asp:GridView ID="gvZhts" runat="server" AutoGenerateColumns="False" CellPadding="4"
                                                        Font-Names="华文新魏" Font-Size="Medium" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="562px" OnRowDataBound="gvZhts_RowDataBound" >
                                                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                        <Columns>
                                                            <asp:BoundField DataField="id" HeaderText="投诉编号" />
                                                            <asp:BoundField DataField="person" HeaderText="投诉住户名" />
                                                            <asp:BoundField DataField="time" HeaderText="投诉日期" />
                                                            <asp:BoundField DataField="neirong" HeaderText="投诉内容" />
                                                            <asp:BoundField DataField="zhuangtai" HeaderText="状态" />
                                                            <asp:CommandField HeaderText="选择信息" ShowSelectButton="True" SelectText="选择整行" />
                                                        </Columns>
                                                        <RowStyle BackColor="#EFF3FB" />
                                                        <EditRowStyle BackColor="#2461BF" />
                                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                        <AlternatingRowStyle BackColor="White" />
                                                    </asp:GridView>
                                                </font>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="width: 619px; height: 142px" valign="top">
                                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                                                <hr color="#ff9900" size="1" width="100%" />
                                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
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
    </form>
</body>
</html>
