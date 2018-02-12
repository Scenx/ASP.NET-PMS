<%@ Page Language="C#" AutoEventWireup="true" CodeFile="yuangongcx.aspx.cs" Inherits="yuangongcx" %>

<%@ Register Src="../userControl/foot.ascx" TagName="foot" TagPrefix="uc1" %>
<%@ Register Src="../userControl/head.ascx" TagName="head" TagPrefix="uc2" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>^_^  小区物业内部管理网-------员工信息查询  ^_^</title>
</head>
<body background="../image/index_03.jpg">
    <form id="form1" runat="server">
    <div>
        <div>
            <div>
                <div>
                    <div style="text-align: center">
                        <table>
                            <tr>
                                <td colspan="3" style="width: 741px" valign="top">
                                    &nbsp;<uc2:head ID="Head1" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" style="width: 741px; height: 25px; background-color: #ffffcc" valign="top" align="left">
                                    <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Names="幼圆" Font-Size="10pt"
                                        ForeColor="Maroon" Text="你现在的位置"></asp:Label>
                                    <asp:Label ID="Label2" runat="server" Text=">>>"></asp:Label>
                                    <asp:Label ID="Label3" runat="server" Text="员工信息查询"></asp:Label></td>
                            </tr>
                            <tr>
                                <td colspan="3" style="width: 741px; height: 25px" valign="top">
                                    ................................................................................................................................</td>
                            </tr>
                            <tr>
                                <td colspan="3" style="width: 741px; height: 23px" valign="top">
                                    <table>
                                        <tr>
                                            <td style="width: 100px">
                                                <asp:RadioButton ID="rbtnbh" runat="server" Font-Bold="True" Font-Names="华文新魏" GroupName="a"
                                                     Text="员工编号" Width="115px" /></td>
                                            <td style="width: 100px">
                                                <asp:TextBox ID="txtYgbh" runat="server" Width="119px" ToolTip="员工编号"></asp:TextBox></td>
                                            <td style="width: 36px">
                                                </td>
                                            <td style="width: 100px">
                                                <asp:RadioButton ID="rbtnzc" runat="server" Font-Bold="True" Font-Names="华文新魏"
                                                    Font-Size="Medium" GroupName="a" Text="工作职称" Width="121px" /></td>
                                            <td style="width: 100px">
                                                <asp:DropDownList ID="ddlLx" runat="server" ForeColor="Maroon" Width="82px" ToolTip="工作职称">
                                                    <asp:ListItem Selected="True">员工</asp:ListItem>
                                                    <asp:ListItem>管理员</asp:ListItem>
                                                </asp:DropDownList></td>
                                            <td style="width: 100px">
                                                <asp:RadioButton ID="rbtnzt" runat="server" Font-Bold="True" Font-Names="华文新魏"
                                                    GroupName="a" Text="工作状态" Width="117px" /></td>
                                            <td style="width: 100px">
                                                <asp:DropDownList ID="ddlGzzt" runat="server" ForeColor="DarkRed" Width="85px" ToolTip="工作状态">
                                                    <asp:ListItem Selected="True">在岗</asp:ListItem>
                                                    <asp:ListItem>离岗</asp:ListItem>
                                                </asp:DropDownList></td>
                                            <td style="width: 82px">
                                            <asp:Button
                                        ID="btnSelect" runat="server" OnClick="Button1_Click" Text="查询" Width="53px" ToolTip="查询" /></td>
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
                                <td colspan="3" style="width: 741px; height: 25px" valign="top">
                                    ...............................................................................................................................<asp:LinkButton
                                        ID="lbAdd" runat="server" OnClick="lbAdd_Click" CausesValidation="False" Font-Bold="True" Font-Size="Small">员工信息管理</asp:LinkButton></td>
                            </tr>
                            <tr>
                                <td colspan="3" style="width: 741px; height: 23px" valign="top">
                                    <asp:GridView ID="gvYgcx" runat="server" AutoGenerateColumns="False" BackColor="White"
                                        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Font-Names="华文新魏"
                                        Font-Size="Medium" Width="789px" AllowPaging="True" OnPageIndexChanging="gvYgcx_PageIndexChanging" PageSize="5">
                                        <FooterStyle BackColor="White" ForeColor="#000066" />
                                        <Columns>
                                            <asp:ImageField DataImageUrlField="image"
                                                HeaderText="员工照片">
                                            </asp:ImageField>
                                            <asp:BoundField DataField="id" HeaderText="员工编号" />
                                            <asp:BoundField DataField="chname" HeaderText="姓名" />
                                            <asp:BoundField DataField="working" HeaderText="工作职称" />
                                            <asp:BoundField DataField="state" HeaderText="工作状态" />
                                            <asp:CommandField HeaderText="选择整行" ShowSelectButton="True" />
                                        </Columns>
                                        <RowStyle ForeColor="#000066" />
                                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                    </asp:GridView>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="left" colspan="3" rowspan="2" style="width: 741px; height: 6px" valign="top">
                                    <div style="text-align: center">
                                        <div style="text-align: center">
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
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
