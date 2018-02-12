<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cheliangguanli.aspx.cs" Inherits="caiqianguanli" %>



<%@ Register Src="../userControl/head.ascx" TagName="head" TagPrefix="uc1" %>
<%@ Register Src="../userControl/foot.ascx" TagName="foot" TagPrefix="uc2" %>




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>^_^  小区物业内部管理网-------停车信息管理  ^_^</title>
    <script>
function click() {
if (event.button==2) {window.external.addFavorite('http://****.com','《小区物业内部管理网》') }}
document.onmousedown=click
</script>
</head>
<body >
    <form id="form1" runat="server">
    <div>
        <div>
            <div>
                <div>
                    <table id="Table1" align="center" border="1" cellpadding="1" cellspacing="1" width="780" style="background-image: url(../image/guanli_03.jpg)">
                        <tr>
                            <td align="center" style="height: 100%; width: 941px;">
                                <uc1:head ID="Head1" runat="server" />
                                &nbsp;
                            </td>
                        </tr>
                        <tr style="font-size: 12pt">
                            <td style="height: 695px;" width="100%">
                                <table id="Table3" border="0" cellpadding="0" cellspacing="0" style="width: 828px;
                                    height: 528px" width="828">
                                    <tr>
                                        <td style="width: 213px; height: 283px" valign="top">
                                            <table id="Table4" border="0" cellpadding="0" cellspacing="0" style="border-right: #ff9900 1px solid"
                                                width="100%">
                                                <tr>
                                                    <td align="right" style="height: 29px">
                                                        <img id="imgCzq" alt="" src="../image/banner.gif" /></td>
                                                </tr>
                                                <tr>
                                                    <td style="height: 16px">
                                                        <hr size="1" width="100%" />
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td align="center" style="height: 27px">
                                                        <asp:LinkButton ID="lbTccx" runat="server" OnClick="LinkButton2_Click" CausesValidation="False" >停车场停车信息查询</asp:LinkButton></td>
                                                </tr>
                                                <tr>
                                                    <td style="height: 21px">
                                                        &nbsp;
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" style="height: 40px">
                                                        <asp:LinkButton ID="lbTcsh" runat="server" OnClick="LinkButton3_Click" CausesValidation="False">停车场停车信息审核</asp:LinkButton></td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td style="width: 630px; height: 283px" valign="top">
                                            <table id="Table6" border="0" cellpadding="1" cellspacing="0" width="615">
                                                <tr>
                                                    <td align="center" style="font-size: 22px; width: 619px; font-family: 隶书; height: 53px">
                                                        <hr size="3" style="font-size: 1px; width: 100%; color: #ff9900; height: 3px" width="100%" />
                                                        &nbsp;<asp:Label ID="lbltcdz" runat="server" Height="34px" Text="小区物业停车信息管理" Width="230px"></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td align="center" style="font-size: 24px; width: 619px; color: #0000ff; font-family: 隶书;
                                                        height: 144px" valign="top">
                                                        <font color="#ff6600" face="宋体">
                                                            <table id="Table7" border="0" cellpadding="0" cellspacing="0" style="border-top: #ff9900 1px solid;
                                                                border-bottom: #ff9900 1px solid" width="100%">
                                                                <tr>
                                                                    <td colspan="8" style="width: 217px;">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 120px; height: 87px" align="left" valign="top">
                                                                        <asp:Label ID="lblcph" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="#FFC080"
                                                                            Text="车牌号：" Width="64px"></asp:Label>
                                                                        </td>
                                                                    <td style="width: 96px; height: 87px" align="left" valign="top">
                                                                        <asp:TextBox ID="txtCph" runat="server" Width="160px"></asp:TextBox>
                                                                        <asp:Button ID="Button1" runat="server" Text="检验车牌号" CausesValidation="False" OnClick="Button1_Click1" Width="79px" />
                                                                        <asp:RequiredFieldValidator ID="rfvCph" runat="server" ControlToValidate="txtCph"
                                                                            Display="Dynamic" ErrorMessage="车牌号不能为空" Font-Names="华文新魏" Font-Size="Medium"
                                                                            Width="118px"></asp:RequiredFieldValidator>
                                                                        </td>
                                                                    <td style="width: 840px; height: 87px">
                                                                    </td>
                                                                    <td style="height: 87px">
                                                                        </td>
                                                                    <td style="width: 73px; height: 87px" valign="top">
                                                                        <asp:Label ID="lbltcch" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="#FFC080"
                                                                            Text="停车场号：" Width="87px"></asp:Label></td>
                                                                    <td style="width: 68px; height: 87px" align="left" valign="top">
                                                                        <asp:TextBox ID="txtTcch" runat="server" Width="151px"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="rfvTcch" runat="server" ControlToValidate="txtTcch"
                                                                            ErrorMessage="停车场号不能为空" Font-Names="华文新魏" Font-Size="Medium" Width="132px"></asp:RequiredFieldValidator></td>
                                                                    <td style="height: 87px">
                                                                    </td>
                                                                    <td style="width: 8px; height: 87px">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 120px; height: 23px" align="left" valign="top">
                                                                        <asp:Label ID="lblcz" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="#FFC080"
                                                                            Text="车主：" Width="49px"></asp:Label></td>
                                                                    <td style="width: 96px; height: 23px" align="left" valign="top">
                                                                        <asp:TextBox ID="txtCz" runat="server" Width="163px"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="rftCz" runat="server" ControlToValidate="txtCz" Display="Dynamic"
                                                                            ErrorMessage="车主不能为空" Font-Names="华文新魏" Font-Size="Medium" Width="103px"></asp:RequiredFieldValidator>
                                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtCz"
                                                                            Display="Dynamic" ErrorMessage="车主格式应为汉字" Font-Size="Small" ValidationExpression="^[\u4E00-\u9FA5]{0,}$" Width="107px"></asp:RegularExpressionValidator></td>
                                                                    <td style="width: 840px; height: 23px">
                                                                    </td>
                                                                    <td style="height: 23px" valign="top">
                                                                    </td>
                                                                    <td style="width: 73px; height: 23px" valign="top">
                                                                        <asp:Label ID="lbltcdd" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="#FFC080"
                                                                            Text="停车地点：" Width="84px"></asp:Label></td>
                                                                    <td style="width: 68px; height: 23px" align="left" valign="top">
                                                                        <asp:TextBox ID="txtTcdd" runat="server" Width="159px"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="rfvTcdd" runat="server" ControlToValidate="txtTcdd"
                                                                            Display="Dynamic" ErrorMessage="停车地点不能为空" Font-Names="华文新魏" Font-Size="Medium" Width="136px"></asp:RequiredFieldValidator></td>
                                                                    <td style="height: 23px">
                                                                    </td>
                                                                    <td style="width: 8px; height: 23px">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 120px; height: 36px" align="left" valign="top">
                                                                        <asp:Label ID="lblstime" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="#FFC080"
                                                                            Text="开始时间：" Width="81px"></asp:Label></td>
                                                                    <td align="left" style="width: 96px; height: 36px" valign="top">
                                                                       <div style="text-align: center">
                                                                            <table border="0" style="width: 100%">
                                                                                <tr>
                                                                                    <td style="width: 100px">
                                                                        <asp:TextBox ID="txtstime" runat="server" Width="130px" ToolTip="选择旁边的按钮"></asp:TextBox></td>
                                                                                    <td style="width: 100px">
                                                                                        <asp:Button
                                                                            ID="Button2" runat="server" BackColor="#C0C0FF" CausesValidation="False" OnClick="Button2_Click1"
                                                                            Text=".." Width="23px" /></td>
                                                                                </tr>
                                                                            </table>
                                                                        </div>
                                                                        <asp:Calendar ID="CalStime" runat="server" BackColor="White" BorderColor="#3366CC"
                                                                            BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana"
                                                                            Font-Size="8pt" ForeColor="#003399" Height="200px" OnSelectionChanged="Calendar2_SelectionChanged"
                                                                            Width="220px">
                                                                            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                                                            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                                                            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                                                            <WeekendDayStyle BackColor="#CCCCFF" />
                                                                            <OtherMonthDayStyle ForeColor="#999999" />
                                                                            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                                                            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                                                                            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True"
                                                                                Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                                                                        </asp:Calendar>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="开始时间不能为空"
                                                                            Font-Names="华文新魏" Font-Size="Medium" ControlToValidate="txtstime" Width="132px"></asp:RequiredFieldValidator>
                                                                    </td>
                                                                    <td align="left" style="width: 840px; height: 36px" valign="top">
                                                                    </td>
                                                                    <td style="height: 36px" valign="top">
                                                                    </td>
                                                                    <td align="left" style="width: 73px; height: 36px" valign="top">
                                                                        <asp:Label ID="lbletime" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="#FFC080"
                                                                            Text="结束时间：" Width="100px"></asp:Label></td>
                                                                    <td style="width: 68px; height: 36px" align="left" valign="top">
                                                                      
                                                                        <div style="text-align: center">
                                                                            <table border="0" style="width: 100%">
                                                                                <tr>
                                                                                    <td style="width: 100px">
                                                                        <asp:TextBox ID="txtEtime" runat="server" Width="130px" ToolTip="选择旁边的按钮"></asp:TextBox></td>
                                                                                    <td style="width: 100px">
                                                                                        <asp:Button
                                                                            ID="Button3" runat="server" BackColor="#C0C0FF" CausesValidation="False" Height="23px"
                                                                            OnClick="Button3_Click1" Text=".." Width="23px" /></td>
                                                                                </tr>
                                                                            </table>
                                                                        </div>
                                                                        <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="#3366CC"
                                                                            BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana"
                                                                            Font-Size="8pt" ForeColor="#003399" Height="200px" OnSelectionChanged="Calendar2_SelectionChanged1"
                                                                            Width="220px">
                                                                            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                                                            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                                                            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                                                            <WeekendDayStyle BackColor="#CCCCFF" />
                                                                            <OtherMonthDayStyle ForeColor="#999999" />
                                                                            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                                                            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                                                                            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True"
                                                                                Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                                                                        </asp:Calendar>
                                                                        <asp:RequiredFieldValidator ID="rfvEtime" runat="server" ControlToValidate="txtEtime"
                                                                            Display="Dynamic" ErrorMessage="结束时间不能为空" Font-Names="华文新魏" Font-Size="Medium" Width="131px"></asp:RequiredFieldValidator></td>
                                                                    <td style="height: 36px">
                                                                    </td>
                                                                    <td style="width: 8px; height: 36px">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 120px; height: 33px" valign="top">
                                                                        <asp:Label ID="lbltcglf" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="#FFC080"
                                                                            Text="停车管理费：" Width="102px"></asp:Label></td>
                                                                    <td style="width: 96px; height: 33px">
                                                                        <asp:TextBox ID="txtTcglf" runat="server" Width="167px"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTcglf"
                                                                            Display="Dynamic" ErrorMessage="停车管理费不能为空" Font-Names="华文新魏" Font-Size="Medium" Width="185px"></asp:RequiredFieldValidator>
                                                                        <asp:RegularExpressionValidator ID="revtcf" runat="server" ControlToValidate="txtTcglf"
                                                                            Display="Dynamic" ErrorMessage="停车管理费只能为数字" Font-Size="Small" Width="185px" ValidationExpression="\d*"></asp:RegularExpressionValidator></td>
                                                                    <td style="width: 840px; height: 33px">
                                                                    </td>
                                                                    <td style="height: 33px">
                                                                    </td>
                                                                    <td style="width: 73px; height: 33px" align="left" valign="top">
                                                                        <asp:Label ID="lbljsr" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="#FFC080"
                                                                            Text="经手人：" Width="66px"></asp:Label></td>
                                                                    <td style="width: 68px; height: 33px" align="left" valign="top">
                                                                        <asp:TextBox ID="txtjsr" runat="server" Width="163px"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="r" runat="server" ControlToValidate="txtjsr" Display="Dynamic"
                                                                            ErrorMessage="经手人不能为空" Font-Names="华文新魏" Font-Size="Medium" Width="115px"></asp:RequiredFieldValidator>
                                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtjsr"
                                                                            Display="Dynamic" ErrorMessage="经手人的格式应为汉字" Font-Size="Small" ValidationExpression="^[\u4E00-\u9FA5]{0,}$" Width="173px"></asp:RegularExpressionValidator></td>
                                                                    <td style="height: 33px">
                                                                    </td>
                                                                    <td style="width: 8px; height: 33px">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 120px; height: 37px" align="left" valign="top">
                                                                        <asp:Label ID="lblsjqk" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="#FFC080"
                                                                            Text="收缴情况："></asp:Label></td>
                                                                    <td style="width: 96px; height: 37px" align="left" valign="top">
                                                                        <asp:DropDownList ID="ddlsjqk" runat="server" ForeColor="Red" Width="169px">
                                                                            <asp:ListItem>未缴纳</asp:ListItem>
                                                                            <asp:ListItem Selected="True">已缴纳</asp:ListItem>
                                                                        </asp:DropDownList></td>
                                                                    <td align="left" style="width: 840px; height: 37px">
                                                                    </td>
                                                                    <td style="height: 37px" valign="top">
                                                                    </td>
                                                                    <td style="width: 73px; height: 37px" valign="top">
                                                                        <asp:Label ID="lblbz" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="#FFC080"
                                                                            Text="备　注：" Width="69px"></asp:Label>
                                                                    </td>
                                                                    <td style="width: 68px; height: 37px" align="left" valign="top">
                                                                        <asp:TextBox ID="txtBz" runat="server" Height="64px" Width="164px"></asp:TextBox><asp:RequiredFieldValidator
                                                                            ID="rfvBz" runat="server" ControlToValidate="txtBz" Display="Dynamic" ErrorMessage="备注不能为空"
                                                                            Font-Names="华文新魏" Font-Size="Medium" Width="124px"></asp:RequiredFieldValidator></td>
                                                                    <td style="height: 37px">
                                                                    </td>
                                                                    <td style="width: 8px; height: 37px">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="right" colspan="6" style="height: 41px">
                                                                        &nbsp;<asp:Button ID="btnAdd" runat="server" OnClick="Button1_Click" Text="添加" Width="52px" ToolTip="信息添加" Height="23px" />
                                                                        <asp:Button ID="btnCancel" runat="server" OnClick="Button2_Click" Text="删除" Width="56px" ToolTip="信息删除" />&nbsp;<asp:Button
                                                                            ID="btnUpdate" runat="server" Height="23px" OnClick="Button4_Click" Text="修改"
                                                                            Width="56px" ToolTip="信息修改" />
                                                                        <asp:Button ID="btnSelect" runat="server"  Text="查询" Width="54px" CausesValidation="False"  ToolTip="信息查询" OnClick="btnSelect_Click" />&nbsp;
                                                                    </td>
                                                                    <td style="height: 41px">
                                                                    </td>
                                                                    <td style="width: 8px; height: 41px">
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            &nbsp;
                                                            <asp:GridView ID="gvcl" runat="server" AutoGenerateColumns="False" CellPadding="4" Font-Names="华文新魏"
                                                                Font-Size="Medium"  ForeColor="#333333" GridLines="None" OnRowDataBound="gvcl_RowDataBound" Width="673px" OnSelectedIndexChanged="gvcl_SelectedIndexChanged1">
                                                                <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                                                                <Columns>
                                                                    <asp:BoundField DataField="ID" HeaderText="车牌号" />
                                                                    <asp:BoundField DataField="placeID" HeaderText="停车场号" />
                                                                    <asp:BoundField DataField="tenement" HeaderText="车主" />
                                                                    <asp:BoundField DataField="address" HeaderText="停车地点" />
                                                                    <asp:BoundField DataField="starDate" HeaderText="开始时间" />
                                                                    <asp:BoundField DataField="endDate" HeaderText="结束时间" />
                                                                    <asp:BoundField DataField="placeSum" HeaderText="停车管理费" />
                                                                    <asp:BoundField DataField="person" HeaderText="经手人" />
                                                                    <asp:BoundField DataField="handle" HeaderText="收缴情况" />
                                                                    <asp:BoundField DataField="memo" HeaderText="备注" />
                                                                    <asp:CommandField HeaderText="选择信息" ShowSelectButton="True" />
                                                                </Columns>
                                                                <RowStyle ForeColor="#333333" BackColor="#F7F6F3" />
                                                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                                <EditRowStyle BackColor="#999999" />
                                                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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
    </div>
    </form>
</body>
</html>
