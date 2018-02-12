<%@ Page Language="C#" AutoEventWireup="true" CodeFile="xinwencx.aspx.cs" Inherits="xinwencx" %>

<%@ Register Src="../userControl/foot.ascx" TagName="foot" TagPrefix="uc1" %>
<%@ Register Src="../userControl/head.ascx" TagName="head" TagPrefix="uc2" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>^_^  小区物业内部管理网-------新闻信息维护查询  ^_^</title>
</head>
<body background="../image/index_03.jpg">
    <form id="form1" runat="server">
    <div>
        <div>
            <div>
                <div>
                    <div>
                        <div style="text-align: center">
                            <table border="1">
                                <tr>
                                    <td colspan="3" style="width: 809px" valign="top">
                                        <uc2:head ID="Head1" runat="server" />
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="3" style="width: 809px; height: 25px; background-color: #ffffcc" valign="top">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="3" style="width: 741px; height: 25px" valign="top">
                                        <asp:Label ID="lblZhxxcx" runat="server" Font-Bold="True" Font-Names="华文新魏" Font-Size="20pt"
                                            ForeColor="Maroon" Text="新闻信息查询"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td colspan="3" style="width: 741px; height: 25px" valign="top">
                                        ................................................................................................................................</td>
                                </tr>
                                <tr>
                                    <td colspan="3" style="width: 741px; height: 25px" valign="top" align="center">
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<div style="text-align: center">
                                            <table border="0">
                                                <tr>
                                                    <td style="width: 100px">
                                                    </td>
                                                    <td style="width: 100px">
                                                    </td>
                                                    <td style="width: 100px">
                                                    </td>
                                                    <td style="width: 100px">
                                                    <asp:RadioButton ID="rbtnname" runat="server" Font-Bold="True" Font-Names="华文新魏"
                                                        GroupName="a" Text="发布人" Width="100px" /></td>
                                                    <td style="width: 100px">
                                                    <asp:TextBox ID="txtName" runat="server" Width="119px"></asp:TextBox></td>
                                                    <td style="width: 100px">
                                                    <asp:RadioButton ID="rbtnlb" runat="server" Font-Bold="True" Font-Names="华文新魏"
                                                        GroupName="a" Text="新闻类别" Width="103px" /></td>
                                                    <td style="width: 100px">
                                                    <asp:TextBox ID="txtlb" runat="server"></asp:TextBox></td>
                                                    <td style="width: 100px">
                                                    <asp:RadioButton ID="rbtnzt" runat="server" Font-Bold="True" Font-Names="华文新魏"
                                                        GroupName="a" Text="状态" Width="87px" /></td>
                                                    <td style="width: 100px">
                                                    <asp:DropDownList ID="ddlzt" runat="server" ForeColor="Red" Width="82px">
                                                        <asp:ListItem Selected="True">已处理</asp:ListItem>
                                                        <asp:ListItem>未处理</asp:ListItem>
                                                    </asp:DropDownList></td>
                                                    <td style="width: 100px">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px; height: 26px">
                                                    </td>
                                                    <td style="width: 100px; height: 26px">
                                                    </td>
                                                    <td style="width: 100px; height: 26px">
                                                    </td>
                                                    <td style="width: 100px; height: 26px;">
                                                    </td>
                                                    <td style="width: 100px; height: 26px;">
                                                    </td>
                                                    <td style="width: 100px; height: 26px;">
                                                    </td>
                                                    <td style="width: 100px; height: 26px;">
                                                    </td>
                                                    <td style="width: 100px; height: 26px;">
                                                        <asp:Button
                                            ID="btnSelect" runat="server"  Text="查询" Width="35px" OnClick="btnSelect_Click" /></td>
                                                    <td style="width: 100px; height: 26px;" align="left">
                                                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click"
                                            Text="全显" Width="37px" /></td>
                                                    <td style="width: 100px; height: 26px;">
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" style="width: 741px; height: 25px" valign="top">
                                        ................................................................................................................................<asp:LinkButton
                                            ID="lbAdd" runat="server" OnClick="lbAdd_Click" >新闻信息管理</asp:LinkButton></td>
                                </tr>
                                <tr>
                                    <td colspan="3" style="width: 741px; height: 23px" valign="top">
                                        <asp:GridView ID="gvXw" runat="server" AutoGenerateColumns="False" CellPadding="4"
                                            Font-Names="华文新魏" ForeColor="#333333" GridLines="None" 
                                            PageSize="15" Width="882px" OnRowDataBound="gvXw_RowDataBound" OnRowDeleting="gvXw_RowDeleting" AllowPaging="True" OnPageIndexChanging="gvXw_PageIndexChanging">
                                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                            <Columns>
                                                <asp:BoundField DataField="title" HeaderText="新闻标题" />
                                                <asp:BoundField DataField="neirong" HeaderText="新闻内容" />
                                                <asp:BoundField DataField="fabushijian" HeaderText="发布时间" />
                                                <asp:BoundField DataField="faburen" HeaderText="发布人" />
                                                <asp:BoundField DataField="xinwenleibie" HeaderText="新闻类别" />
                                                <asp:BoundField DataField="beizhu" HeaderText="状态" />
                                                <asp:BoundField DataField="renqi" HeaderText="人气指数" />
                                                <asp:HyperLinkField DataNavigateUrlFields="title" DataNavigateUrlFormatString="xinwenxiangxi.aspx?title={0}"
                                                    HeaderText="详细信息" Text="详细信息" />
                                                <asp:CommandField ShowDeleteButton="True" />
                                            </Columns>
                                            <RowStyle BackColor="#EFF3FB" />
                                            <EditRowStyle BackColor="#2461BF" />
                                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                            <HeaderStyle BackColor="#507CD1" BorderWidth="2px" Font-Bold="True" ForeColor="White" />
                                            <AlternatingRowStyle BackColor="White" />
                                        </asp:GridView>
                                        &nbsp; &nbsp; &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="left" colspan="3" rowspan="1" style="width: 741px; height: 14px" valign="top">
                                        <div style="text-align: center">
                                            <div style="text-align: center">
                                                &nbsp;</div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" style="width: 741px" valign="top" align="center">
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
    
    </div>
    </form>
</body>
</html>
