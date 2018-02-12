<%@ Page Language="C#" AutoEventWireup="true" CodeFile="denglu.aspx.cs" Inherits="Default3" %>

<%@ Register Src="userControl/syhead.ascx" TagName="syhead" TagPrefix="uc3" %>



<%@ Register Src="userControl/foot.ascx" TagName="foot" TagPrefix="uc1" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>^_^  小区物业内部管理网-------用户登录 ^_^</title>
</head>
<body background="image/index_03.jpg">
    <form id="form1" runat="server">
    <div align="center">
        <div align="center">
            <table border="1">
                <tr>
                    <td colspan="3" style="width: 741px" valign="top">  
                        <uc3:syhead ID="Syhead1" runat="server" />
                        &nbsp; &nbsp;
                        &nbsp; &nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="width: 741px; height: 26px" valign="top" align="center">
                        <div style="text-align: center">
                            <table border="0" style="width: 100%">
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td colspan="7">
                                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="华文行楷" Font-Size="XX-Large"
                                            ForeColor="SteelBlue" Text="用户登录" Width="527px"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                        <asp:Image ID="Image1" runat="server" ImageUrl="~/image/login_04.jpg" /></td>
                                    <td style="width: 39px">
                                    </td>
                                    <td style="width: 100px">
                                                            <asp:TextBox ID="TextBox1" runat="server" Width="100px" Height="17px"></asp:TextBox></td>
                                    <td colspan="2">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                                            Display="Dynamic" ErrorMessage="用户名不能为空" Font-Size="Small" Width="104px"></asp:RequiredFieldValidator></td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 39px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                        <asp:Image ID="Image2" runat="server" ImageUrl="~/image/login_06.jpg" Width="52px" /></td>
                                    <td style="width: 39px">
                                    </td>
                                    <td style="width: 100px">
                                                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="100px"></asp:TextBox></td>
                                    <td colspan="2">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
                                            Display="Dynamic" ErrorMessage="用户密码不能为空" Font-Size="Small"></asp:RequiredFieldValidator></td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td colspan="3">
                                                                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/image/dl.gif" OnClick="ImageButton1_Click"  />
                                                                        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/image/zc.gif" OnClick="ImageButton2_Click" CausesValidation="False"  /></td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td colspan="3">
                                                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="Small"
                                                    OnClick="LinkButton1_Click" CausesValidation="False">返回首页</asp:LinkButton></td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                    <td colspan="3">
                                                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#FFC080"
                                                                Width="164px">请先注册!后登录...</asp:Label><asp:Label ID="Label4" runat="server" Font-Bold="True"
                                                                    Font-Size="Small" ForeColor="#FFC080" Height="15px" Visible="False" Width="180px">恭喜你!登录成功...</asp:Label></td>
                                    <td style="width: 100px">
                                    </td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                            </table>
                        </div>
                        </td>
                </tr>
                <tr>
                    <td colspan="3" style="width: 741px; height: 25px" valign="top">
                    </td>
                </tr>
                <tr style="font-size: 12pt; font-family: Times New Roman">
                    <td colspan="3" style="width: 741px; height: 140px" valign="top">
                        &nbsp; &nbsp;&nbsp;
                        <uc1:foot ID="Foot1" runat="server" />
                    </td>
                </tr>
            </table>
        </div>
    
    </div>
    </form>
</body>
</html>
