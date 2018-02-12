<%@ Page Language="C#" AutoEventWireup="true" CodeFile="weixuichaxun.aspx.cs" Inherits="weixuichaxun" %>

<%@ Register Src="../userControl/syhead.ascx" TagName="syhead" TagPrefix="uc1" %>



<%@ Register Src="../userControl/foot.ascx" TagName="foot" TagPrefix="uc2" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>^_^  小区物业内部管理网-------设备维护信息查询  ^_^</title>
</head>
<body background="../image/index_03.jpg" >
    <form id="form1" runat="server">
    <div>
        <div>
            <div>
                <div>
                    <div style="text-align: center">
                        <table>
                            <tr>
                                <td colspan="3" style="width: 723px" valign="top" align="left">
                                    <uc1:syhead ID="Syhead1" runat="server" />
                                    <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Names="华文新魏" Font-Size="12pt"
                                        ForeColor="Maroon" Text="你现在的位置"></asp:Label>
                                    <asp:Label ID="Label2" runat="server" Text=">>>"></asp:Label>
                                    <asp:Label ID="Label3" runat="server" Font-Names="华文新魏" Font-Size="12pt" ForeColor="Maroon"
                                        Text="　设备维修信息查询"></asp:Label>
                                   
                                    &nbsp;&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="3" style="width: 723px; height: 25px" valign="top">
                                    ................................................................................................................................</td>
                            </tr>
                            <tr>
                                <td colspan="3" style="width: 723px; height: 25px" valign="top" align="right">
                                    <table style="width: 847px">
                                        <tr>
                                            <td style="width: 100px">
                                                <asp:RadioButton ID="rbtnyhm" runat="server" Font-Bold="True" Font-Names="华文新魏" GroupName="a"
                                                    Text="住户名称" Width="97px" Checked="True" /></td>
                                            <td style="width: 100px">
                                                <asp:TextBox ID="txtyhm" runat="server" Width="119px"></asp:TextBox></td>
                                            <td style="width: 36px">
                                                </td>
                                            <td style="width: 100px">
                                                <asp:RadioButton ID="rbtnzt" runat="server" Font-Bold="True" Font-Names="华文新魏" GroupName="a"
                                                    Text="住户状态" Width="94px" /></td>
                                            <td style="width: 100px">
                                                <asp:DropDownList ID="ddlzt" runat="server" ForeColor="Maroon" Width="82px">
                                                    <asp:ListItem Selected="True">已处理</asp:ListItem>
                                                    <asp:ListItem>未处理</asp:ListItem>
                                                </asp:DropDownList></td>
                                            <td style="width: 75px">
                                                <asp:RadioButton ID="rbtnjsr" runat="server" Font-Bold="True" Font-Names="华文新魏" GroupName="a"
                                                    Text="经手人" Width="80px" /></td>
                                            <td style="width: 100px">
                                                <asp:TextBox ID="txtjsr" runat="server"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100px; height: 21px">
                                            </td>
                                            <td style="width: 100px; height: 21px">
                                            </td>
                                            <td style="width: 36px; height: 21px">
                                            </td>
                                            <td style="width: 100px; height: 21px">
                                            </td>
                                            <td style="width: 100px; height: 21px">
                                            </td>
                                            <td style="width: 75px; height: 21px">
                                                <asp:Button
                                        ID="Button1" runat="server" OnClick="Button1_Click" Text="查询" Width="43px" /></td>
                                            <td align="left" style="width: 100px; height: 21px">
                                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="全显" Width="43px" /></td>
                                        </tr>
                                    </table>
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" style="width: 723px; height: 25px" valign="top">
                                    ...............................................................................................................................<asp:LinkButton
                                        ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Font-Size="Small">设备维修信息管理</asp:LinkButton>&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="3" style="width: 723px; height: 25px" valign="top">
                                    <asp:GridView ID="gvS" runat="server" AutoGenerateColumns="False" CellPadding="4"
                                        Font-Names="华文新魏" Font-Size="Medium" OnRowDataBound="gvS_RowDataBound" ForeColor="#333333" GridLines="None" Width="832px">
                                        <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
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
                                            <asp:CommandField HeaderText="选择整行" ShowSelectButton="True" SelectText="选择整行" />
                                        </Columns>
                                        <RowStyle BackColor="#EFF3FB" />
                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                        <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#2461BF" />
                                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <EditRowStyle BackColor="#2461BF" />
                                        <AlternatingRowStyle BackColor="White" />
                                    </asp:GridView>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="left" colspan="3" rowspan="1" style="width: 723px; height: 104px" valign="top">
                                    <div style="text-align: center">
                                        <div style="text-align: center">
                                    <uc2:foot ID="Foot1" runat="server" />
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    
    </div>
    </form>
</body>
</html>
