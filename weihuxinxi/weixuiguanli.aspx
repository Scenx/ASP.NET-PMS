<%@ Page Language="C#" AutoEventWireup="true" CodeFile="weixuiguanli.aspx.cs" Inherits="weixuiguanli" %>



<%@ Register Src="../userControl/head.ascx" TagName="head" TagPrefix="uc1" %>
<%@ Register Src="../userControl/foot.ascx" TagName="foot" TagPrefix="uc2" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>^_^  小区物业内部管理网-------设备维护信息管理  ^_^</title>
</head>
<body background="../image/index_03.jpg">
    <form id="form1" runat="server">
    <div>
        <div>
            <div>
                <table id="Table1" align="center" border="1" cellpadding="1" cellspacing="1" width="780" style="background-image: url(../image/guanli_03.jpg)">
                    <tr>
                        <td align="center" style="height: 132px">
                            <uc1:head ID="Head1" runat="server" />
                        </td>
                    </tr>
                    <tr style="font-size: 12pt">
                        <td style="height: 695px">
                            <table id="Table3" border="0" cellpadding="0" cellspacing="0" style="width: 828px;
                                height: 528px" width="828">
                                <tr>
                                    <td style="width: 218px; height: 283px" valign="top">
                                        <table id="Table4" border="0" cellpadding="0" cellspacing="0" style="border-right: #ff9900 1px solid"
                                            width="100%">
                                            <tr>
                                                <td align="left" style="height: 29px">
                                                    &nbsp;<img id="imgCzq" alt="" src="../image/banner.gif" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="height: 16px">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="height: 55px" valign="top" align="center">
                                                    <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" OnClick="LinkButton2_Click">审核设备维修</asp:LinkButton></td>
                                            </tr>
                                            <tr>
                                                <td align="center" style="height: 27px">
                                                    <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" OnClick="LinkButton3_Click">设备维护查询</asp:LinkButton></td>
                                            </tr>
                                            <tr>
                                                <td rowspan="5">
                                                    &nbsp;
                                                </td>
                                            </tr>
                                            <tr>
                                            </tr>
                                            <tr>
                                            </tr>
                                            <tr>
                                            </tr>
                                            <tr>
                                            </tr>
                                        </table>
                                    </td>
                                    <td style="width: 630px; height: 283px" valign="top">
                                        <table id="Table6" border="0" cellpadding="1" cellspacing="0" width="615">
                                            <tr>
                                                <td align="center" style="font-size: 22px; width: 619px; font-family: 隶书; height: 53px">
                                                    <hr size="3" style="font-size: 1px; width: 100%; color: #ff9900; height: 3px" width="100%" />
                                                    <asp:Label ID="Label4" runat="server" Height="34px" Text="小区设备维修信息管理" Width="301px" Font-Size="Large"></asp:Label>
                                                </td>
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
                                                                <td style="width: 107px; height: 33px">
                                                                </td>
                                                                <td style="width: 41px; height: 33px" valign="top">
                                                                    <asp:Label ID="Label6" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="#FFC080"
                                                                        Text="设备维修编号：" Width="112px"></asp:Label></td>
                                                                <td style="width: 203px; height: 33px" align="left" valign="top">
                                                                    <asp:TextBox ID="txtid" runat="server" Width="163px"></asp:TextBox>
                                                                    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="检验设备编号" Width="90px" CausesValidation="False" /></td>
                                                                <td colspan="2" style="height: 33px; width: 159px;" align="left" valign="top">
                                                                    <asp:RequiredFieldValidator ID="rfvBh" runat="server" ControlToValidate="txtid"
                                                                        Display="Dynamic" ErrorMessage="维护的编号不能为空" Font-Names="华文新魏" Font-Size="Medium" Width="146px"></asp:RequiredFieldValidator>
                                                                    </td>
                                                                <td style="height: 33px">
                                                                </td>
                                                                <td style="width: 9px; height: 33px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 107px; height: 30px">
                                                                </td>
                                                                <td style="width: 41px; height: 30px" align="left" valign="top">
                                                                    <asp:Label ID="Label8" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="#FFC080"
                                                                        Text="住户姓名：" Width="100px"></asp:Label></td>
                                                                <td style="width: 203px; height: 30px" align="left" valign="top">
                                                                    <asp:TextBox ID="txtperson" runat="server" Width="166px"></asp:TextBox></td>
                                                                <td colspan="2" style="height: 30px; width: 159px;" align="left" valign="top">
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtperson"
                                                                        Display="Dynamic" ErrorMessage="住户姓名不能为空" Font-Names="华文新魏" Font-Size="Medium"></asp:RequiredFieldValidator></td>
                                                                <td style="height: 30px">
                                                                </td>
                                                                <td style="width: 9px; height: 30px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 107px; height: 27px">
                                                                </td>
                                                                <td align="left" style="width: 41px; height: 27px" valign="top">
                                                                    <asp:Label ID="Label13" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="#FFC080"
                                                                        Text="起始日期：" Width="102px"></asp:Label></td>
                                                                <td align="left" style="width: 203px; height: 27px">
                                                                    <asp:TextBox ID="txttime" runat="server" Width="148px" ToolTip="起始时间请选择旁边的按钮"></asp:TextBox><asp:Button
                                                                        ID="Button6" runat="server" BackColor="#C0C0FF" CausesValidation="False" OnClick="Button6_Click"
                                                                        Text=".." Width="22px" />
                                                                    <asp:Calendar ID="Calendar2" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66"
                                                                        BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt"
                                                                        ForeColor="#663399" Height="200px" OnSelectionChanged="Calendar2_SelectionChanged"
                                                                        ShowGridLines="True" Width="220px">
                                                                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                                                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                                                                        <SelectorStyle BackColor="#FFCC66" />
                                                                        <OtherMonthDayStyle ForeColor="#CC9966" />
                                                                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                                                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                                                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                                                                    </asp:Calendar>
                                                                </td>
                                                                <td align="left" colspan="2" style="height: 27px; width: 159px;" valign="top">
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txttime"
                                                                        Display="Dynamic" ErrorMessage="起始日期不能为空" Font-Names="华文新魏" Font-Size="Medium"></asp:RequiredFieldValidator>&nbsp;
                                                                </td>
                                                                <td style="height: 27px">
                                                                </td>
                                                                <td style="width: 9px; height: 27px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 107px; height: 27px">
                                                                </td>
                                                                <td align="left" style="width: 41px; height: 27px" valign="top">
                                                                    <asp:Label ID="Label5" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="#FFC080"
                                                                        Text="终止日期：" Width="102px"></asp:Label></td>
                                                                <td align="left" style="width: 203px; height: 27px">
                                                                    <asp:TextBox ID="txtzzrq" runat="server" Width="148px" ToolTip="终止时间请选择旁边的按钮"></asp:TextBox><asp:Button
                                                                        ID="btnwxgl" runat="server" BackColor="#C0C0FF" CausesValidation="False" OnClick="btnwxgl_Click"
                                                                        Text=".." Width="22px" />
                                                                    <asp:Calendar ID="caletime" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66"
                                                                        BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt"
                                                                        ForeColor="#663399" Height="200px" OnSelectionChanged="caletime_SelectionChanged"
                                                                        ShowGridLines="True" Width="220px">
                                                                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                                                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                                                                        <SelectorStyle BackColor="#FFCC66" />
                                                                        <OtherMonthDayStyle ForeColor="#CC9966" />
                                                                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                                                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                                                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                                                                    </asp:Calendar>
                                                                </td>
                                                                <td align="left" colspan="2" style="height: 27px; width: 159px;" valign="top">
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtzzrq"
                                                                        Display="Dynamic" ErrorMessage="终止日期不能为空" Font-Names="华文新魏" Font-Size="Medium" Width="147px"></asp:RequiredFieldValidator>
                                                                    </td>
                                                                <td style="height: 27px">
                                                                </td>
                                                                <td style="width: 9px; height: 27px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 107px; height: 44px">
                                                                </td>
                                                                <td align="left" style="width: 41px; height: 44px" valign="top">
                                                                    <asp:Label ID="Label7" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="#FFC080"
                                                                        Text="经手人：" Width="80px"></asp:Label></td>
                                                                <td align="left" style="width: 203px; height: 44px" valign="top">
                                                                    <asp:TextBox ID="txtjsr" runat="server" Width="172px"></asp:TextBox></td>
                                                                <td align="left" colspan="2" style="height: 44px; width: 159px;" valign="top">
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtjsr"
                                                                        Display="Dynamic" ErrorMessage="经手人不能为空" Font-Names="华文新魏" Font-Size="Medium"></asp:RequiredFieldValidator>
                                                                    </td>
                                                                <td style="height: 44px">
                                                                </td>
                                                                <td style="width: 9px; height: 44px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 107px; height: 27px">
                                                                </td>
                                                                <td align="left" style="width: 41px; height: 27px" valign="top">
                                                                    <asp:Label ID="Label11" runat="server" Font-Names="华文新魏" Font-Size="Medium"
                                                                        ForeColor="#FFC080" Text="服务费用：" Width="113px"></asp:Label></td>
                                                                <td align="left" style="width: 203px; height: 27px" valign="top">
                                                                    <asp:TextBox ID="txtfy" runat="server" Width="171px"></asp:TextBox></td>
                                                                <td align="left" colspan="2" style="height: 27px; width: 159px;" valign="top">
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtfy"
                                                                        Display="Dynamic" ErrorMessage="费用不能为空" Font-Names="华文新魏" Font-Size="Medium"></asp:RequiredFieldValidator>
                                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtfy"
                                                                        Display="Dynamic" ErrorMessage="你输入的费用不是数字类型" Font-Size="Small" ValidationExpression="\d*"></asp:RegularExpressionValidator>&nbsp;</td>
                                                                <td style="height: 27px">
                                                                </td>
                                                                <td style="width: 9px; height: 27px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 107px; height: 27px">
                                                                </td>
                                                                <td align="left" style="width: 41px; height: 27px">
                                                                    <asp:Label ID="Label15" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="#FFC080"
                                                                        Text="状态：" Width="74px"></asp:Label></td>
                                                                <td align="left" style="width: 203px; height: 27px">
                                                                    <asp:DropDownList ID="DropDownList1" runat="server" Font-Bold="False" Font-Names="华文新魏"
                                                                        Font-Size="Medium" ForeColor="Red" Width="174px">
                                                                        <asp:ListItem>已处理</asp:ListItem>
                                                                        <asp:ListItem Selected="True">未处理</asp:ListItem>
                                                                    </asp:DropDownList></td>
                                                                <td align="center" colspan="2" style="height: 27px; width: 159px;">
                                                                </td>
                                                                <td style="height: 27px">
                                                                </td>
                                                                <td style="width: 9px; height: 27px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 107px; height: 27px">
                                                                </td>
                                                                <td align="left" style="width: 41px; height: 27px">
                                                                    <asp:Label ID="Label9" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="#FFC080"
                                                                        Text="备注：" Width="73px"></asp:Label></td>
                                                                <td align="left" style="width: 203px; height: 27px">
                                                                    <asp:TextBox ID="txtbz" runat="server" TextMode="MultiLine" Width="168px"></asp:TextBox></td>
                                                                <td align="left" colspan="2" style="height: 27px; width: 159px;">
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtbz"
                                                                        Display="Dynamic" ErrorMessage="备注不能为空" Font-Names="华文新魏" Font-Size="Medium"></asp:RequiredFieldValidator></td>
                                                                <td style="height: 27px">
                                                                </td>
                                                                <td style="width: 9px; height: 27px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 107px; height: 33px">
                                                                </td>
                                                                <td style="width: 41px; height: 33px">
                                                                    <asp:Label ID="Label10" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="#FFC080"
                                                                        Text="维护内容：" Width="84px"></asp:Label></td>
                                                                <td style="width: 203px; height: 33px" align="left" valign="top">
                                                                    <asp:TextBox ID="Txtnr" runat="server" TextMode="MultiLine" Width="168px"></asp:TextBox></td>
                                                                <td colspan="2" style="height: 33px; width: 159px;" align="left">
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Txtnr"
                                                                        Display="Dynamic" ErrorMessage="维护内容不能为空" Font-Names="华文新魏" Font-Size="Medium" Width="153px"></asp:RequiredFieldValidator></td>
                                                                <td style="height: 33px">
                                                                </td>
                                                                <td style="width: 9px; height: 33px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="right" colspan="5" style="height: 41px">
                                                                    &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添加" Width="44px" />
                                                                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="删除" Width="43px" Height="23px" />&nbsp;<asp:Button
                                                                        ID="Button4" runat="server" Height="22px" OnClick="Button4_Click" Text="修改" Width="44px" />
                                                                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="查询" Width="45px" CausesValidation="False" />&nbsp;
                                                                </td>
                                                                <td style="height: 41px">
                                                                </td>
                                                                <td style="width: 9px; height: 41px">
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        &nbsp;
                                                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White"
                                                            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3"
                                                            Font-Names="华文新魏" Font-Size="Medium" OnRowDataBound="GridView2_RowDataBound"
                                                            OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                                                            <FooterStyle BackColor="White" ForeColor="#000066" />
                                                            <Columns>
                                                                <asp:BoundField DataField="id" HeaderText="维护编号" />
                                                                <asp:BoundField DataField="name" HeaderText="住户名称" />
                                                                <asp:BoundField DataField="stime" HeaderText="起始时间" />
                                                                <asp:BoundField DataField="etime" HeaderText="终止时间" />
                                                                <asp:BoundField DataField="person" HeaderText="经手人" />
                                                                <asp:BoundField DataField="feiyong" HeaderText="费用" />
                                                                <asp:BoundField DataField="state" HeaderText="状态" />
                                                                <asp:BoundField DataField="beizhu" HeaderText="备注" />
                                                                <asp:BoundField DataField="neirong" HeaderText="内容" />
                                                                <asp:CommandField HeaderText="选择信息" ShowSelectButton="True" />
                                                            </Columns>
                                                            <RowStyle ForeColor="#000066" />
                                                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                                            <PagerStyle ForeColor="#000066" HorizontalAlign="Left" BackColor="White" />
                                                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
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
                            <uc2:foot ID="Foot1" runat="server" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    
    </div>
    </form>
</body>
</html>
