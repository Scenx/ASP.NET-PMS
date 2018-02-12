<%@ Page Language="C#" AutoEventWireup="true" CodeFile="xinwenshehe.aspx.cs" Inherits="xinwenshehe" %>

<%@ Register Src="../userControl/foot.ascx" TagName="foot" TagPrefix="uc1" %>
<%@ Register Src="../userControl/head.ascx" TagName="head" TagPrefix="uc2" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>^_^  小区物业内部管理网-------新闻信息维护审核  ^_^</title>
</head>
<body background="../image/index_03.jpg">
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
                                        <td colspan="3" style="width: 741px; height: 215px;" valign="top">
                                            <uc2:head ID="Head1" runat="server" />
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" style="width: 741px; height: 25px" valign="top">
                                            <asp:Label ID="lblSbxxwhsh" runat="server" Font-Bold="True" Font-Names="华文新魏" Font-Size="22pt"
                                                ForeColor="Maroon" Text="小区物新闻信息审核"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" style="width: 741px; height: 25px" valign="top">
                                            ................................................................................................................................<asp:LinkButton
                                                ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">新闻信息维护</asp:LinkButton>
                                            &nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" style="width: 741px; height: 25px" valign="top" align="center">
                                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                                            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                                CellPadding="4" Font-Names="华文新魏" Font-Size="Small" ForeColor="#333333" GridLines="None"
                                                OnPageIndexChanging="GridView2_PageIndexChanging" OnRowDataBound="GridView2_RowDataBound"
                                                 
                                                OnSelectedIndexChanging="GridView2_SelectedIndexChanging" Width="870px">
                                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                <Columns>
                                                    <asp:BoundField DataField="title" HeaderText="新闻标题" />
                                                    <asp:BoundField DataField="neirong" HeaderText="新闻内容" />
                                                    <asp:BoundField DataField="fabushijian" HeaderText="发布时间" />
                                                    <asp:BoundField DataField="faburen" HeaderText="发布人" />
                                                    <asp:BoundField DataField="xinwenleibie" HeaderText="新闻类别" />
                                                    <asp:BoundField DataField="renqi" HeaderText="人气" />
                                                    <asp:BoundField DataField="beizhu" HeaderText="审核状态" />
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
                                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
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
                                        <td align="left" colspan="3" rowspan="2" style="width: 741px; height: 3px" valign="top">
                                            <div style="text-align: center">
                                                <div style="text-align: center">
                                                </div>
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
                                        <td align="center" colspan="3" rowspan="1" valign="top" width="100%">
                                            &nbsp;<uc1:foot ID="Foot1" runat="server" />
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
