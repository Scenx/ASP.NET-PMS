<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cheliangchaxun.aspx.cs" Inherits="caiqianchaxun" %>

<%@ Register Src="../userControl/syhead.ascx" TagName="syhead" TagPrefix="uc2" %>

<%@ Register Src="../userControl/foot.ascx" TagName="foot" TagPrefix="uc1" %>






<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>^_^  小区物业内部管理网-------停车管理信息查询  ^_^</title>
    <script>
function click() {
if (event.button==2) {window.external.addFavorite('http://****.com','《小区物业内部管理网》') }}
document.onmousedown=click
</script>

<style type="text/css">
<!--
body {
	cursor: url(image/mouse.ani);
}
-->
</style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <div>
                    <div style="text-align: center">
                        <table border="0">
                            <tr>
                                <td colspan="3" style="width: 741px" valign="top">
                                    <uc2:syhead ID="Syhead1" runat="server" />
                                    &nbsp;&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" style="width: 741px; height: 25px; background-color: #ffffcc" valign="top">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="3" style="width: 741px; height: 25px" valign="top">
                                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="华文新魏" Font-Size="22pt"
                                        ForeColor="Maroon" Text="停车管理信息查询"></asp:Label></td>
                            </tr>
                            <tr>
                                <td colspan="3" style="width: 741px; height: 25px" valign="top">
                                    ................................................................................................................................<asp:LinkButton
                                        ID="lbAdd" runat="server" OnClick="lbAdd_Click" Font-Bold="True" Font-Size="Small">停车信息维护</asp:LinkButton></td>
                            </tr>
                            <tr>
                                <td colspan="3" style="width: 741px; height: 25px" valign="top" align="center">
                                    <table>
                                        <tr>
                                            <td style="width: 100px; height: 95px">
                                                <asp:RadioButton ID="rbtncph" runat="server" Font-Bold="True" Font-Names="华文新魏"
                                                    GroupName="a" Text="车牌号" Width="96px" /></td>
                                            <td style="width: 100px; height: 95px">
                                                <asp:TextBox ID="txtTch" runat="server" Width="119px"></asp:TextBox></td>
                                            <td style="width: 36px; height: 95px">
                                                <asp:RadioButton ID="rbtnsjqk" runat="server" Font-Bold="True" Font-Names="华文新魏"
                                                    GroupName="a" Text="收缴情况" Width="145px" /></td>
                                            <td style="width: 100px; height: 95px">
                                                <asp:DropDownList ID="ddlcz" runat="server" ForeColor="Red">
                                                    <asp:ListItem>未缴纳</asp:ListItem>
                                                    <asp:ListItem Selected="True">已缴纳</asp:ListItem>
                                                </asp:DropDownList></td>
                                            <td style="width: 100px; height: 95px">
                                                <asp:RadioButton ID="rbtncz" runat="server" Font-Bold="True" Font-Names="华文新魏"
                                                    GroupName="a" Text="车主" Width="91px" /></td>
                                            <td style="width: 100px; height: 95px">
                                                <asp:TextBox ID="txtCz" runat="server" Width="163px"></asp:TextBox></td>
                                            <td style="width: 101px; height: 95px">
                                                &nbsp; &nbsp;&nbsp;
                                            </td>
                                            <td style="width: 82px; height: 95px">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100px; height: 8px">
                                            </td>
                                            <td style="width: 100px; height: 8px">
                                            </td>
                                            <td style="width: 36px; height: 8px">
                                            </td>
                                            <td style="width: 100px; height: 8px">
                                            </td>
                                            <td align="right" style="width: 100px; height: 8px">
                                                <asp:Button
                                        ID="btnsel" runat="server" OnClick="Button1_Click" Text="查询" Width="47px" /></td>
                                            <td style="width: 100px; height: 8px">
                                                &nbsp;&nbsp;
                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="全显" Width="49px" /></td>
                                            <td style="width: 101px; height: 8px">
                                            </td>
                                            <td style="width: 82px; height: 8px">
                                            </td>
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
                                    &nbsp; &nbsp; &nbsp;&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" style="width: 100px; height: 25px" valign="top">
                                    <asp:GridView ID="gvcl" runat="server" AutoGenerateColumns="False" CellPadding="4"
                                        Font-Names="华文新魏" Font-Size="Medium" ForeColor="#333333" GridLines="None"  
                                        AllowPaging="True" Width="835px" OnRowDataBound="gvcl_RowDataBound">
                                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="ID" HeaderText="车牌号" />
                                            <asp:BoundField DataField="placeID" HeaderText="停车场号" />
                                            <asp:BoundField DataField="tenement" HeaderText="车主" />
                                            <asp:BoundField DataField="address" HeaderText="停车地点" />
                                            <asp:BoundField DataField="starDate" HeaderText="开始时间" />
                                            <asp:BoundField DataField="endDate" HeaderText="结束时间" />
                                            <asp:BoundField DataField="placeSum" HeaderText="停车管理费" />
                                            <asp:BoundField DataField="person" HeaderText="经手人" />
                                            <asp:BoundField DataField="handle" HeaderText="收缴情况" />
                                            <asp:BoundField DataField="memo" HeaderText="备注" />
                                            <asp:CommandField HeaderText="选择整行" ShowSelectButton="True" SelectText="选择整行" />
                                        </Columns>
                                        <RowStyle BackColor="#EFF3FB" />
                                        <EditRowStyle BackColor="#2461BF" />
                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <AlternatingRowStyle BackColor="White" />
                                    </asp:GridView>
                                    ..........................................................</td>
                            </tr>
                            <tr>
                                <td colspan="3" style="width: 741px; height: 23px" valign="top">
                                    &nbsp; &nbsp;&nbsp;</td>
                            </tr>
                            <tr>
                                <td align="left" colspan="3" style="width: 809px; height: 104px" valign="top">
                                    <div style="text-align: center">
                                        <div style="text-align: center">
                                            <table style="width: 100%">
                                                <tr>
                                                    <td align="center" style="width: 100px">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px">
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="3" valign="top" width="100%">
                                    <uc1:foot ID="Foot1" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" style="width: 741px" valign="top">
                                    &nbsp;&nbsp;
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
