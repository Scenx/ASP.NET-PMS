<%@ Page Language="C#" AutoEventWireup="true" CodeFile="weihushenhe.aspx.cs" Inherits="weihushenhe" %>

<%@ Register Src="../userControl/head.ascx" TagName="head" TagPrefix="uc1" %>
<%@ Register Src="../userControl/foot.ascx" TagName="foot" TagPrefix="uc2" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>^_^  小区物业内部管理网-------设备维护信息审核  ^_^</title>
</head>
<body background="../image/index_03.jpg">
    <form id="form1" runat="server">
    <div>
        <div>
            <div>
                <div>
                    <div>
                        <div style="text-align: center">
                            <table>
                                <tr>
                                    <td colspan="3" style="width: 809px" valign="top">
                                        <uc1:head ID="Head1" runat="server" />
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="3" style="width: 809px; height: 25px; background-color: #ffffcc" valign="top">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="3" style="width: 809px; height: 25px" valign="top">
                                        <asp:Label ID="lblSbxxwhsh" runat="server" Font-Bold="True" Font-Names="华文新魏" Font-Size="22pt"
                                            ForeColor="Maroon" Text="小区物业维护设备信息审核"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td colspan="3" style="width: 809px; height: 25px" valign="top">
                                        ................................................................................................................................<asp:LinkButton
                                            ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Font-Size="Small">设备信息维护</asp:LinkButton>&nbsp;
                                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" Font-Size="Small">设备信息查询</asp:LinkButton></td>
                                </tr>
                                <tr>
                                    <td colspan="3" style="width: 809px; height: 25px" valign="top">
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                                        <asp:GridView ID="gvWh" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                            CellPadding="4" Font-Names="华文中宋" Font-Size="Medium" ForeColor="#333333" GridLines="None" OnPageIndexChanging="gvWh_PageIndexChanging" OnRowDataBound="gvWh_RowDataBound" OnRowDeleting="gvWh_RowDeleting"  OnSelectedIndexChanging="gvWh_SelectedIndexChanging" Width="889px"  >
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
                                                <asp:CommandField HeaderText="审核" SelectText="处理/取消" ShowSelectButton="True" />
                                            </Columns>
                                            <RowStyle BackColor="#EFF3FB" />
                                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                            <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#2461BF" />
                                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                            <EditRowStyle BackColor="#2461BF" />
                                            <AlternatingRowStyle BackColor="White" />
                                        </asp:GridView>
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" style="width: 809px; height: 25px" valign="top">
                                        ................................................................................................................................</td>
                                </tr>
                                <tr>
                                    <td colspan="3" style="width: 741px; height: 23px" valign="top">
                                        &nbsp;&nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="left" colspan="3" rowspan="2" style="width: 741px;" valign="top">
                                        <div style="text-align: center">
                                            <div style="text-align: center">
                                                &nbsp;</div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                </tr>
                                <tr>
                                    <td align="left" colspan="3" rowspan="1" style="width: 741px" valign="top">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="3" rowspan="1" style="width: 741px" valign="top">
                                        <uc2:foot ID="Foot1" runat="server" />
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
