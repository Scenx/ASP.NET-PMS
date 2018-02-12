<%@ Control Language="C#" AutoEventWireup="true" CodeFile="yuangong.ascx.cs" Inherits="yuangong" %>

<div style="text-align: center">
    <table style="width: 170px; font-size: 12px;">
        <tr>
            <td style="border-right: #ffcc99 thin solid; border-top: #ffcc99 thin solid; border-left: #ffcc99 thin solid;
                width: 99px; height: 12px">
                <asp:Label ID="lblName" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black"
                    Width="119px">lblName</asp:Label></td>
        </tr>
        <tr>
            <td style="width: 99px; border-right: #ffcc99 thin solid; border-top: #ffcc99 thin solid; border-left: #ffcc99 thin solid; border-bottom: #ffcc99 thin solid; height: 11px;" valign="top">
                <table style="width: 100%">
                    <tr>
                        <td style="width: 100px; height: 115px;" valign="top">
                            <asp:Image ID="imgPhoto" runat="server" Width="62px" Height="78px" /></td>
                        <td style="width: 100px; border-left: #ffcc99 thin solid; height: 115px;" align="center" valign="top">
                            <table>
                                <tr>
                                    <td style="width: 100px">
                                        <asp:Label ID="lblBh" runat="server" Font-Size="Small" Text="编号：" ForeColor="Red"></asp:Label>
                                        &nbsp;
                                        <asp:Label ID="lblId" runat="server" Text="Label"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 100px; height: 21px;" align="left">
                                        <asp:Label ID="LblState" runat="server" Font-Size="Small" Text="状态："></asp:Label>&nbsp;
                                        <asp:Label ID="lblZt" runat="server" Text="Label"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                        <asp:Label ID="lblXb" runat="server" Font-Size="Small" ForeColor="Red" Text="性别："></asp:Label>
                                        &nbsp;
                                        <asp:Label ID="lblSex" runat="server" Text="Label"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                        <asp:Label ID="lblZhiwu" runat="server" Font-Size="Small" Text="职务："></asp:Label>
                                        &nbsp;
                                        <asp:Label ID="lblZw" runat="server" Text="Label"></asp:Label></td>
                                </tr>
                            </table>
                           <%--<a href='xiangxi.aspx?ID=<%#id1 %>' target=_blank>查看</a>--%>
                            <asp:HyperLink ID="hlCk" runat="server">查看</asp:HyperLink></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</div>
