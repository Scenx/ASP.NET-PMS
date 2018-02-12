<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zhuhuxinxiguanli.aspx.cs" Inherits="zhuhuxinxiguanli" %>



<%@ Register Src="../userControl/foot.ascx" TagName="foot" TagPrefix="uc2" %>
<%@ Register Src="../userControl/head.ascx" TagName="head" TagPrefix="uc4" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>^_^  小区物业内部管理网-------住户信息管理  ^_^</title>
</head>
<body background="../image/index_03.jpg">
    <form id="form1" runat="server">
    <div>
        <div>
            <div>
                <div>
                    <table id="Table1" align="center" border="1" cellpadding="1" cellspacing="1" width="780" style="padding-right: 0px; padding-left: 0px; background-image: url(../image/guanli_03.jpg); padding-bottom: 0px; margin: 0px; padding-top: 0px">
                        <tr>
                            <td align="center" style="height: 132px; width: 910px;">
                                &nbsp;&nbsp;<uc4:head ID="Head1" runat="server" />
                            </td>
                        </tr>
                        <tr style="font-size: 12pt">
                            <td style="height: 695px; width: 910px;">
                                <table id="Table3" border="0" cellpadding="0" cellspacing="0" style="width: 828px;
                                    height: 528px" width="828">
                                    <tr>
                                        <td style="width: 213px; height: 283px" valign="top">
                                            <table id="Table4" border="0" cellpadding="0" cellspacing="0" style="border-right: #ff9900 1px solid"
                                                width="100%">
                                                <tr>
                                                    <td align="right" style="height: 29px">
                                                        <img alt="" src="../image/banner.gif" id="imgCzq" />
                                                        &nbsp;&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td style="height: 16px">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" style="height: 40px">
                                                        <asp:LinkButton ID="lbtnzfcx" runat="server" CausesValidation="False" OnClick="LinkButton1_Click" Font-Names="华文新魏" Font-Size="Medium">住户住房信息查询</asp:LinkButton></td>
                                                </tr>
                                                <tr>
                                                    <td align="center" style="height: 27px">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" style="height: 27px">
                                                        <asp:LinkButton ID="lbtnzfsh" runat="server" CausesValidation="False" OnClick="LinkButton3_Click" Font-Names="华文新魏" Font-Size="Medium">住户住房信息审核</asp:LinkButton></td>
                                                </tr>
                                                <tr>
                                                    <td align="center" style="height: 27px">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" style="height: 27px">
                                                        </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" style="height: 263px">
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td style="width: 630px; height: 283px" valign="top">
                                            <table id="Table6" border="0" cellpadding="1" cellspacing="0" width="615">
                                                <tr>
                                                    <td align="center" style="font-size: 22px; width: 619px; font-family: 隶书; height: 53px">
                                                        <hr size="3" style="font-size: 1px; width: 100%; color: #ff9900; height: 3px" width="100%" />
                                                        &nbsp;<asp:Label ID="lblZhxx" runat="server" Height="34px" Text="住户住房信息管理" Width="193px"></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td align="center" style="font-size: 24px; width: 619px; color: #0000ff; font-family: 隶书;
                                                        height: 144px" valign="top">
                                                        <font color="#ff6600" face="宋体">
                                                            <table id="Table7" border="0" cellpadding="0" cellspacing="0" style="border-top: #ff9900 1px solid;
                                                                border-bottom: #ff9900 1px solid" width="100%">
                                                                <tr>
                                                                    <td style="width: 79px; height: 26px">
                                                                    </td>
                                                                    <td style="width: 70px; height: 26px">
                                                                        <asp:Label ID="lblXqmc" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="Black"
                                                                            Text="小区名称：" Width="81px"></asp:Label></td>
                                                                    <td style="height: 26px">
                                                                    </td>
                                                                    <td style="width: 121px; height: 26px" align="left">
                                                                        <asp:TextBox ID="txtxqmc" runat="server" Width="167px"></asp:TextBox></td>
                                                                    <td style="height: 26px" colspan="2" align="left">
                                                                        <asp:RequiredFieldValidator ID="rfvXqmc" runat="server" ControlToValidate="txtxqmc"
                                                                            Display="Dynamic" ErrorMessage="小区名称不能为空" Font-Names="华文新魏" Font-Size="Medium"></asp:RequiredFieldValidator></td>
                                                                    <td style="width: 57px; height: 26px">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 79px; height: 7px">
                                                                    </td>
                                                                    <td style="width: 70px; height: 7px" align="left">
                                                                        <asp:Label ID="lblLymc" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="Black"
                                                                            Text="楼宇名称：" Width="101px"></asp:Label></td>
                                                                    <td style="height: 7px">
                                                                    </td>
                                                                    <td style="width: 121px; height: 7px">
                                                                        <asp:TextBox ID="txtlymc" runat="server" Width="167px"></asp:TextBox></td>
                                                                    <td style="height: 7px" colspan="2" align="left">
                                                                        <asp:RequiredFieldValidator ID="rfvlymc" runat="server" ControlToValidate="txtlymc"
                                                                            Display="Dynamic" ErrorMessage="楼宇名称不能为空" Font-Names="华文新魏" Font-Size="Medium"></asp:RequiredFieldValidator></td>
                                                                    <td style="width: 57px; height: 7px">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 79px; height: 18px">
                                                                    </td>
                                                                    <td style="width: 70px; height: 18px" align="left" valign="top">
                                                                        <asp:Label ID="lblLydy" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="Black"
                                                                            Text="楼宇单元：" Width="100px"></asp:Label></td>
                                                                    <td style="height: 18px">
                                                                    </td>
                                                                    <td style="width: 121px; height: 18px" align="left" valign="top">
                                                                        <asp:TextBox ID="txtlydy" runat="server" Width="169px"></asp:TextBox></td>
                                                                    <td align="left" colspan="2" style="height: 18px" valign="top">
                                                                        <asp:Label ID="Label20" runat="server" Font-Names="华文新魏" Font-Size="Small" Text="(例：07.为7层)"
                                                                            Width="125px" ForeColor="Black"></asp:Label>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtlydy"
                                                                            Display="Dynamic" ErrorMessage="楼宇单元不能为空" Font-Names="华文新魏" Font-Size="Medium"
                                                                            Width="170px"></asp:RequiredFieldValidator></td>
                                                                    <td style="width: 57px; height: 18px">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 79px; height: 1px">
                                                                    </td>
                                                                    <td style="width: 70px; height: 1px" align="left" valign="top">
                                                                        <asp:Label ID="lblFh" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="Black"
                                                                            Text="房　号：" Width="82px"></asp:Label></td>
                                                                    <td style="height: 1px">
                                                                    </td>
                                                                    <td style="width: 121px; height: 1px">
                                                                        <asp:TextBox ID="txtfh" runat="server" Width="169px"></asp:TextBox></td>
                                                                    <td style="width: 112px; height: 1px" align="left" valign="top">
                                                                        <asp:Label ID="Label21" runat="server" Font-Names="华文新魏" Font-Size="Small" Text="(例：5-01)" Width="105px" ForeColor="Black"></asp:Label>
                                                                        <asp:RequiredFieldValidator ID="rfvFh" runat="server" ControlToValidate="txtfh"
                                                                            Display="Dynamic" ErrorMessage="房号不能为空" Font-Names="华文新魏" Font-Size="Medium"></asp:RequiredFieldValidator></td>
                                                                    <td style="height: 1px" align="left">
                                                                        </td>
                                                                    <td style="width: 57px; height: 1px">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 79px; height: 12px">
                                                                    </td>
                                                                    <td align="left" style="width: 70px; height: 12px">
                                                                        <asp:Label ID="lblFx" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="Black"
                                                                            Text="房  型：" Width="69px"></asp:Label></td>
                                                                    <td style="height: 12px">
                                                                    </td>
                                                                    <td align="left" style="width: 121px; height: 12px">
                                                                        <asp:DropDownList ID="DropDownList1" runat="server" ForeColor="Red" Width="176px">
                                                                            <asp:ListItem>一室一厅</asp:ListItem>
                                                                            <asp:ListItem>两室一厅</asp:ListItem>
                                                                            <asp:ListItem>三室一厅</asp:ListItem>
                                                                        </asp:DropDownList></td>
                                                                    <td style="width: 112px; height: 12px">
                                                                    </td>
                                                                    <td style="height: 12px">
                                                                    </td>
                                                                    <td style="width: 57px; height: 12px">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 79px; height: 27px">
                                                                    </td>
                                                                    <td align="center" style="width: 70px; height: 27px">
                                                                        <asp:Label ID="lblJzmj" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="Black"
                                                                            Text="建筑面积：" Width="84px"></asp:Label></td>
                                                                    <td style="height: 27px">
                                                                    </td>
                                                                    <td align="center" style="width: 121px; height: 27px">
                                                                        <asp:TextBox ID="txtjzmj" runat="server" Width="173px"></asp:TextBox>&nbsp;
                                                                    </td>
                                                                    <td style="height: 27px" colspan="2" align="left">
                                                                        <asp:Label ID="Label22" runat="server" Font-Names="华文新魏" Font-Size="Small" Text="（例：100）" Width="143px" ForeColor="Black"></asp:Label><asp:RequiredFieldValidator ID="rfvJzmj" runat="server" ControlToValidate="txtjzmj"
                                                                            Display="Dynamic" ErrorMessage="建筑面积不能为空" Font-Names="华文新魏" Font-Size="Medium"></asp:RequiredFieldValidator>
                                                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtjzmj"
                                                                            Display="Dynamic" ErrorMessage="建筑面积格式不正确" Font-Size="10pt" Operator="DataTypeCheck"
                                                                            Type="Integer"></asp:CompareValidator></td>
                                                                    <td style="width: 57px; height: 27px">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 79px; height: 26px">
                                                                    </td>
                                                                    <td style="width: 70px; height: 26px">
                                                                        <asp:Label ID="lblCqzk" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="Black"
                                                                            Text="产权状况：" Width="81px"></asp:Label></td>
                                                                    <td style="height: 26px">
                                                                    </td>
                                                                    <td style="width: 121px; height: 26px" align="left">
                                                                        <asp:DropDownList ID="DropDownList2" runat="server" ForeColor="Red" Width="179px">
                                                                            <asp:ListItem>国有房产</asp:ListItem>
                                                                        </asp:DropDownList></td>
                                                                    <td style="width: 112px; height: 26px">
                                                                    </td>
                                                                    <td style="height: 26px">
                                                                    </td>
                                                                    <td style="width: 57px; height: 26px">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 79px; height: 33px">
                                                                    </td>
                                                                    <td style="width: 70px; height: 33px" valign="top">
                                                                        <asp:Label ID="lblBz" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="Black"
                                                                            Text="房屋备注：" Width="83px"></asp:Label></td>
                                                                    <td style="height: 33px">
                                                                    </td>
                                                                    <td style="width: 121px; height: 33px">
                                                                        <asp:TextBox ID="txtfwbz" runat="server" Height="68px" TextMode="MultiLine" Width="173px"></asp:TextBox></td>
                                                                    <td style="height: 33px" colspan="2" align="left" valign="top">
                                                                        <asp:RequiredFieldValidator ID="rfvZfbz" runat="server" ControlToValidate="txtfwbz"
                                                                            Display="Dynamic" ErrorMessage="住房备注不能为空" Font-Names="华文新魏" Font-Size="Medium"></asp:RequiredFieldValidator></td>
                                                                    <td style="width: 57px; height: 33px">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 79px; height: 20px">
                                                                    </td>
                                                                    <td style="width: 70px; height: 20px">
                                                                        <asp:Label ID="lblSyzk" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="Black"
                                                                            Text="使用状况：" Width="84px"></asp:Label></td>
                                                                    <td style="height: 20px">
                                                                    </td>
                                                                    <td style="width: 121px; height: 20px">
                                                                        <asp:DropDownList ID="DropDownList3" runat="server" ForeColor="Red" Width="175px">
                                                                            <asp:ListItem Selected="True">已使用</asp:ListItem>
                                                                            <asp:ListItem>未使用</asp:ListItem>
                                                                        </asp:DropDownList></td>
                                                                    <td style="height: 20px" colspan="2">
                                                                    </td>
                                                                    <td style="width: 57px; height: 20px">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 79px; height: 30px">
                                                                    </td>
                                                                    <td style="width: 70px; height: 30px" valign="top">
                                                                        <asp:Label ID="lblQrsj" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="Black"
                                                                            Text="迁入时间：" Width="83px"></asp:Label></td>
                                                                    <td style="height: 30px">
                                                                    </td>
                                                                    <td style="width: 121px; height: 30px" align="left">
                                                                        <asp:TextBox ID="txtqrsj" runat="server" Width="175px" ToolTip="迁入时间请按旁边的按钮"></asp:TextBox><asp:Button
                                                                            ID="btnqrtime" runat="server" BackColor="#C0C0FF" CausesValidation="False" OnClick="btnqrtime_Click"
                                                                            Text=".." Width="21px" />
                                                                        <asp:Calendar ID="calqrtime" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66"
                                                                            BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt"
                                                                            ForeColor="#663399" Height="200px" OnSelectionChanged="calqrtime_SelectionChanged"
                                                                            ShowGridLines="True" Width="200px">
                                                                            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                                                            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                                                                            <SelectorStyle BackColor="#FFCC66" />
                                                                            <OtherMonthDayStyle ForeColor="#CC9966" />
                                                                            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                                                            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                                                            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                                                                        </asp:Calendar>
                                                                    </td>
                                                                    <td style="height: 30px" colspan="2" align="left" valign="top">
                                                                        <asp:RequiredFieldValidator ID="rfvQrsj" runat="server" ControlToValidate="txtqrsj"
                                                                            Display="Dynamic" ErrorMessage="迁入时间不能为空" Font-Names="华文新魏" Font-Size="Medium"></asp:RequiredFieldValidator></td>
                                                                    <td style="width: 57px; height: 30px">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 79px; height: 21px">
                                                                    </td>
                                                                    <td style="width: 70px; height: 21px" align="left" valign="top">
                                                                        <asp:Label ID="lblZfmc" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="Black"
                                                                            Text="住房名称：" Width="100px"></asp:Label></td>
                                                                    <td style="height: 21px" valign="top">
                                                                    </td>
                                                                    <td style="width: 121px; height: 21px" align="left" valign="top">
                                                                        <asp:TextBox ID="txtzfmc" runat="server" Width="171px"></asp:TextBox></td>
                                                                    <td style="height: 21px" colspan="2" align="left">
                                                                        <asp:Button ID="Button1" runat="server" CausesValidation="False" Height="27px" OnClick="Button1_Click1"
                                                                            Text="检验住房名称　" Width="109px" /><asp:RequiredFieldValidator ID="rfvZfmc" runat="server" ControlToValidate="txtzfmc"
                                                                            Display="Dynamic" ErrorMessage="住房名称不能为空" Font-Names="华文新魏" Font-Size="Medium"></asp:RequiredFieldValidator></td>
                                                                    <td style="width: 57px; height: 21px">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 79px; height: 58px">
                                                                    </td>
                                                                    <td style="width: 70px; height: 58px" align="left" valign="top">
                                                                        <asp:Label ID="lblSfz" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="Black"
                                                                            Text="身份证：" Width="87px"></asp:Label></td>
                                                                    <td style="height: 58px">
                                                                    </td>
                                                                    <td style="width: 121px; height: 58px" align="left" valign="top">
                                                                        <asp:TextBox ID="txtsfz" runat="server" Width="174px"></asp:TextBox></td>
                                                                    <td style="height: 58px" colspan="2" align="left" valign="top">
                                                                        <asp:RequiredFieldValidator ID="rfvSfzh" runat="server" ControlToValidate="txtsfz"
                                                                            Display="Dynamic" ErrorMessage="身份证号不能为空" Font-Names="华文新魏" Font-Size="Medium"></asp:RequiredFieldValidator>
                                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtsfz"
                                                                            Display="Dynamic" ErrorMessage="身份证格式不正确" Font-Names="华文新魏" Font-Size="Medium"
                                                                            ValidationExpression="\d{17}[\d|X]|\d{15}"></asp:RegularExpressionValidator></td>
                                                                    <td style="width: 57px; height: 58px">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 79px; height: 25px">
                                                                    </td>
                                                                    <td style="width: 70px; height: 25px">
                                                                        <asp:Label ID="lblGzdw" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="Black"
                                                                            Text="工作单位：" Width="82px"></asp:Label></td>
                                                                    <td style="height: 25px">
                                                                    </td>
                                                                    <td style="width: 121px; height: 25px" align="left">
                                                                        <asp:TextBox ID="txtgzdw" runat="server" Width="173px"></asp:TextBox></td>
                                                                    <td style="height: 25px" colspan="2" align="left">
                                                                        <asp:RequiredFieldValidator ID="rfvGzdw" runat="server" ControlToValidate="txtgzdw"
                                                                            Display="Dynamic" ErrorMessage="工作单位不能为空" Font-Names="华文新魏" Font-Size="Medium"></asp:RequiredFieldValidator></td>
                                                                    <td style="width: 57px; height: 25px">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 79px;">
                                                                    </td>
                                                                    <td style="width: 70px;" valign="top">
                                                                        <asp:Label ID="lblLxdh" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="Black"
                                                                            Text="固定电话：" Width="83px"></asp:Label></td>
                                                                    <td>
                                                                    </td>
                                                                    <td style="width: 121px;" align="left" valign="top">
                                                                        <asp:TextBox ID="txtlxdh" runat="server" Width="172px"></asp:TextBox></td>
                                                                    <td colspan="2" align="left">
                                                                        <asp:RequiredFieldValidator ID="rfvLxdh" runat="server" Display="Dynamic"
                                                                            ErrorMessage="联系电话不能为空" Font-Names="华文新魏" Font-Size="Medium" ControlToValidate="txtlxdh"></asp:RequiredFieldValidator>
                                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtlxdh"
                                                                            Display="Dynamic" ErrorMessage="电话格式不正确" Font-Names="华文新魏" Font-Size="Medium"
                                                                            ValidationExpression="\d{3,4}-\d{7,8}" Width="153px"></asp:RegularExpressionValidator></td>
                                                                    <td style="width: 57px;">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 79px; height: 25px">
                                                                        </td>
                                                                    <td style="width: 70px; height: 25px" valign="top">
                                                                        <asp:Label ID="lblLxdz" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="Black"
                                                                            Text="联系地址：" Width="81px"></asp:Label></td>
                                                                    <td style="height: 25px">
                                                                    </td>
                                                                    <td style="width: 121px; height: 25px" align="left">
                                                                        <asp:TextBox ID="txtlxdz" runat="server" TextMode="MultiLine" Width="174px"></asp:TextBox></td>
                                                                    <td style="height: 25px" colspan="2" align="left">
                                                                        <asp:RequiredFieldValidator ID="rfvLxdz" runat="server" Display="Dynamic"
                                                                            ErrorMessage="联系地址不能为空" Font-Names="华文新魏" Font-Size="Medium" ControlToValidate="txtlxdz"></asp:RequiredFieldValidator></td>
                                                                    <td style="width: 57px; height: 25px">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="right" colspan="5" style="height: 44px">
                                                                        &nbsp;<asp:Button ID="btnAdd" runat="server" OnClick="Button1_Click" Text="添加" Width="37px" Height="21px" />
                                                                        <asp:Button ID="btnDelete" runat="server"  Text="删除" Width="40px" Height="21px" OnClick="btnDelete_Click" />&nbsp;<asp:Button
                                                                            ID="btnUpdate" runat="server" Height="20px"  Text="修改" Width="37px" OnClick="btnUpdate_Click" />
                                                                        <asp:Button ID="btnSelect" runat="server"  Text="查询" Width="37px" CausesValidation="False" Height="21px" />&nbsp;
                                                                    </td>
                                                                    <td style="height: 44px">
                                                                    </td>
                                                                    <td style="width: 57px; height: 44px">
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        <asp:GridView ID="gvzhzf" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                                            CellPadding="4" Font-Names="华文新魏" Font-Size="Small" GridLines="Horizontal" PageSize="5" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" OnSelectedIndexChanged="gvzhzf_SelectedIndexChanged" OnRowDataBound="gvzhzf_RowDataBound" OnPageIndexChanging="gvzhzf_PageIndexChanging" 
                                                            
                                                            >
                                                            <FooterStyle BackColor="White" ForeColor="#333333" />
                                                            <Columns>
                                                                <asp:BoundField DataField="zfname" HeaderText="住房名称" />
                                                                <asp:BoundField DataField="name" HeaderText="小区名称" />
                                                                <asp:BoundField DataField="lyname" HeaderText="楼宇名称" />
                                                                <asp:BoundField DataField="lydy" HeaderText="楼宇单元" />
                                                                <asp:BoundField DataField="fanghao" HeaderText="房号" />
                                                                <asp:BoundField DataField="fangxing" HeaderText="房型" />
                                                                <asp:BoundField DataField="jzmj" HeaderText="建筑面积" />
                                                                <asp:BoundField DataField="cqstate" HeaderText="产权状况" />
                                                                <asp:BoundField DataField="fwbiezhu" HeaderText="住房备注" />
                                                                <asp:BoundField DataField="systate" HeaderText="使用状况" />
                                                                <asp:BoundField DataField="qrtime" HeaderText="迁入时间" />
                                                                <asp:BoundField DataField="idcard" HeaderText="身份证号" />
                                                                <asp:BoundField DataField="work" HeaderText="工作单位" />
                                                                <asp:BoundField DataField="lxtel" HeaderText="联系电话" />
                                                                <asp:BoundField DataField="address" HeaderText="联系地址" />
                                                                <asp:CommandField ShowSelectButton="True" />
                                                            </Columns>
                                                            <RowStyle BackColor="White" ForeColor="#333333" />
                                                            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                                                            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                                                            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                                                        </asp:GridView>
                                                        &nbsp; 
                                                        </font>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" style="width: 619px; height: 142px" valign="top">
                                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                                                        <hr color="#ff9900" size="1" width="100%" />
                                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
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
