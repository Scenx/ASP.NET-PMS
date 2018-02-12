<%@ Page Language="C#" AutoEventWireup="true" CodeFile="qianfeicx.aspx.cs" Inherits="qianfeicx" %>

<%@ Register Src="../userControl/syhead.ascx" TagName="syhead" TagPrefix="uc2" %>

<%@ Register Src="../userControl/foot.ascx" TagName="foot" TagPrefix="uc1" %>




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>^_^  小区物业内部管理网-------欠费信息查询  ^_^</title>
</head>
<body background="../image/index_03.jpg">
    <form id="form1" runat="server">
    <div>
        <div>
            <div>
                <div style="text-align: center">
                    <table border="1">
                        <tr>
                            <td colspan="3" valign="top" style="width: 741px; height: 294px;">
                                <uc2:syhead ID="Syhead1" runat="server" />
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="3" style="height: 25px; background-color: #ffffcc; width: 741px;" valign="top" align="left">
                                <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="12pt"
                                    ForeColor="Maroon" Text="你现在的位置"></asp:Label>
                                <asp:Label ID="Label2" runat="server" Text=">>>" Font-Bold="True"></asp:Label>
                                <asp:Label ID="Label3" runat="server" Font-Size="12pt" ForeColor="Maroon"
                                    Text="　欠费信息查询" Font-Bold="True"></asp:Label></td>
                        </tr>
                        <tr>
                            <td colspan="3" style="height: 25px; width: 741px;" valign="top">
                                </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="height: 25px; width: 741px;" valign="top">
                                </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="height: 20px; width: 741px;" valign="top">

                                <div style="text-align: center">
                                    <table border="0" style="width: 100%">
                                        <tr>
                                            <td style="width: 100px">
                                            <asp:RadioButton ID="rbtnqfzh" runat="server" Font-Bold="True"
                                                GroupName="a" Text="欠费住户名" Width="145px" /></td>
                                            <td style="width: 100px">
                                            <asp:TextBox ID="txtqfzh" runat="server" Width="119px"></asp:TextBox></td>
                                            <td style="width: 100px">
                                            <asp:RadioButton ID="rbtnlx" runat="server" Font-Bold="True" GroupName="a"
                                                Text="欠费类型" Width="127px" /></td>
                                            <td style="width: 100px">
                                            <asp:DropDownList ID="ddllx" runat="server" ForeColor="Maroon" Width="82px">
                                                <asp:ListItem Selected="True">水费</asp:ListItem>
                                                <asp:ListItem>电费</asp:ListItem>
                                                <asp:ListItem>煤气费</asp:ListItem>
                                                <asp:ListItem>保暖费</asp:ListItem>
                                                <asp:ListItem>清扫费</asp:ListItem>
                                            </asp:DropDownList></td>
                                            <td style="width: 100px">
                                            <asp:RadioButton ID="rbtnqfje" runat="server" Font-Bold="True"
                                                GroupName="a" Text="欠费金额" Width="123px" /></td>
                                            <td style="width: 100px">
                                            <asp:TextBox ID="txtqfje" runat="server" Width="151px"></asp:TextBox></td>
                                            <td style="width: 100px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100px">
                                            </td>
                                            <td style="width: 100px">
                                            </td>
                                            <td style="width: 100px">
                                            </td>
                                            <td style="width: 100px">
                                            </td>
                                            <td style="width: 100px">
                                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="查询" Width="51px" /></td>
                                            <td style="width: 100px">
                                <asp:Button ID="btnqx" runat="server" OnClick="btnqx_Click" Text="全显" Width="53px" />
                                </td>
                                            <td style="width: 100px">
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="height: 25px; width: 741px;" valign="top">
                                </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="height: 2px; width: 741px;" valign="top">
                                <asp:GridView ID="gvqf" runat="server" AutoGenerateColumns="False" BackColor="White"
                                    BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Font-Names="华文新魏"
                                    Font-Size="Small" OnRowDataBound="gvqf_RowDataBound" OnRowDeleting="gvqf_RowDeleting" OnSelectedIndexChanged="gvqf_SelectedIndexChanged" Width="806px" >
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
                                        <asp:CommandField HeaderText="详细信息" ShowSelectButton="True" />
                                    </Columns>
                                    <RowStyle ForeColor="#000066" />
                                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                </asp:GridView>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="left" colspan="3" rowspan="1" style="width: 741px;" valign="top">
                                <div style="text-align: center">
                                    <div style="text-align: center">
                                        &nbsp;</div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" colspan="3" rowspan="1" valign="top" style="width: 741px">
                            </td>
                        </tr>
                        <tr>
                            <td align="left" colspan="3" rowspan="1" valign="top" style="width: 741px">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" valign="top" style="width: 741px">
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
