<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tousucx.aspx.cs" Inherits="tousucx" %>

<%@ Register Src="../userControl/syhead.ascx" TagName="syhead" TagPrefix="uc2" %>

<%@ Register Src="../userControl/foot.ascx" TagName="foot" TagPrefix="uc1" %>




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>^_^  小区物业内部管理网-------投诉信息查询  ^_^</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>
            <div>
                <div>
                    <div style="text-align: center">
                        <table>
                            <tr>
                                <td colspan="3" style="width: 741px" valign="top">
                                    <uc2:syhead ID="Syhead1" runat="server" />
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" style="width: 741px; height: 25px; background-color: #ffffcc" valign="top">
                                    </td>
                            </tr>
                            <tr>
                                <td colspan="3" style="width: 741px; height: 25px" valign="top">
                                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="华文新魏" Font-Size="20pt"
                                        ForeColor="Maroon" Text="小区投诉信息查询"></asp:Label></td>
                            </tr>
                            <tr>
                                <td colspan="3" style="width: 741px; height: 25px" valign="top">
                                    ................................................................................................................................</td>
                            </tr>
                            <tr>
                                <td colspan="3" style="width: 741px; height: 25px" valign="top">
                                    <table>
                                        <tr>
                                            <td style="width: 100px">
                                                <asp:RadioButton ID="rbtnbh" runat="server" Font-Bold="True" Font-Names="华文新魏" GroupName="a"
                                                    Text="编号" /></td>
                                            <td style="width: 100px">
                                                <asp:TextBox ID="txtbh" runat="server" Height="18px" Width="137px"></asp:TextBox></td>
                                            <td style="width: 36px">
                                                </td>
                                            <td style="width: 72px">
                                                <asp:RadioButton ID="rbtnzt" runat="server" Font-Bold="True" Font-Names="华文新魏" GroupName="a"
                                                    Text="状态" Width="69px" /></td>
                                            <td style="width: 100px">
                                                &nbsp;<asp:DropDownList ID="ddlzt" runat="server" ForeColor="Maroon" Width="82px">
                                                    <asp:ListItem Selected="True">未处理</asp:ListItem>
                                                    <asp:ListItem>已处理</asp:ListItem>
                                                </asp:DropDownList></td>
                                            <td style="width: 62px">
                                                <asp:RadioButton ID="rbtntsr" runat="server" Font-Bold="True" Font-Names="华文新魏" GroupName="a"
                                                    Text="投诉住户" Width="124px" /></td>
                                            <td style="width: 100px">
                                                <asp:TextBox ID="txtTsxm" runat="server" Width="119px"></asp:TextBox></td>
                                            <td style="width: 108px">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100px">
                                            </td>
                                            <td style="width: 100px">
                                            </td>
                                            <td style="width: 36px">
                                            </td>
                                            <td style="width: 72px">
                                            </td>
                                            <td style="width: 100px">
                                            </td>
                                            <td style="width: 62px; text-align: right;">
                                    <asp:Button
                                        ID="btnSelect" runat="server" OnClick="Button1_Click" Text="查询" Width="39px" Height="24px" />
                                            </td>
                                            <td align="center" style="width: 100px; text-align: left">
                                                &nbsp; &nbsp;
                                                <asp:Button ID="btnqx" runat="server" OnClick="btnqx_Click" Text="全显" 
                                                    Width="37px" style="text-align: left" /></td>
                                            <td style="width: 108px">
                                                &nbsp;</td>
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
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" style="width: 741px; height: 25px" valign="top">
                                    </td>
                            </tr>
                            <tr>
                                <td colspan="3" style="width: 741px; height: 25px" valign="top">
                                    <asp:GridView ID="gvTscx" runat="server" AutoGenerateColumns="False" CellPadding="4"
                                        Font-Names="华文新魏" Font-Size="Medium" ForeColor="#333333" GridLines="None" Width="882px"  OnRowDataBound="gvTscx_RowDataBound">
                                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="id" HeaderText="投诉编号" />
                                            <asp:BoundField DataField="person" HeaderText="投诉住户" />
                                            <asp:BoundField DataField="time" HeaderText="投诉日期" />
                                            <asp:BoundField DataField="neirong" HeaderText="投诉内容" />
                                            <asp:BoundField DataField="zhuangtai" HeaderText="状态" />
                                            <asp:CommandField HeaderText="详细信息" ShowSelectButton="True" SelectText="选择整行" />
                                        </Columns>
                                        <RowStyle BackColor="#EFF3FB" />
                                        <EditRowStyle BackColor="#2461BF" />
                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <AlternatingRowStyle BackColor="White" />
                                    </asp:GridView>
                                    &nbsp; &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="left" colspan="3" style="width: 741px; height: 104px" valign="top">
                                    <div style="text-align: center">
                                        <div style="text-align: center">
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" style="width: 741px" valign="top" align="center">
                                    &nbsp;<uc1:foot ID="Foot1" runat="server" />
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
