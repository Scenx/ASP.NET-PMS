<%@ Page Language="C#" AutoEventWireup="true" CodeFile="qianfeishenhe.aspx.cs" Inherits="qianfeishenhe" %>

<%@ Register Src="../userControl/head.ascx" TagName="head" TagPrefix="uc1" %>
<%@ Register Src="../userControl/foot.ascx" TagName="foot" TagPrefix="uc2" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>^_^  小区物业内部管理网-------欠费信息审核  ^_^</title>
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
                                    <uc1:head ID="Head1" runat="server" />
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="3" style="width: 741px; height: 25px; background-color: #ffffcc" valign="top">
                                    </td>
                            </tr>
                            <tr>
                                <td colspan="3" style="width: 741px; height: 25px" valign="top">
                                    <asp:Label ID="lblQfxxsh" runat="server" Font-Bold="True" Font-Names="华文新魏" Font-Size="22pt"
                                        ForeColor="Maroon" Text="小区物业住户欠费信息审核"></asp:Label></td>
                            </tr>
                            <tr>
                                <td colspan="3" style="width: 741px; height: 25px" valign="top">
                                    ...............................................................................................................................
                                    .<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Font-Size="Small">欠费信息添加</asp:LinkButton></td>
                            </tr>
                            <tr>
                                <td colspan="3" style="width: 741px; height: 25px" valign="top">
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<asp:GridView
                                        ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC"
                                        BorderStyle="None" BorderWidth="1px" CellPadding="3" Font-Names="华文新魏" Font-Size="Medium"
                                         OnPageIndexChanging="GridView1_PageIndexChanging"
                                        OnRowDataBound="GridView1_RowDataBound"  AllowPaging="True" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" ShowFooter="True"  OnRowDeleting="GridView1_RowDeleting" Width="891px">
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
                                            <asp:CommandField HeaderText="审核" ShowSelectButton="True" SelectText="处理/取消" />
                                            <asp:CommandField ShowDeleteButton="True" />
                                        </Columns>
                                        <RowStyle ForeColor="#000066" />
                                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                    </asp:GridView>
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" style="width: 741px; height: 25px" valign="top">
                                    ................................................................................................................................</td>
                            </tr>
                            <tr>
                                <td colspan="3" style="width: 741px; height: 23px" valign="top">
                                    &nbsp;&nbsp;</td>
                            </tr>
                            <tr>
                                <td align="left" colspan="3" rowspan="1" style="width: 741px" valign="top">
                                </td>
                            </tr>
                            <tr>
                                <td align="left" colspan="3" rowspan="1" valign="top" width="100%">
                                    <uc2:foot ID="Foot1" runat="server" />
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
