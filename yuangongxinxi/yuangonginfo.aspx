<%@ Page Language="C#" AutoEventWireup="true" CodeFile="yuangonginfo.aspx.cs" Inherits="yuangonginfo" %>

<%@ Register Src="../userControl/foot.ascx" TagName="foot" TagPrefix="uc1" %>
<%@ Register Src="../userControl/head.ascx" TagName="head" TagPrefix="uc2" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>^_^  小区物业内部管理网-------员工信息管理  ^_^</title>
</head>
<body background="../image/index_03.jpg">
    <form id="form1" runat="server">
    <div>
        &nbsp;</div>
        <table id="Table6" align="center" border="1" cellpadding="0" cellspacing="0" width="650">
            <tr>
                <td align="center"colspan="1" style="width: 1093px; height: 49px">
                    <uc2:head ID="Head1" runat="server" />
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 1093px; height: 24px" valign="top" align="left">
                    &nbsp; &nbsp; &nbsp; &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 1093px; height: 164px">
                    <table id="Table7" border="0" cellpadding="0" cellspacing="0" width="100%">
                        <tr>
                            <td align="middle" style="width: 194px; height: 33px">
                            </td>
                            <td align="middle" style="width: 194px; height: 33px">
                    <asp:Label ID="Label1" runat="server" Text="员工编号：" Font-Bold="True" Font-Names="幼圆" ForeColor="Maroon"></asp:Label></td>
                            <td align="middle" style="width: 343px; height: 33px">
                                <asp:TextBox ID="txtid" runat="server" Width="114px"></asp:TextBox>
                   
                    </td>
                            <td align="middle" style="width: 388px; height: 33px">
                                &nbsp;<asp:Button ID="btnSh" runat="server" Text="审核编号" OnClick="btnSh_Click" CausesValidation="False" Width="62px" />
                    <asp:RequiredFieldValidator ID="rfvid" runat="server" ControlToValidate="txtid" Display="Dynamic"
                        ErrorMessage="员工编号不能为空" Font-Size="Small" Width="87px"></asp:RequiredFieldValidator></td>
                            <td align="middle" style="width: 388px; height: 33px">
                            </td>
                            <td align="middle" style="width: 388px; height: 33px">
                                <asp:Label ID="Label2" runat="server" Text="员工姓名：" Font-Bold="False" Font-Names="幼圆" Width="85px"></asp:Label></td>
                            <td align="middle" style="width: 388px; height: 33px">
                                <asp:TextBox ID="txtygname" runat="server" Width="114px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic"
                                    ErrorMessage="员工姓名不能为空" Font-Size="Small" ControlToValidate="txtygname" Width="108px"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtygname"
                                    Display="Dynamic" ErrorMessage="员工姓名格式必须为汉字" Font-Size="Small" ValidationExpression="^[\u4E00-\u9FA5]{0,}$"></asp:RegularExpressionValidator></td>
                            <td align="middle" rowspan="3" style="width: 27743px">
                            </td>
                            <td align="middle" rowspan="3" style="width: 450px">
                            </td>
                            <td align="middle" rowspan="3" style="width: 460px">
                            </td>
                            <td align="middle" rowspan="3" style="width: 432px">
                    <asp:Image ID="imgphoto" runat="server" Height="135px" Width="121px" />
                    <input id="flLl" runat="server" name="File1" style="width: 36px" type="file" />&nbsp;&nbsp;<asp:Button ID="btnJz" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Green"
                        Height="26px" OnClick="Button1_Click" Text="加载图片信息" CausesValidation="False" Width="94px" />
                                &nbsp;<asp:TextBox ID="txtimage" runat="server" Width="114px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="txtimage"
                                    Display="Dynamic" ErrorMessage="必须选择一张员工照片" Font-Names="华文新魏"></asp:RequiredFieldValidator></td>
                            <td align="middle" style="width: 236px;" rowspan="3">
                                &nbsp;
                            </td>
                            <td align="middle" rowspan="3" style="width: 316px">
                            </td>
                        </tr>
                        <tr>
                            <td align="middle" style="width: 194px; height: 21px">
                            </td>
                            <td align="middle" style="width: 194px; height: 21px;">
                                <asp:Label ID="Label3" runat="server" Text="英文姓名：" Width="120px" Font-Bold="False" Font-Names="幼圆"></asp:Label></td>
                            <td align="middle" style="width: 343px; height: 21px;">
                                <asp:TextBox ID="txtengname" runat="server" Width="114px"></asp:TextBox>
                                </td>
                            <td align="middle" style="width: 388px; height: 21px">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtengname"
                                    Display="Dynamic" ErrorMessage="员工英文姓名不能为空" Font-Names="幼圆" Font-Size="Small" Width="140px"></asp:RequiredFieldValidator></td>
                            <td align="middle" style="width: 388px; height: 21px">
                            </td>
                            <td align="center" style="width: 388px; height: 21px">
                                <asp:Label ID="Label5" runat="server" Text="在职职称：" Width="83px" Font-Bold="False" Font-Names="幼圆"></asp:Label></td>
                            <td align="middle" style="width: 388px; height: 21px">
                                <asp:DropDownList ID="ddlgzzc" runat="server" Width="121px">
                                    <asp:ListItem>管理员</asp:ListItem>
                                    <asp:ListItem Selected="True">员工</asp:ListItem>
                                </asp:DropDownList></td>
                        </tr>
                        <tr>
                            <td align="middle" style="width: 194px; height: 20px">
                            </td>
                            <td align="middle" style="width: 194px; height: 20px;">
                                <asp:Label ID="Label6" runat="server" Text="工作状态：" Width="97px" Font-Bold="False" Font-Names="幼圆"></asp:Label></td>
                            <td align="left" style="width: 343px; height: 20px;">
                                <asp:DropDownList ID="ddlgzzt" runat="server" Width="117px">
                                    <asp:ListItem Selected="True">在岗</asp:ListItem>
                                    <asp:ListItem>离岗</asp:ListItem>
                                </asp:DropDownList></td>
                            <td align="left" style="width: 388px; height: 20px">
                            </td>
                            <td align="left" style="width: 388px; height: 20px">
                            </td>
                            <td align="center" style="width: 388px; height: 20px">
                                <asp:Label ID="Label7" runat="server" Text="性别：" Width="51px" Font-Bold="False" Font-Names="幼圆"></asp:Label></td>
                            <td align="left" style="width: 388px; height: 20px">
                                <asp:DropDownList ID="ddlxb" runat="server" Width="122px" >
                                    <asp:ListItem Selected="True">男</asp:ListItem>
                                    <asp:ListItem>女</asp:ListItem>
                                </asp:DropDownList></td>
                        </tr>
                        <tr>
                            <td align="middle" style="width: 194px; height: 38px">
                            </td>
                            <td align="middle" style="width: 194px; height: 38px">
                                <asp:Label ID="Label8" runat="server" Text="婚姻状态：" Font-Bold="False" Font-Names="幼圆"></asp:Label></td>
                            <td align="left" style="width: 343px; height: 38px">
                                <asp:DropDownList ID="ddlhy" runat="server" Width="115px">
                                    <asp:ListItem>未婚</asp:ListItem>
                                    <asp:ListItem Selected="True">已婚</asp:ListItem>
                                    <asp:ListItem>离婚</asp:ListItem>
                                </asp:DropDownList></td>
                            <td align="left" style="width: 388px; height: 38px">
                            </td>
                            <td align="left" style="width: 388px; height: 38px">
                            </td>
                            <td align="center" style="width: 388px; height: 38px">
                                <asp:Label ID="Label11" runat="server" Text="民族：" Font-Bold="False" Font-Names="幼圆"></asp:Label></td>
                            <td align="left" style="width: 388px; height: 38px">
                                <asp:TextBox ID="Txtnation" runat="server" Width="114px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Txtnation"
                                    Display="Dynamic" ErrorMessage="民族不能为空" Font-Names="华文新魏"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Txtnation"
                                    Display="Dynamic" ErrorMessage="民族格式只能为汉字" Font-Size="Small" ValidationExpression="^[\u4E00-\u9FA5]{0,}$" Width="121px"></asp:RegularExpressionValidator></td>
                            <td align="left" style="width: 27743px; height: 38px">
                            </td>
                            <td align="left" style="width: 450px; height: 38px">
                            </td>
                            <td align="left" style="width: 460px; height: 38px">
                            </td>
                            <td align="center" style="width: 432px; height: 38px">
                                <asp:Label ID="Label9" runat="server" Text="健康状态：" Font-Bold="False" Font-Names="幼圆"></asp:Label></td>
                            <td align="left" style="width: 236px; height: 38px">
                                <asp:DropDownList ID="ddljjkk" runat="server" Width="114px">
                                    <asp:ListItem Selected="True">健康</asp:ListItem>
                                    <asp:ListItem>亚健康</asp:ListItem>
                                    <asp:ListItem>生病</asp:ListItem>
                                </asp:DropDownList></td>
                            <td align="left" style="width: 316px; height: 38px">
                            </td>
                        </tr>
                        <tr>
                            <td align="middle" style="width: 194px; height: 38px">
                            </td>
                            <td align="middle" style="width: 194px; height: 38px">
                                <asp:Label ID="Label12" runat="server" Text="户口所在地：" Font-Bold="False" Font-Names="幼圆"></asp:Label></td>
                            <td align="left" style="width: 343px; height: 38px">
                                <asp:TextBox ID="txtlocus" runat="server" TextMode="MultiLine" Width="114px"></asp:TextBox></td>
                            <td align="left" style="width: 388px; height: 38px">
                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtlocus"
                                    Display="Dynamic" ErrorMessage="户口所在地不能为空" Font-Names="华文新魏"></asp:RequiredFieldValidator></td>
                            <td align="left" style="width: 388px; height: 38px">
                            </td>
                            <td align="left" style="width: 388px; height: 38px">
                                <asp:Label ID="Label14" runat="server" Text="社保个人帐号：" Font-Bold="False" Font-Names="幼圆" Width="114px"></asp:Label></td>
                            <td align="left" style="width: 388px; height: 38px">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Txtsb"
                                    Display="Dynamic" ErrorMessage="社保个人帐号不能为空" Font-Names="华文新魏" Width="171px"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="Txtsb" runat="server" Width="114px"></asp:TextBox></td>
                            <td align="left" style="width: 27743px; height: 38px">
                            </td>
                            <td align="left" style="width: 450px; height: 38px">
                            </td>
                            <td align="left" style="width: 460px; height: 38px">
                            </td>
                            <td align="center" style="width: 432px; height: 38px">
                                &nbsp;<asp:Label ID="Label10" runat="server" Text="出生年月日：" Font-Bold="False" Font-Names="幼圆" Width="102px"></asp:Label></td>
                            <td align="left" style="width: 236px; height: 38px">
                               <asp:TextBox ID="Txtbird" runat="server" Width="91px"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="Txtbird"
                                    ErrorMessage="出生日期格式不正确" Operator="DataTypeCheck" Type="Date" Font-Size="9pt"></asp:CompareValidator>
                                &nbsp;&nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Txtbird"
                                    ErrorMessage="出生年月日不能为空" Font-Names="华文新魏"></asp:RequiredFieldValidator></td>
                            <td align="left" style="width: 316px; height: 38px">
                            </td>
                        </tr>
                        <tr>
                            <td align="middle" style="width: 194px; height: 38px">
                            </td>
                            <td align="middle" style="width: 194px; height: 38px">
                                <asp:Label ID="Label17" runat="server" Text="医疗保险帐号：" Width="114px" Font-Bold="False" Font-Names="幼圆"></asp:Label></td>
                            <td align="left" style="width: 343px; height: 38px">
                                <asp:TextBox ID="txtyb" runat="server" Width="114px"></asp:TextBox></td>
                            <td align="left" style="width: 388px; height: 38px">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtyb"
                                    Display="Dynamic" ErrorMessage="医疗保险帐号" Font-Names="华文新魏"></asp:RequiredFieldValidator></td>
                            <td align="left" style="width: 388px; height: 38px">
                            </td>
                            <td align="center" style="width: 388px; height: 38px">
                                <asp:Label ID="Label19" runat="server" Text="邮政编码：" Font-Bold="False" Font-Names="幼圆"></asp:Label></td>
                            <td align="left" style="width: 388px; height: 38px">
                                <asp:TextBox ID="txtyzbm" runat="server" Width="114px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtyzbm"
                                    Display="Dynamic" ErrorMessage="邮政编码不能为空" Font-Names="华文新魏"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revyzbm" runat="server" ControlToValidate="txtyzbm"
                                    Display="Dynamic" ErrorMessage="邮政编码格式不正确" Font-Size="Small" ValidationExpression="\d{6}"></asp:RegularExpressionValidator></td>
                            <td align="left" style="width: 27743px; height: 38px">
                            </td>
                            <td align="left" style="width: 450px; height: 38px">
                            </td>
                            <td align="left" style="width: 460px; height: 38px">
                            </td>
                            <td align="center" style="width: 432px; height: 38px">
                                <asp:Label ID="Label16" runat="server" Text="籍贯：" Font-Bold="False" Font-Names="幼圆"></asp:Label></td>
                            <td align="left" style="width: 236px; height: 38px">
                                <asp:TextBox ID="Txtjg" runat="server" Width="114px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Txtjg"
                                    ErrorMessage="籍贯不能为空" Font-Names="华文新魏"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revjg" runat="server" ControlToValidate="Txtjg"
                                    Display="Dynamic" ErrorMessage="籍贯的格式只能为汉字" Font-Size="Small" ValidationExpression="^[\u4E00-\u9FA5]{0,}$"
                                    Width="134px"></asp:RegularExpressionValidator></td>
                            <td align="left" style="width: 316px; height: 38px">
                            </td>
                        </tr>
                        <tr>
                            <td align="middle" style="width: 194px; height: 38px">
                            </td>
                            <td align="middle" style="width: 194px; height: 38px">
                                <asp:Label ID="Label21" runat="server" Text="毕业院校：" Font-Bold="False" Font-Names="幼圆" Width="94px"></asp:Label></td>
                            <td align="left" style="width: 343px; height: 38px">
                                <asp:TextBox ID="Txtbyschool" runat="server" Width="114px"></asp:TextBox></td>
                            <td align="left" style="width: 388px; height: 38px">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="Txtbyschool"
                                    Display="Dynamic" ErrorMessage="毕业院校不能为空" Font-Names="华文新魏" Width="170px"></asp:RequiredFieldValidator></td>
                            <td align="left" style="width: 388px; height: 38px">
                            </td>
                            <td align="center" style="width: 388px; height: 38px">
                                <asp:Label ID="Label32" runat="server" Text="特长：" Font-Bold="False" Font-Names="幼圆"></asp:Label></td>
                            <td align="left" style="width: 388px; height: 38px">
                                <asp:TextBox ID="Txttc" runat="server" Width="114px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="Txttc"
                                    Display="Dynamic" ErrorMessage="特长不能为空" Font-Names="华文新魏" Width="107px"></asp:RequiredFieldValidator></td>
                            <td align="left" style="width: 27743px; height: 38px">
                            </td>
                            <td align="left" style="width: 450px; height: 38px">
                            </td>
                            <td align="left" style="width: 460px; height: 38px">
                            </td>
                            <td align="center" style="width: 432px; height: 38px">
                                <asp:Label ID="Label15" runat="server" Text="公积金帐号：" Font-Bold="False" Font-Names="幼圆"></asp:Label></td>
                            <td align="left" style="width: 236px; height: 38px">
                                <asp:TextBox ID="Txtgj" runat="server" Width="114px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="Txtgj"
                                    Display="Dynamic" ErrorMessage="公积金帐号不能为空" Font-Names="华文新魏" Width="146px"></asp:RequiredFieldValidator></td>
                            <td align="left" style="width: 316px; height: 38px">
                            </td>
                        </tr>
                        <tr>
                            <td align="middle" style="width: 194px; height: 38px">
                            </td>
                            <td align="middle" style="width: 194px; height: 38px">
                                <asp:Label ID="Label24" runat="server" Text="外语语种：" Font-Bold="False" Font-Names="幼圆" Width="107px"></asp:Label></td>
                            <td align="left" style="width: 343px; height: 38px">
                                <asp:DropDownList ID="ddlwyyz" runat="server" Width="118px">
                                    <asp:ListItem>英语</asp:ListItem>
                                    <asp:ListItem>日语</asp:ListItem>
                                    <asp:ListItem>俄语</asp:ListItem>
                                    <asp:ListItem>一点不懂</asp:ListItem>
                                </asp:DropDownList></td>
                            <td align="left" style="width: 388px; height: 38px">
                            </td>
                            <td align="left" style="width: 388px; height: 38px">
                            </td>
                            <td align="center" style="width: 388px; height: 38px">
                                <asp:Label ID="Label27" runat="server" Text="电脑水平：" Font-Bold="False" Font-Names="幼圆" Width="85px"></asp:Label></td>
                            <td align="left" style="width: 388px; height: 38px">
                                <asp:DropDownList ID="ddldnsp" runat="server" Width="117px">
                                    <asp:ListItem>一般</asp:ListItem>
                                    <asp:ListItem>熟练</asp:ListItem>
                                    <asp:ListItem>精通</asp:ListItem>
                                    <asp:ListItem>一点不懂</asp:ListItem>
                                </asp:DropDownList></td>
                            <td align="left" style="width: 27743px; height: 38px">
                            </td>
                            <td align="left" style="width: 450px; height: 38px">
                            </td>
                            <td align="left" style="width: 460px; height: 38px">
                            </td>
                            <td align="center" style="width: 432px; height: 38px">
                                <asp:Label ID="Label18" runat="server" Text="护照号：" Font-Bold="False" Font-Names="幼圆"></asp:Label></td>
                            <td align="left" style="width: 236px; height: 38px">
                                <asp:TextBox ID="txthz" runat="server" Width="114px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txthz"
                                    Display="Dynamic" ErrorMessage="护照号不能为空" Font-Names="华文新魏"></asp:RequiredFieldValidator></td>
                            <td align="left" style="width: 316px; height: 38px">
                            </td>
                        </tr>
                        <tr>
                            <td align="middle" style="width: 194px; height: 38px">
                            </td>
                            <td align="middle" style="width: 194px; height: 38px">
                                <asp:Label ID="Label29" runat="server" Text="移动电话：" Font-Bold="False" Font-Names="幼圆" Width="111px"></asp:Label></td>
                            <td align="left" style="width: 343px; height: 38px">
                                <asp:TextBox ID="Txtphone" runat="server" Width="114px"></asp:TextBox></td>
                            <td align="left" style="width: 388px; height: 38px">
                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="Txtphone"
                                    Display="Dynamic" ErrorMessage="移动电话不能为空" Font-Names="华文新魏" Width="133px"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revydtel" runat="server" ControlToValidate="Txtphone"
                                    Display="Dynamic" ErrorMessage="移动电话格式只能是数字" Font-Size="Small" ValidationExpression="\d*"></asp:RegularExpressionValidator></td>
                            <td align="left" style="width: 388px; height: 38px">
                            </td>
                            <td align="center" style="width: 388px; height: 38px">
                                <asp:Label ID="Label30" runat="server" Text="家庭住址：" Font-Bold="False" Font-Names="幼圆" Width="84px"></asp:Label></td>
                            <td align="left" style="width: 388px; height: 38px">
                                <asp:TextBox ID="Txtaddress" runat="server" TextMode="MultiLine" Width="114px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="Txtaddress"
                                    Display="Dynamic" ErrorMessage="家庭住址不能为空" Font-Names="华文新魏" Width="137px"></asp:RequiredFieldValidator></td>
                            <td align="left" style="width: 27743px; height: 38px">
                            </td>
                            <td align="left" style="width: 450px; height: 38px">
                            </td>
                            <td align="left" style="width: 460px; height: 38px">
                            </td>
                            <td align="center" style="width: 432px; height: 38px">
                                <asp:Label ID="Label20" runat="server" Text="专业：" Font-Bold="False" Font-Names="幼圆"></asp:Label></td>
                            <td align="left" style="width: 236px; height: 38px">
                                <asp:TextBox ID="txtzhuanye" runat="server" Width="114px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtzhuanye"
                                    Display="Dynamic" ErrorMessage="专业不能为空" Font-Names="华文新魏"></asp:RequiredFieldValidator></td>
                            <td align="left" style="width: 316px; height: 38px">
                            </td>
                        </tr>
                        <tr>
                            <td align="middle" style="width: 194px; height: 23px">
                            </td>
                            <td align="middle" style="width: 194px; height: 23px">
                                <asp:Label ID="Label31" runat="server" Text="身份证号码：" Font-Bold="False" Font-Names="幼圆" Width="109px"></asp:Label></td>
                            <td align="left" style="width: 343px; height: 23px">
                                <asp:TextBox ID="Txtcard" runat="server" Width="114px"></asp:TextBox></td>
                            <td align="left" style="width: 388px; height: 23px">
                                <asp:RequiredFieldValidator ID="rfvsfz" runat="server" ControlToValidate="Txtcard"
                                    Display="Dynamic" ErrorMessage="身份证号不能为空" Width="110px" Font-Size="Small"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revsfzcard" runat="server" ControlToValidate="Txtcard"
                                    Display="Dynamic" ErrorMessage="身份证格式不正确" Font-Size="Small" ValidationExpression="\d{17}[\d|X]|\d{15}"></asp:RegularExpressionValidator></td>
                            <td align="left" style="width: 388px; height: 23px">
                            </td>
                            <td align="center" style="width: 388px; height: 23px">
                                <asp:Label ID="Label26" runat="server" Text="电子邮箱：" Font-Bold="False" Font-Names="幼圆" Width="83px"></asp:Label></td>
                            <td align="left" style="width: 388px; height: 23px">
                                <asp:TextBox ID="Txtemail" runat="server" Width="114px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="Txtemail"
                                    Display="Dynamic" ErrorMessage="电子邮箱不能为空" Font-Names="华文新魏"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revdzyx" runat="server" ControlToValidate="Txtemail"
                                    Display="Dynamic" ErrorMessage="电子邮箱的格式不正确" Font-Size="Small" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                    Width="175px"></asp:RegularExpressionValidator></td>
                            <td align="left" style="width: 27743px; height: 23px">
                            </td>
                            <td align="left" style="width: 450px; height: 23px">
                            </td>
                            <td align="left" style="width: 460px; height: 23px">
                            </td>
                            <td align="center" style="width: 432px; height: 23px">
                                <asp:Label ID="Label23" runat="server" Text="学历：" Font-Bold="False" Font-Names="幼圆"></asp:Label></td>
                            <td align="left" style="width: 236px; height: 23px">
                                <asp:DropDownList ID="ddlxueli" runat="server" Width="120px">
                                    <asp:ListItem>小学</asp:ListItem>
                                    <asp:ListItem>初中</asp:ListItem>
                                    <asp:ListItem>高中</asp:ListItem>
                                    <asp:ListItem>中专</asp:ListItem>
                                    <asp:ListItem>大专</asp:ListItem>
                                    <asp:ListItem>大学</asp:ListItem>
                                </asp:DropDownList></td>
                            <td align="left" style="width: 316px; height: 23px">
                            </td>
                        </tr>
                        <tr>
                            <td align="middle" style="width: 194px; height: 38px">
                            </td>
                            <td align="middle" style="width: 194px; height: 38px">
                                <asp:Label ID="Label25" runat="server" Text="外语水平：" Font-Bold="False" Font-Names="幼圆" Width="109px"></asp:Label></td>
                            <td align="left" style="width: 343px; height: 38px">
                                <asp:DropDownList ID="ddlwysp" runat="server" Width="122px">
                                    <asp:ListItem>一般</asp:ListItem>
                                    <asp:ListItem>熟练</asp:ListItem>
                                    <asp:ListItem>精通</asp:ListItem>
                                    <asp:ListItem Selected="True">一点不懂</asp:ListItem>
                                </asp:DropDownList></td>
                            <td align="left" style="width: 388px; height: 38px">
                                &nbsp;</td>
                            <td align="left" style="width: 388px; height: 38px">
                            </td>
                            <td align="center" style="width: 388px; height: 38px">
                                <asp:Label ID="Label28" runat="server" Text="岗位编号：" Font-Bold="False" Font-Names="幼圆" Width="83px"></asp:Label></td>
                            <td align="left" style="width: 388px; height: 38px">
                                <asp:TextBox ID="Txtgwid" runat="server" Width="114px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="Txtgwid"
                                    ErrorMessage="岗位编号不能为空" Font-Names="华文新魏" Width="131px"></asp:RequiredFieldValidator></td>
                            <td align="left" style="width: 27743px; height: 38px">
                            </td>
                            <td align="left" style="width: 450px; height: 38px">
                            </td>
                            <td align="left" style="width: 460px; height: 38px">
                            </td>
                            <td align="center" style="width: 432px; height: 38px">
                                <asp:Label ID="Label22" runat="server" Text="联系电话：" Font-Bold="False" Font-Names="幼圆" Width="82px"></asp:Label></td>
                            <td align="left" style="width: 236px; height: 38px">
                                <asp:TextBox ID="Txttel" runat="server" Width="114px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="Txttel"
                                    Display="Dynamic" ErrorMessage="联系电话不能为空" Font-Names="华文新魏" Width="133px"></asp:RequiredFieldValidator></td>
                            <td align="left" style="width: 316px; height: 38px">
                            </td>
                        </tr>
                        <tr>
                            <td align="middle" style="width: 194px; height: 38px">
                            </td>
                            <td align="center" style="height: 38px" colspan="11">
                                &nbsp;<asp:Button ID="btnOk" runat="server" OnClick="btnok_Click" Text="添加" />&nbsp;
                    <asp:Button ID="btnDelete" runat="server" Text="删除" CausesValidation="False" OnClick="btnDelete_Click" />
                                <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="修改" />&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="查询" Width="39px" CausesValidation="False" /></td>
                            <td align="left" colspan="1" style="height: 38px">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="1" style="width: 1093px; height: 71px">
                    &nbsp; &nbsp; &nbsp;&nbsp;
                    <asp:GridView ID="gvYgcx" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"
                        CellPadding="3" Font-Names="华文新魏" Font-Size="Medium" 
                        OnSelectedIndexChanged="gvYgcx_SelectedIndexChanged" PageSize="2" Width="815px" OnPageIndexChanging="gvYgcx_PageIndexChanging">
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <Columns>
                            <asp:ImageField DataImageUrlField="image" HeaderText="员工照片">
                            </asp:ImageField>
                            <asp:BoundField DataField="id" HeaderText="员工编号" />
                            <asp:BoundField DataField="chname" HeaderText="姓名" />
                            <asp:BoundField DataField="working" HeaderText="工作职称" />
                            <asp:BoundField DataField="state" HeaderText="工作状态" />
                            <asp:BoundField DataField="engname" HeaderText="英文姓名" ReadOnly="True" />
                            <asp:CommandField HeaderText="选择信息" ShowSelectButton="True" SelectText="选择整行" />
                        </Columns>
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td colspan="1" style="width: 1093px" align="center">
                    &nbsp;<uc1:foot ID="Foot1" runat="server" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
