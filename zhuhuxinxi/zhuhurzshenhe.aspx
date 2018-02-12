<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zhuhurzshenhe.aspx.cs" Inherits="zhuhurzshenhe" %>

<%@ Register Src="../userControl/foot.ascx" TagName="foot" TagPrefix="uc1" %>
<%@ Register Src="../userControl/head.ascx" TagName="head" TagPrefix="uc2" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>^_^  小区物业内部管理网-------住户信息审核  ^_^</title>
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
                                        <td colspan="3" style="width: 809px" valign="top">
                                            &nbsp;<uc2:head ID="Head1" runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" style="width: 809px; height: 25px; background-color: #ffffcc" valign="top">
                                           </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" style="width: 809px; height: 25px" valign="top">
                                            <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="华文新魏" Font-Size="22pt"
                                                ForeColor="Maroon" Text="小区物业审核用户住房信息"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" style="width: 809px; height: 25px" valign="top">
                                            ................................................................................................................................<asp:LinkButton
                                                ID="LinkButton1" runat="server" OnClick="LinkButton1_Click1">住户住房信息维护</asp:LinkButton></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" style="width: 809px; height: 25px" valign="top">
                                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                                            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                                CellPadding="4" Font-Names="华文中宋" Font-Size="Small" ForeColor="#333333" GridLines="None" OnRowDataBound="GridView2_RowDataBound"  OnSelectedIndexChanging="GridView2_SelectedIndexChanging"  
                                                 
                                                 >
                                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                <Columns>
                                                    <asp:BoundField DataField="name" HeaderText="小区名称" />
                                                    <asp:BoundField DataField="lyname" HeaderText="楼宇名称" />
                                                    <asp:BoundField DataField="lydy" HeaderText="楼宇单元" />
                                                    <asp:BoundField DataField="fanghao" HeaderText="房号" />
                                                    <asp:BoundField DataField="fangxing" HeaderText="房型" />
                                                    <asp:BoundField DataField="jzmj" HeaderText="建筑面积" />
                                                    <asp:BoundField DataField="cqstate" HeaderText="产权状况" />
                                                    <asp:BoundField DataField="systate" HeaderText="使用状况" />
                                                    <asp:BoundField DataField="qrtime" HeaderText="迁入时间" />
                                                    <asp:BoundField DataField="lxtel" HeaderText="联系电话" />
                                                    <asp:BoundField DataField="address" HeaderText="联系地址" />
                                                    <asp:CommandField HeaderText="审核" SelectText="处理/取消" ShowSelectButton="True" />
                                                </Columns>
                                                <RowStyle BackColor="#EFF3FB" />
                                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
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
                                        <td colspan="3" style="width: 809px; height: 8px" valign="top">
                                            &nbsp;&nbsp;</td>
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
                                        <td align="center" colspan="3" rowspan="1" style="width: 809px; height: 29px" valign="top">
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
