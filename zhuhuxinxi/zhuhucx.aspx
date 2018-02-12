<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zhuhucx.aspx.cs" Inherits="zhuhucx" %>

<%@ Register Src="../userControl/foot.ascx" TagName="foot" TagPrefix="uc1" %>
<%@ Register Src="../userControl/head.ascx" TagName="head" TagPrefix="uc2" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>^_^  小区物业内部管理网-------住户信息查询  ^_^</title>
</head>
<body background="../image/index_03.jpg">
    <form id="form1" runat="server">
    <div>
        <div>
            <div>
                <div>
                    <div style="text-align: center">
                        <table border="1">
                            <tr>
                                <td colspan="3" style="width: 741px" valign="top">
                                    &nbsp;&nbsp;<uc2:head ID="Head1" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" style="width: 741px; height: 25px; background-color: #ffffcc" valign="top">
                                    </td>
                            </tr>
                            <tr>
                                <td colspan="3" style="width: 741px; height: 15px" valign="top">
                                    <asp:Label ID="lblZhxxcx" runat="server" Font-Bold="True" Font-Names="华文新魏" Font-Size="22pt"
                                        ForeColor="Maroon" Text="住户信息查询"></asp:Label></td>
                            </tr>
                            <tr>
                                <td colspan="3" style="width: 741px; height: 25px" valign="top">
                                    ................................................................................................................................</td>
                            </tr>
                            <tr>
                                <td colspan="3" style="width: 741px; height: 25px" valign="top">
                                    <table>
                                        <tr>
                                            <td style="width: 100px; height: 95px">
                                                <asp:RadioButton ID="rbtnname" runat="server" Font-Bold="True" Font-Names="华文新魏"
                                                    GroupName="a" Text="住户姓名" Width="100px" /></td>
                                            <td style="width: 100px; height: 95px">
                                                <asp:TextBox ID="txtName" runat="server" Width="119px" ToolTip="住户姓名"></asp:TextBox></td>
                                            <td style="width: 36px; height: 95px">
                                                </td>
                                            <td style="width: 100px; height: 95px">
                                                <asp:RadioButton ID="rbtnsyqk" runat="server" Font-Bold="True" Font-Names="华文新魏"
                                                    GroupName="a" Text="使用情况" Width="100px" /></td>
                                            <td style="width: 100px; height: 95px">
                                                <asp:DropDownList ID="ddlSyzk" runat="server" ForeColor="Red" ToolTip="住户住房使用情况" Width="101px">
                                                    <asp:ListItem>未使用</asp:ListItem>
                                                    <asp:ListItem Selected="True">已使用</asp:ListItem>
                                                </asp:DropDownList></td>
                                            <td style="width: 114px; height: 95px">
                                                <asp:RadioButton ID="rbtnzfname" runat="server" Font-Bold="True" Font-Names="华文新魏"
                                                    GroupName="a" Text="住房名称" Width="127px" /></td>
                                            <td style="width: 100px; height: 95px">
                                                <asp:TextBox ID="txtZfmc" runat="server" ToolTip="住户住房名称"></asp:TextBox></td>
                                            <td style="width: 82px; height: 95px">
                                                <asp:Button
                                        ID="btnSelect" runat="server" OnClick="Button1_Click" Text="查询" Width="53px" ToolTip="住户信息查询" />
                                                </td>
                                            <td style="width: 82px; height: 95px">
                                    <asp:Button ID="btnqx" runat="server" Text="全显" ToolTip="全部显示" Width="53px" OnClick="btnqx_Click" /></td>
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
                                    ................................................................................................................................</td>
                            </tr>
                            <tr>
                                <td colspan="3" style="width: 741px; height: 23px" valign="top">
                                    &nbsp; &nbsp;<asp:GridView ID="gvZh" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                        CellPadding="4" Font-Names="楷体_GB2312" Font-Size="Small" ForeColor="#333333" GridLines="None" 
                                       
                                       >
                                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="zfname" HeaderText="住房名称" />
                                            <asp:BoundField DataField="name" HeaderText="小区名称" />
                                            <asp:BoundField DataField="lyname" HeaderText="楼宇名称" />
                                            <asp:BoundField DataField="lydy" HeaderText="楼宇单元" />
                                            <asp:BoundField DataField="fanghao" HeaderText="房号" />
                                            <asp:BoundField DataField="jzmj" HeaderText="建筑面积" />
                                            <asp:BoundField DataField="cqstate" HeaderText="产权状况" />
                                            <asp:BoundField DataField="systate" HeaderText="使用状况" />
                                            <asp:BoundField DataField="qrtime" HeaderText="迁入时间" />
                                            <asp:BoundField DataField="lxtel" HeaderText="联系电话" />
                                            <asp:BoundField DataField="address" HeaderText="联系地址" />
                                            <asp:HyperLinkField HeaderText="详细信息" />
                                        </Columns>
                                        <RowStyle BackColor="#EFF3FB" />
                                        <EditRowStyle BackColor="#2461BF" />
                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <AlternatingRowStyle BackColor="White" />
                                    </asp:GridView>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="left" colspan="3" rowspan="2" style="width: 809px;" valign="top">
                                    <div style="text-align: center">
                                        <div style="text-align: center">
                                            &nbsp;</div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                            </tr>
                            <tr>
                                <td align="left" colspan="3" rowspan="1" style="width: 809px" valign="top">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" style="width: 809px" valign="top">
                                    <uc1:foot ID="Foot1" runat="server" />
                                    &nbsp;&nbsp;
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
