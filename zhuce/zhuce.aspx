<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zhuce.aspx.cs" Inherits="zhuce" %>

<%@ Register Src="../userControl/syhead.ascx" TagName="syhead" TagPrefix="uc1" %>

<%@ Register Src="../userControl/foot.ascx" TagName="foot" TagPrefix="uc3" %>





<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body background="../image/index_03.jpg">
    <form id="form1" runat="server">
    <div>
        <div>
            <div style="text-align: center">
                <table border="1">
                    <tr>
                        <td colspan="3" valign="top" style="width: 741px">
                            <uc1:syhead ID="Syhead1" runat="server" />
                            &nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="height: 53px; width: 741px;" valign="top">
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="华文新魏" Font-Size="20pt"
                                ForeColor="SteelBlue" Text="网站住户条约" Width="200px"></asp:Label></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="height: 25px; width: 741px;" valign="top">
                            ................................................................................................................................</td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 741px; height: 41px" valign="top">
                            <table border="0" style="width: 60%">
                                <tr>
                                    <td style="width: 93px">
                                        <asp:Label ID="Label2" runat="server" ForeColor="RoyalBlue" Text="1.本网站享有所有条款的解释权及修改权。"
                                            Width="350px" Font-Bold="True" Font-Size="Medium"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 93px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 93px">
                                        <asp:Label ID="Label3" runat="server" ForeColor="RoyalBlue" Text="2.会员须遵守互联网安全信息管理条例对违反规定而产生的一切后果自负。"
                                            Width="600px" Font-Bold="True"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 93px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 93px">
                                        <asp:Label ID="Label5" runat="server" ForeColor="RoyalBlue" Text="3.所有注册用户，应妥善保管用户名称及密码。"
                                            Width="394px" Font-Bold="True"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 93px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" style="width: 93px; height: 18px">
                                        <asp:Label ID="Label6" runat="server" ForeColor="RoyalBlue" Text="4.会员有义务对我们的服务做出监督并提供合理化建议。"
                                            Width="462px" Font-Bold="True"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td align="center" style="width: 93px; height: 5px">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" style="width: 93px; height: 21px;">
                                        <asp:Label ID="Label7" runat="server" ForeColor="RoyalBlue" Text="5.网站保护每一位员工的个人注册信息，绝对不向第三方公开。"
                                            Width="508px" Font-Bold="True"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 93px; height: 11px">
                                    </td>
                                </tr>
                            </table>
                            &nbsp;<br />
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                            &nbsp;&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="3" style="height: 25px; width: 741px;" valign="top">
                            <asp:LinkButton ID="lbtnty" runat="server" Font-Bold="True" Font-Size="12pt" OnClick="lbtnty_Click">我同意</asp:LinkButton>
                            &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                            <asp:LinkButton ID="lbtnbty" runat="server" Font-Bold="True" Font-Size="12pt" OnClick="lbtnbty_Click">不同意 </asp:LinkButton></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="height: 25px; width: 741px;" valign="top">
                            &nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td align="left" rowspan="1" style="height: 2px; width: 741px;" valign="top" colspan="3">
                            <div style="text-align: center">
                                <div style="text-align: center">
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" colspan="3" rowspan="1" valign="top" style="width: 741px">
                        </td>
                    </tr>
                    <tr>
                        <td align="left" colspan="3" rowspan="1" style="height: 29px; width: 741px;" valign="top">
                            &nbsp;<uc3:foot ID="Foot1" runat="server" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    
    </div>
    </form>
</body>
</html>
