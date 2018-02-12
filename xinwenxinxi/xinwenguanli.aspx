<%@ Page Language="C#" AutoEventWireup="true" CodeFile="xinwenguanli.aspx.cs" Inherits="xinwenguanli" %>



<%@ Register Src="../userControl/foot.ascx" TagName="foot" TagPrefix="uc1" %>
<%@ Register Src="../userControl/head.ascx" TagName="head" TagPrefix="uc2" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>^_^  小区物业内部管理网-------新闻信息维护管理  ^_^</title>
</head>
<body background="../image/index_03.jpg">
    <form id="form1" runat="server">
    <div>
        <div>
            <div>
                <div>
                    <table id="Table1" align="center" border="1" cellpadding="1" cellspacing="1" width="780" style="background-image: url(../image/guanli_03.jpg)">
                        <tr>
                            <td align="center" style="height: 132px">
                                &nbsp;&nbsp;<uc2:head ID="Head1" runat="server" />
                            </td>
                        </tr>
                        <tr style="font-size: 12pt">
                            <td style="height: 695px">
                                <table id="Table3" border="0" cellpadding="0" cellspacing="0" style="width: 828px;
                                    height: 528px" width="828">
                                    <tr>
                                        <td style="width: 213px; height: 283px; padding-right: 0px; padding-left: 0px; padding-bottom: 0px; margin: 0px; padding-top: 0px;" valign="top">
                                            &nbsp; &nbsp;&nbsp;
                                                        <img id="imgCzq" alt="" src="../image/banner.gif" />
                                            <table>
                                                <tr>
                                                    <td style="width: 206px">
                                                        </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 206px" align="center">
                                                        <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" OnClick="LinkButton2_Click" >新闻信息查询</asp:LinkButton></td>
                                                </tr>
                                                <tr>
                                                    <td align="center" style="width: 206px">
                                                        &nbsp;&nbsp;
                                                        </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 206px">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" style="width: 206px">
                                                        <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" OnClick="LinkButton3_Click" >新闻信息审核</asp:LinkButton></td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td style="width: 630px; height: 283px" valign="top">
                                            <table id="Table6" border="0" cellpadding="1" cellspacing="0" width="615">
                                                <tr>
                                                    <td align="center" style="font-size: 22px; width: 619px; font-family: 隶书; height: 53px">
                                                        <hr size="3" style="font-size: 1px; width: 100%; color: #ff9900; height: 3px" width="100%" />
                                                        &nbsp;<asp:Label ID="Label5" runat="server" Height="34px" Text="新闻信息管理" Width="162px" Font-Names="华文新魏" Font-Size="Large" ForeColor="Maroon"></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td align="center" style="font-size: 24px; width: 619px; color: #0000ff; font-family: 隶书;
                                                        height: 144px" valign="top">
                                                        <font color="#ff6600" face="宋体">
                                                            <table id="Table7" border="0" cellpadding="0" cellspacing="0" style="border-top: #ff9900 1px solid;
                                                                border-bottom: #ff9900 1px solid" width="100%">
                                                                <tr>
                                                                    <td colspan="7" style="width: 217px; height: 25px">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 120px; height: 34px" align="left" valign="top">
                                                                        <asp:Label ID="lblZhmc" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="#FFC080"
                                                                            Text="新闻标题：" Width="100px"></asp:Label></td>
                                                                    <td style="width: 81px; height: 34px" align="left" valign="top">
                                                                        <asp:TextBox ID="txtxwbt" runat="server" TextMode="MultiLine" Width="169px" ToolTip="新闻标题"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="rfvxwbt" runat="server" ControlToValidate="txtxwbt"
                                                                            Display="Dynamic" ErrorMessage="住户名称不能为空" Font-Names="华文新魏" Font-Size="Medium"
                                                                            Width="133px">新闻标题不能为空</asp:RequiredFieldValidator>
                                                                        <asp:Button ID="btnxwbt" runat="server" 
                                                                            Text="检验新闻标题" Width="92px" CausesValidation="False" OnClick="btnxwbt_Click" /></td>
                                                                    <td style="height: 34px">
                                                                    </td>
                                                                    <td style="width: 121px; height: 34px" align="left" valign="top">
                                                                        <asp:Label ID="lblfbsj" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="#FFC080"
                                                                            Text="发布时间：" Width="100px"></asp:Label></td>
                                                                    <td style="width: 58px; height: 34px" align="left" valign="top">
                                                                     
                                                                        <div style="text-align: center">
                                                                            <table border="0" style="width: 100%">
                                                                                <tr>
                                                                                    <td style="width: 100px">
                                                                        <asp:TextBox ID="txtfbsj" runat="server" Width="134px" ToolTip="发布时间请按旁边按钮"></asp:TextBox></td>
                                                                                    <td style="width: 100px">
                                                                                        <asp:Button
                                                                            ID="btnfbtime" runat="server" BackColor="#C0C0FF" CausesValidation="False" Font-Bold="True"
                                                                            OnClick="btnfbtime_Click" Text=".." Width="25px" /></td>
                                                                                </tr>
                                                                            </table>
                                                                        </div>
                                                                        <asp:Calendar ID="calfbtime" runat="server" BackColor="White" BorderColor="#3366CC"
                                                                            BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana"
                                                                            Font-Size="8pt" ForeColor="#003399" Height="200px" OnSelectionChanged="calfbtime_SelectionChanged"
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
                                                                        <asp:RequiredFieldValidator ID="rfvfbsj" runat="server" ControlToValidate="txtfbsj"
                                                                            Display="Dynamic" ErrorMessage="RequiredFieldValidator" Font-Names="华文新魏" Font-Size="Medium"
                                                                            Width="128px">住户地址不能为空</asp:RequiredFieldValidator></td>
                                                                    <td style="height: 34px">
                                                                    </td>
                                                                    <td style="width: 8px; height: 34px">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 120px; height: 30px" align="left" valign="top">
                                                                        <asp:Label ID="lblxwnr" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="#FFC080"
                                                                            Text="新闻内容：" Width="100px"></asp:Label></td>
                                                                    <td style="width: 81px; height: 30px">
                                                                        <asp:TextBox ID="txtxwnr" runat="server" TextMode="MultiLine" Width="173px"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="rfvxwnr" runat="server" ControlToValidate="txtxwnr"
                                                                            Display="Dynamic" ErrorMessage="新闻内容不能为空" Font-Names="华文新魏" Font-Size="Medium"
                                                                            Width="134px"></asp:RequiredFieldValidator></td>
                                                                    <td style="height: 30px">
                                                                    </td>
                                                                    <td style="width: 121px; height: 30px" align="left" valign="top">
                                                                        <asp:Label ID="lblfbr" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="#FFC080"
                                                                            Text="发布人："></asp:Label></td>
                                                                    <td style="width: 58px; height: 30px" align="left" valign="top">
                                                                        <asp:TextBox ID="txtfbr" runat="server" Width="169px"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="rfvfvr" runat="server" ControlToValidate="txtfbr"
                                                                            Display="Dynamic" ErrorMessage="RequiredFieldValidator" Font-Names="华文新魏" Font-Size="Medium"
                                                                            Width="113px">发布人不能为空</asp:RequiredFieldValidator>
                                                                        </td>
                                                                    <td style="height: 30px">
                                                                    </td>
                                                                    <td style="width: 8px; height: 30px">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 120px; height: 43px" align="left" valign="top">
                                                                        <asp:Label ID="lblQflx" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="#FFC080"
                                                                            Text="新闻类别：" Width="100px"></asp:Label></td>
                                                                    <td align="left" style="width: 81px; height: 43px" valign="top">
                                                                        <asp:TextBox ID="txtxwlb" runat="server" Width="160px"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="rvfxwlb" runat="server" ControlToValidate="txtxwlb"
                                                                            Display="Dynamic" ErrorMessage="新闻类别不能为空" Font-Names="华文新魏" Font-Size="Medium"
                                                                            Width="163px"></asp:RequiredFieldValidator></td>
                                                                    <td style="height: 43px">
                                                                    </td>
                                                                    <td align="left" style="width: 121px; height: 43px" valign="top">
                                                                        <asp:Label ID="lblrqzs" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="#FFC080"
                                                                            Text="人气指数："></asp:Label></td>
                                                                    <td style="width: 58px; height: 43px" align="left">
                                                                        <asp:TextBox ID="txtrqzs" runat="server" Width="169px"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="rfvrqzs" runat="server" ControlToValidate="txtrqzs"
                                                                            Display="Dynamic" ErrorMessage="人气指数不能为空" Font-Names="华文新魏" Font-Size="Medium" Width="128px"></asp:RequiredFieldValidator>
                                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtrqzs"
                                                                            Display="Dynamic" ErrorMessage="人气指数只能是数字" Font-Size="Small" ValidationExpression="\d*" Width="121px"></asp:RegularExpressionValidator></td>
                                                                    <td style="height: 43px">
                                                                    </td>
                                                                    <td style="width: 8px; height: 43px">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 120px; height: 82px" align="left" valign="top">
                                                                        <asp:Label ID="lblState" runat="server" Font-Names="华文新魏" Font-Size="Medium" ForeColor="#FFC080"
                                                                            Text="状态："></asp:Label></td>
                                                                    <td style="width: 81px; height: 82px" align="center" valign="top">
                                                                        <asp:DropDownList ID="ddlZt" runat="server" BackColor="White" ForeColor="Red"
                                                                            Width="169px">
                                                                            <asp:ListItem Selected="True">已处理</asp:ListItem>
                                                                            <asp:ListItem>未处理</asp:ListItem>
                                                                        </asp:DropDownList></td>
                                                                    <td style="height: 82px">
                                                                    </td>
                                                                    <td style="height: 82px" colspan="2">
                                                                        <asp:Button ID="btnok" runat="server" OnClick="Button1_Click" Text="添加" Width="36px" />
                                                                        <asp:Button ID="btndelete" runat="server" OnClick="Button2_Click" Text="删除" Width="38px" />
                                                                        <asp:Button
                                                                            ID="btnupdate" runat="server" Height="24px" OnClick="Button4_Click" Text="修改" Width="35px" />
                                                                        <asp:Button ID="btnselect" runat="server" CausesValidation="False" OnClick="Button3_Click"
                                                                            Text="查询" Width="39px" />&nbsp;</td>
                                                                    <td style="height: 82px">
                                                                    </td>
                                                                    <td style="width: 8px; height: 82px">
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            &nbsp;<asp:GridView ID="gvxw" runat="server" AutoGenerateColumns="False" BackColor="White"
                                                                BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Font-Names="华文新魏"
                                                                Font-Size="Medium" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="gvxw_SelectedIndexChanged" AllowPaging="True" OnPageIndexChanging="gvxw_PageIndexChanging" PageSize="5" >
                                                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                                                <Columns>
                                                                    <asp:BoundField DataField="title" HeaderText="新闻标题" />
                                                                    <asp:BoundField DataField="neirong" HeaderText="新闻内容" />
                                                                    <asp:BoundField DataField="fabushijian" HeaderText="发布时间" />
                                                                    <asp:BoundField DataField="faburen" HeaderText="发布人" />
                                                                    <asp:BoundField DataField="xinwenleibie" HeaderText="新闻类别" />
                                                                    <asp:BoundField DataField="renqi" HeaderText="人气指数" />
                                                                    <asp:BoundField DataField="beizhu" HeaderText="审核状态" />
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
                                                    <td align="center" style="width: 619px; height: 4px" valign="top">
                                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; 
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding-right: 0px; padding-left: 0px; padding-bottom: 0px; margin: 0px;
                                            width: 213px; padding-top: 0px; height: 283px" valign="top">
                                        </td>
                                        <td style="width: 630px; height: 283px" valign="top">
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
    
    </div>
    </form>
</body>
</html>
