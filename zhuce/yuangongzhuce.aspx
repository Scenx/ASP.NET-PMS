<%@ Page Language="C#" AutoEventWireup="true" CodeFile="yuangongzhuce.aspx.cs" Inherits="yuangongzhuce" %>

<%@ Register Src="../userControl/syhead.ascx" TagName="syhead" TagPrefix="uc1" %>



<%@ Register Src="../userControl/foot.ascx" TagName="foot" TagPrefix="uc3" %>





<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style>
<link href="css/css.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
a {
	font-size: 12px;
	color: #0000CC;
}
a:visited {
	color: #0000CC;
}
a:hover {
	color: #FF9600;
}
a:active {
	color: #FF9600;
}
-->
</style>
    <link href="css/css.css" rel="stylesheet" type="text/css" />
</head>
<body bgcolor="#FFFFFF" background="../image/index_03.jpg">
    <form id="form1" runat="server">
    <div>
        <div>
            <div>
                <div style="text-align: center">
                    <table border="1">
                        <tr>
                            <td colspan="3" valign="top" style="width: 843px">
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="3" valign="top" style="width: 843px">
                                <uc1:syhead ID="Syhead1" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="height: 26px; width: 843px;" valign="top">
                                <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Names="华文新魏" Font-Size="XX-Large"
                                    ForeColor="#FF8000" Text="会员注册" Width="256px"></asp:Label>&nbsp;<table style="width: 80%">
                                    <tr>
                                        <td align="center" style="width: 144px; height: 6px;">
                                            </td>
                                        <td align="right" style="width: 84px; height: 6px;">
                                            <asp:Label ID="Label1" runat="server" Text="用户名："></asp:Label></td>
                                        <td align="right" style="width: 83px; height: 6px;">
                                        </td>
                                        <td align="right" style="width: 100px; height: 6px;">
                                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                            <asp:Button ID="btnYhm" runat="server" CausesValidation="False" Text="检验用户名" OnClick="btnYhm_Click" /></td>
                                        <td align="left" style="width: 107px; height: 6px;">
                                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                                                Display="Dynamic" ErrorMessage="用户名不能为空" Font-Size="Small"></asp:RequiredFieldValidator>
                                            </td>
                                    </tr>
                                    <tr>
                                        <td align="center" style="width: 144px">
                                            </td>
                                        <td align="right" style="width: 84px">
                                            <asp:Label ID="Label2" runat="server" Text="用户密码："></asp:Label></td>
                                        <td align="right" style="width: 83px">
                                        </td>
                                        <td align="right" style="width: 100px">
                                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="147px"></asp:TextBox></td>
                                        <td align="left" style="width: 107px">
                                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
                                                Display="Dynamic" ErrorMessage="用户密码不能为空" Font-Size="Small"></asp:RequiredFieldValidator></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 144px; height: 7px;">
                                        </td>
                                        <td style="width: 84px; height: 7px">
                                        </td>
                                        <td style="width: 83px; height: 7px">
                                        </td>
                                        <td style="width: 100px; height: 7px;">
                                        </td>
                                        <td style="width: 107px; height: 7px;">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 144px; height: 24px">
                                            </td>
                                        <td style="width: 84px; height: 24px" align="right">
                                            <asp:Label ID="Label3" runat="server" Text="性别："></asp:Label></td>
                                        <td style="width: 83px; height: 24px">
                                        </td>
                                        <td style="width: 100px; height: 24px">
                                            <asp:DropDownList ID="DropDownList2" runat="server" Width="106px" ForeColor="Red">
                                                <asp:ListItem Selected="True">男</asp:ListItem>
                                                <asp:ListItem>女</asp:ListItem>
                                            </asp:DropDownList></td>
                                        <td align="left" style="width: 107px; height: 24px">
                                            </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 144px">
                                            </td>
                                        <td style="width: 84px">
                                            <asp:Label ID="Label4" runat="server" Text="出生日期：" Width="80px"></asp:Label></td>
                                        <td style="width: 83px">
                                        </td>
                                        <td style="width: 100px">
                                            &nbsp;<asp:TextBox ID="TextBox4" runat="server" Width="150px"></asp:TextBox><div style="text-align: center">
                                            </div>
                                        </td>
                                        <td align="left" style="width: 107px">
                                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4"
                                                ErrorMessage="出生日期不能为空" Font-Size="Small" Width="110px"></asp:RequiredFieldValidator>
                                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox4"
                                                Display="Dynamic" ErrorMessage="出生日期格式不正确" Font-Size="Smaller" Operator="DataTypeCheck"
                                                Type="Date" Width="150px"></asp:CompareValidator></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 144px; height: 15px">
                                            </td>
                                        <td style="width: 84px; height: 15px" align="right">
                                            <asp:Label ID="Label5" runat="server" Text="年龄："></asp:Label></td>
                                        <td style="width: 83px; height: 15px">
                                        </td>
                                        <td style="width: 100px; height: 15px">
                                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                                        <td align="left" style="width: 107px; height: 15px">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5"
                                                Display="Dynamic" ErrorMessage="RequiredFieldValidator" Font-Size="Small">年龄不能为空</asp:RequiredFieldValidator>
                                            <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox5"
                                                Display="Dynamic" ErrorMessage="必须输入数字.且100>年龄>18" Font-Size="Small" MaximumValue="100"
                                                MinimumValue="18" Type="Integer" Width="186px"></asp:RangeValidator></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 144px; height: 24px">
                                            </td>
                                        <td style="width: 84px; height: 24px">
                                            <asp:Label ID="Label6" runat="server" Text="婚姻状况："></asp:Label></td>
                                        <td style="width: 83px; height: 24px">
                                        </td>
                                        <td style="width: 100px; height: 24px">
                                            <asp:DropDownList ID="DropDownList3" runat="server" Width="109px" ForeColor="Red">
                                                <asp:ListItem>未婚</asp:ListItem>
                                                <asp:ListItem Selected="True">已婚</asp:ListItem>
                                                <asp:ListItem>离婚</asp:ListItem>
                                            </asp:DropDownList></td>
                                        <td align="left" style="width: 107px; height: 24px">
                                            </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 144px; height: 21px">
                                            </td>
                                        <td style="width: 84px; height: 21px">
                                            <asp:Label ID="Label7" runat="server" Text="身份证号："></asp:Label></td>
                                        <td style="width: 83px; height: 21px">
                                        </td>
                                        <td style="width: 100px; height: 21px">
                                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
                                        <td align="left" style="width: 107px; height: 21px">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox6"
                                                Display="Dynamic" ErrorMessage="身份证号码不能为空" Font-Names="楷体_GB2312" Font-Size="Small"
                                                Width="138px"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox6"
                                                Display="Dynamic" ErrorMessage="身份证号17位或是15位" Font-Size="Small" ValidationExpression="\d{17}[\d|X]|\d{15}"
                                                Width="214px"></asp:RegularExpressionValidator></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 144px; height: 23px">
                                            </td>
                                        <td style="width: 84px; height: 23px">
                                            <asp:Label ID="Label8" runat="server" Text="移动电话："></asp:Label></td>
                                        <td style="width: 83px; height: 23px">
                                        </td>
                                        <td style="width: 100px; height: 23px">
                                            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
                                        <td align="left" style="width: 107px; height: 23px">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox7"
                                                Display="Dynamic" ErrorMessage="移动电话号码不能为空" Font-Size="Small" Width="136px"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 144px; height: 47px;">
                                            </td>
                                        <td style="width: 84px; height: 47px;">
                                            <asp:Label ID="Label9" runat="server" Text="联系电话："></asp:Label></td>
                                        <td style="width: 83px; height: 47px">
                                        </td>
                                        <td style="width: 100px; height: 47px;">
                                            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>
                                        <td align="left" style="width: 107px; height: 47px;">
                                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBox8"
                                                Display="Dynamic" ErrorMessage="联系电话不能为空" Font-Size="Small" Width="182px"></asp:RequiredFieldValidator></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 144px; height: 17px">
                                            </td>
                                        <td style="width: 84px; height: 17px">
                                            <asp:Label ID="Label10" runat="server" Text="所在城市："></asp:Label></td>
                                        <td style="width: 83px; height: 17px">
                                        </td>
                                        <td style="width: 100px; height: 17px">
                                            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox></td>
                                        <td align="left" style="width: 107px; height: 17px">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox9"
                                                Display="Dynamic" ErrorMessage="所在城市不能为空" Font-Size="Small"></asp:RequiredFieldValidator></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 144px">
                                            </td>
                                        <td style="width: 84px">
                                            <asp:Label ID="Label11" runat="server" Text="家庭地址："></asp:Label></td>
                                        <td style="width: 83px">
                                        </td>
                                        <td style="width: 100px">
                                            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox></td>
                                        <td align="left" style="width: 107px">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox10"
                                                Display="Dynamic" ErrorMessage="家庭地址不能为空" Font-Size="Small"></asp:RequiredFieldValidator></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 144px">
                                            </td>
                                        <td style="width: 84px" align="right">
                                            <asp:Label ID="Label12" runat="server" Text="邮箱："></asp:Label></td>
                                        <td style="width: 83px">
                                        </td>
                                        <td style="width: 100px">
                                            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox></td>
                                        <td align="left" style="width: 107px">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox11"
                                                Display="Dynamic" ErrorMessage="邮箱不能为空" Font-Size="Small"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="请按邮箱的格式填写" runat="server" ControlToValidate="TextBox11"
                                                Display="Dynamic" Font-Size="Small" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                                Width="143px" ErrorMessage="格式不正确"></asp:RegularExpressionValidator></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 144px; height: 18px;">
                                            </td>
                                        <td style="width: 84px; height: 18px;">
                                            <asp:Label ID="Label13" runat="server" Text="职务类型："></asp:Label></td>
                                        <td style="width: 83px; height: 18px">
                                        </td>
                                        <td style="width: 100px; height: 18px;">
                                            <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox></td>
                                        <td align="left" style="width: 107px; height: 18px;">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox12"
                                                Display="Dynamic" ErrorMessage="职务类型不能为空" Font-Size="Small" Width="108px"></asp:RequiredFieldValidator></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 144px; height: 60px">
                                            </td>
                                        <td style="width: 84px; height: 60px" align="right">
                                            <asp:Label ID="Label14" runat="server" Text="备注："></asp:Label></td>
                                        <td style="width: 83px; height: 60px">
                                        </td>
                                        <td style="width: 100px; height: 60px">
                                            <asp:TextBox ID="TextBox13" runat="server" Height="79px" TextMode="MultiLine" Width="157px"></asp:TextBox></td>
                                        <td align="left" style="width: 107px; height: 60px">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox13"
                                                Display="Dynamic" ErrorMessage="备注不能为空" Font-Size="Small"></asp:RequiredFieldValidator></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 144px">
                                        </td>
                                        <td style="width: 84px">
                                        </td>
                                        <td style="width: 83px">
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                        <td style="width: 107px">
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="height: 25px; width: 843px;" valign="top">
                                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="注册" />&nbsp;
                                <asp:Button ID="Button1" runat="server" Text="取消" CausesValidation="False" OnClick="Button1_Click" /></td>
                        </tr>
                        <tr>
                            <td align="left" colspan="3" rowspan="1" valign="top" style="width: 843px">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" valign="top" style="width: 843px">
                                &nbsp;
                                <uc3:foot ID="Foot1" runat="server" />
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
