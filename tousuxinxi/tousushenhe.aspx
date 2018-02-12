<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tousushenhe.aspx.cs" Inherits="tousushenhe" %>

<%@ Register Src="../userControl/foot.ascx" TagName="foot" TagPrefix="uc1" %>
<%@ Register Src="../userControl/head.ascx" TagName="head" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>^_^  小区物业内部管理网-------投诉信息审核 ^_^</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>
            <div>
                <div>
                    <div>
                        <div>
                            <div style="text-align: center">
                                <table>
                                    <tr>
                                        <td colspan="3" style="width: 741px" valign="top">
                                            <uc2:head ID="Head1" runat="server" />
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" style="width: 741px; height: 25px; background-color: #ffffcc" valign="top">
                                            &nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" style="width: 741px; height: 25px" valign="top">
                                            <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="华文新魏" Font-Size="22pt"
                                                ForeColor="Maroon" Text="小区物业业主投诉信息审核"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" style="width: 741px; height: 25px" valign="top">
                                            ................................................................................................................................<asp:LinkButton
                                                ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Font-Size="Small">业主投诉信息</asp:LinkButton>
                                            &nbsp; &nbsp;
                                            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" Font-Size="Small">投诉查询信息</asp:LinkButton></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" style="width: 741px; height: 25px" valign="top">
                                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                                CellPadding="4" Font-Names="华文新魏" Font-Size="Medium" ForeColor="#333333" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDataBound="GridView1_RowDataBound" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="934px"
                                               >
                                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                <Columns>
                                                    <asp:BoundField DataField="id" HeaderText="投诉编号" />
                                                    <asp:BoundField DataField="person" HeaderText="投诉住户" />
                                                    <asp:BoundField DataField="time" HeaderText="投诉日期" />
                                                    <asp:BoundField DataField="neirong" HeaderText="投诉内容" />
                                                    <asp:BoundField DataField="zhuangtai" HeaderText="状态" />
                                                    <asp:CommandField HeaderText="审核" SelectText="处理/取消" ShowSelectButton="True" />
                                                </Columns>
                                                <RowStyle BackColor="#EFF3FB" />
                                                <EditRowStyle BackColor="#2461BF" />
                                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                <AlternatingRowStyle BackColor="White" />
                                            </asp:GridView>
                                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
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
                                            &nbsp; &nbsp; &nbsp; &nbsp;
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
                                        <td align="left" colspan="3" rowspan="1" style="width: 741px; height: 104px" valign="top">
                                            <div style="text-align: center">
                                                <div style="text-align: center">
                                                    &nbsp;</div>
                                            </div>
                                            <uc1:foot ID="Foot1" runat="server" />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
    </div>
    </form>
</body>
</html>
