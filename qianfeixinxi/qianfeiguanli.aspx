<%@ Page Language="C#" AutoEventWireup="true" CodeFile="qianfeiguanli.aspx.cs" Inherits="qianfeichaxun" %>



<%@ Register Src="../userControl/foot.ascx" TagName="foot" TagPrefix="uc1" %>
<%@ Register Src="../userControl/head.ascx" TagName="head" TagPrefix="uc2" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>^_^  小区物业内部管理网-------欠费信息管理  ^_^</title>
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
        <div>
            <div>
                <table id="Table1" align="center" border="1" cellpadding="1" cellspacing="1" width="780" style="background-image: url(../image/guanli_03.jpg)">
                    <tr>
                        <td align="center" style="height: 132px; width: 885px;">
                            &nbsp;<uc2:head ID="Head1" runat="server" />
                        </td>
                    </tr>
                    <tr style="font-size: 12pt">
                        <td style="height: 695px; width: 885px;">
                            <table id="Table3" border="0" cellpadding="0" cellspacing="0" style="width: 828px;
                                height: 528px" width="828">
                                <tr>
                                    <td style="width: 213px; height: 283px" valign="top">
                                        <table id="Table4" border="0" cellpadding="0" cellspacing="0" style="border-right: #ff9900 1px solid"
                                            width="100%">
                                            <tr>
                                                <td align="left" style="height: 27px">
                                                    &nbsp;<img id="imgCzq" alt="" src="../image/banner.gif" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="height: 21px">
                                                    &nbsp;
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="height: 21px" align="center">
                                                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" CausesValidation="False">欠费用户信息查询</asp:LinkButton></td>
                                            </tr>
                                            <tr>
                                                <td align="center" style="height: 40px">
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center" style="height: 27px">
                                                    <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" OnClick="LinkButton3_Click">欠费用户信息审核</asp:LinkButton></td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td style="width: 630px; height: 283px" valign="top">
                                        <table id="Table6" border="0" cellpadding="1" cellspacing="0" width="615">
                                            <tr>
                                                <td align="center" style="font-size: 22px; width: 602px; font-family: 隶书; height: 53px">
                                                    <hr size="3" style="font-size: 1px; width: 100%; color: #ff9900; height: 3px" width="100%" />
                                                    &nbsp;<asp:Label ID="Label5" runat="server" Height="34px" Text="欠费信息管理" Width="193px"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td align="center" style="font-size: 24px; width: 602px; color: #0000ff; font-family: 隶书;
                                                    height: 142px" valign="top">
                                                    <font color="#ff6600" face="宋体">
                                                        <table id="Table7" border="0" cellpadding="0" cellspacing="0" style="border-top: #ff9900 1px solid;
                                                            border-bottom: #ff9900 1px solid" width="100%" language="javascript" onclick="return Table7_onclick()">
                                                            <tr>
                                                                <td colspan="7" style="width: 217px; height: 25px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 129px; height: 32px" align="left" valign="top">
                                                                    <asp:Label ID="lblZhmc" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="#FFC080"
                                                                        Text="住户名称：" Width="100px"></asp:Label></td>
                                                                <td style="width: 70px; height: 32px" align="left" valign="top">
                                                                    <asp:TextBox ID="txtname" runat="server" Width="164px"></asp:TextBox>&nbsp;&nbsp;
                                                                    <asp:RequiredFieldValidator ID="rfvZhmc" runat="server" ControlToValidate="txtname"
                                                                        Display="Dynamic" ErrorMessage="住户名称不能为空" Font-Names="华文新魏" Font-Size="Medium"
                                                                        Width="165px"></asp:RequiredFieldValidator></td>
                                                                <td style="height: 32px; width: 169px;">
                                                                </td>
                                                                <td style="width: 48px; height: 32px" align="left" valign="top">
                                                                    <asp:Label ID="lblZhdz" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="#FFC080"
                                                                        Text="住户地址：" Width="102px"></asp:Label></td>
                                                                <td style="width: 68px; height: 32px" align="left" valign="top">
                                                                    <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine" Width="171px"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="rfvZhdz" runat="server" ControlToValidate="txtaddress"
                                                                        Display="Dynamic" ErrorMessage="RequiredFieldValidator" Font-Names="华文新魏" Font-Size="Medium"
                                                                        Width="165px">住户地址不能为空</asp:RequiredFieldValidator></td>
                                                                <td style="height: 32px">
                                                                </td>
                                                                <td style="width: 8px; height: 32px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 129px; height: 26px" align="left" valign="top">
                                                                    <asp:Label ID="lblStime" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="#FFC080"
                                                                        Text="起始日期：" Width="100px"></asp:Label></td>
                                                                <td style="width: 70px; height: 26px" align="left" valign="top">
                                                                   <div style="text-align: center">
                                                                       <table border="0" style="width: 250%">
                                                                            <tr>
                                                                                <td colspan="2" style="width: 147px">
                                                                    <asp:TextBox ID="txtstime" runat="server" Width="130px" ToolTip="起始选择旁边的按钮"></asp:TextBox></td>
                                                                                <td style="width: 100px">
                                                                                    <asp:Button
                                                                        ID="btnstime" runat="server" BackColor="#C0C0FF" CausesValidation="False" OnClick="btnstime_Click"
                                                                        Text=".." Width="25px" /></td>
                                                                            </tr>
                                                                        </table>
                                                                    </div>
                                                                    <asp:Calendar ID="Calendar2" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66"
                                                                        BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt"
                                                                        ForeColor="#663399" Height="200px" OnSelectionChanged="Calendar2_SelectionChanged"
                                                                        ShowGridLines="True" Width="200px">
                                                                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                                                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                                                                        <SelectorStyle BackColor="#FFCC66" />
                                                                        <OtherMonthDayStyle ForeColor="#CC9966" />
                                                                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                                                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                                                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                                                                    </asp:Calendar>
                                                                    <asp:RequiredFieldValidator ID="rfvStime" runat="server" ControlToValidate="txtstime"
                                                                        Display="Dynamic" ErrorMessage="起始日期不能为空" Font-Names="华文新魏" Font-Size="Medium"
                                                                        Width="180px"></asp:RequiredFieldValidator></td>
                                                                <td style="height: 26px; width: 169px;">
                                                                </td>
                                                                <td style="width: 48px; height: 26px" valign="top">
                                                                    <asp:Label ID="lblEtime" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="#FFC080"
                                                                        Text="终止日期：" Width="101px"></asp:Label></td>
                                                                <td style="width: 68px; height: 26px" align="left">
                                                                   <div style="text-align: center">
                                                                        <table border="0" style="width: 177%">
                                                                            <tr>
                                                                                <td style="width: 100px">
                                                                    <asp:TextBox ID="txtetime" runat="server" Width="130px" ToolTip="终止时间请选择旁边的按钮"></asp:TextBox></td>
                                                                                <td style="width: 100px">
                                                                                    <asp:Button
                                                                        ID="btnetime" runat="server" BackColor="#C0C0FF" OnClick="btnetime_Click" Text=".."
                                                                        Width="24px" CausesValidation="False" /></td>
                                                                            </tr>
                                                                        </table>
                                                                    </div>
                                                                    <asp:Calendar ID="Calendar3" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66"
                                                                        BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt"
                                                                        ForeColor="#663399" Height="200px" OnSelectionChanged="Calendar3_SelectionChanged"
                                                                        ShowGridLines="True" Width="200px">
                                                                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                                                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                                                                        <SelectorStyle BackColor="#FFCC66" />
                                                                        <OtherMonthDayStyle ForeColor="#CC9966" />
                                                                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                                                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                                                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                                                                    </asp:Calendar>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtetime"
                                                                        Display="Dynamic" ErrorMessage="终止日期不能为空" Font-Names="华文新魏" Font-Size="Medium"
                                                                        Width="167px" Height="21px"></asp:RequiredFieldValidator>&nbsp;
                                                                </td>
                                                                <td style="height: 26px">
                                                                </td>
                                                                <td style="width: 8px; height: 26px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 129px; height: 36px" align="left" valign="top">
                                                                    <asp:Label ID="lblQflx" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="#FFC080"
                                                                        Text="欠费类型：" Width="100px"></asp:Label></td>
                                                                <td align="center" style="width: 70px; height: 36px" valign="top">
                                                                    <asp:DropDownList ID="DropDownList1" runat="server" ForeColor="Red" Width="156px">
                                                                        <asp:ListItem>水费</asp:ListItem>
                                                                        <asp:ListItem>电费</asp:ListItem>
                                                                        <asp:ListItem>煤气费</asp:ListItem>
                                                                    </asp:DropDownList></td>
                                                                <td style="height: 36px; width: 169px;">
                                                                </td>
                                                                <td align="left" style="width: 48px; height: 36px" valign="top">
                                                                    <asp:Label ID="lblQfje" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="#FFC080"
                                                                        Text="欠费金额："></asp:Label></td>
                                                                <td style="width: 68px; height: 36px" align="left">
                                                                    <asp:TextBox ID="txtqianfei" runat="server" Width="169px"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="rfvQfje" runat="server" ControlToValidate="txtqianfei"
                                                                        Display="Dynamic" ErrorMessage="欠费金额" Font-Names="华文新魏" Font-Size="Medium" Width="92px"></asp:RequiredFieldValidator>
                                                                    <asp:RegularExpressionValidator ID="revqfje" runat="server" ControlToValidate="txtqianfei"
                                                                        Display="Dynamic" ErrorMessage="欠费金额必须是数字" Font-Size="Small" ValidationExpression="\d*" Width="124px"></asp:RegularExpressionValidator></td>
                                                                <td style="height: 36px">
                                                                </td>
                                                                <td style="width: 8px; height: 36px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 129px; height: 63px" align="left" valign="top">
                                                                    <asp:Label ID="lblState" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="#FFC080"
                                                                        Text="状态："></asp:Label></td>
                                                                <td style="width: 70px; height: 63px" align="center" valign="top">
                                                                    <asp:DropDownList ID="ddlZt" runat="server" BackColor="White" ForeColor="Red"
                                                                        Width="158px">
                                                                        <asp:ListItem Selected="True">已处理</asp:ListItem>
                                                                        <asp:ListItem>未处理</asp:ListItem>
                                                                    </asp:DropDownList></td>
                                                                <td style="height: 63px; width: 169px;">
                                                                </td>
                                                                <td style="width: 48px; height: 63px" align="left" valign="top">
                                                                    <asp:Label ID="lblPerson" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="#FFC080"
                                                                        Text="经手人："></asp:Label></td>
                                                                <td style="width: 68px; height: 63px" align="left" valign="top">
                                                                    <asp:TextBox ID="txtperson" runat="server" Width="171px"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtperson"
                                                                        Display="Dynamic" ErrorMessage="经手人不能为空" Font-Size="Small" Width="91px"></asp:RequiredFieldValidator>
                                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtperson"
                                                                        Display="Dynamic" ErrorMessage="经手人的格式应为汉字" Font-Size="Small" ValidationExpression="^[\u4E00-\u9FA5]{0,}$" Width="137px"></asp:RegularExpressionValidator></td>
                                                                <td style="height: 63px">
                                                                </td>
                                                                <td style="width: 8px; height: 63px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="right" colspan="5" style="height: 33px">
                                                                    &nbsp;<asp:Button ID="btnadd" runat="server" Text="添加" Width="49px" OnClick="Button1_Click" Height="25px" />
                                                                    <asp:Button ID="btndelete" runat="server" Text="删除" Width="49px" OnClick="Button2_Click" Height="25px" />&nbsp;<asp:Button
                                                                        ID="btnupdate" runat="server" Height="25px" Text="修改" Width="49px" OnClick="Button4_Click" />
                                                                    <asp:Button ID="btnselect" runat="server" Text="查询" Width="49px" OnClick="Button3_Click" CausesValidation="False" Height="25px" />&nbsp;
                                                                </td>
                                                                <td style="height: 33px">
                                                                </td>
                                                                <td style="width: 8px; height: 33px">
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        &nbsp;<asp:GridView ID="gvqf" runat="server" AutoGenerateColumns="False" BackColor="White"
                                                            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Font-Names="华文新魏"
                                                            Font-Size="Medium" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDataBound="gvqf_RowDataBound" Width="630px">
                                                            <FooterStyle BackColor="White" ForeColor="#000066" />
                                                            <Columns>
                                                                <asp:BoundField DataField="name" HeaderText="住户名称" />
                                                                <asp:BoundField DataField="address" HeaderText="住户地址" />
                                                                <asp:BoundField DataField="leibie" HeaderText="欠费类别" />
                                                                <asp:BoundField DataField="stime" HeaderText="起始日期" />
                                                                <asp:BoundField DataField="etime" HeaderText="终止日期" />
                                                                <asp:BoundField DataField="qianfei" HeaderText="欠费金额" />
                                                                <asp:BoundField DataField="state" HeaderText="状态" />
                                                                <asp:BoundField DataField="person" HeaderText="经手人" />
                                                                <asp:CommandField HeaderText="选择信息" ShowSelectButton="True" />
                                                            </Columns>
                                                            <RowStyle ForeColor="#000066" />
                                                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                                        </asp:GridView>
                                                    </font>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" style="width: 602px; height: 142px" valign="top">
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
    
    </div>
    </form>
</body>
</html>
