<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cheliangshenhe.aspx.cs" Inherits="cheliangshenhe" %>

<%@ Register Src="../userControl/foot.ascx" TagName="foot" TagPrefix="uc1" %>
<%@ Register Src="../userControl/head.ascx" TagName="head" TagPrefix="uc2" %>





<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>^_^  小区物业内部管理网-------停车信息审核  ^_^</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>
            <div>
                <div>
                    <div>
                        <div style="text-align: center">
                            <table border="0">
                                <tr>
                                    <td colspan="3" style="width: 741px" valign="top">
                                        <uc2:head ID="Head1" runat="server" />
                                       
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" style="width: 741px; height: 25px; background-color: #ffffcc" valign="top">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="3" style="width: 741px; height: 25px" valign="top">
                                        <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="华文新魏" Font-Size="22pt"
                                            ForeColor="Maroon" Text="小区物业停车场停车信息审核"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td colspan="3" style="width: 741px;" valign="top">
                                        ...............................................................................................................................
                                        .<asp:LinkButton ID="LinkButton1" runat="server"  Font-Size="Small" OnClick="LinkButton1_Click">停车信息管理</asp:LinkButton></td>
                                </tr>
                                <tr>
                                    <td colspan="3" style="width: 741px; height: 25px" valign="top">
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<asp:GridView
                                            ID="gvcl" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4"
                                            Font-Names="华文新魏" Font-Size="14px" ForeColor="#333333" GridLines="None" 
                                            OnPageIndexChanging="gvcl_PageIndexChanging" OnRowDataBound="gvcl_RowDataBound"
                                             OnSelectedIndexChanging="gvcl_SelectedIndexChanging" Width="696px" >
                                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
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
                                                <asp:CommandField HeaderText="审核" SelectText="处理/取消　" ShowSelectButton="True" />
                                            </Columns>
                                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                            <EditRowStyle BackColor="#999999" />
                                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        </asp:GridView>
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
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
                                    <td colspan="3" style="width: 741px" valign="top" align="center">
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
    </form>
</body>
</html>
