<%@ Control Language="C#" AutoEventWireup="true" CodeFile="head.ascx.cs" Inherits="userControl_syhead" %>

<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}


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
    <table>
        <tr>
            <td colspan="3" style="width: 714px; height: 91px" valign="top">
                <div style="text-align: center">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/image/guanli_01.jpg" />&nbsp;</div>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="width: 794px; height: 19px; padding-right: 0px; padding-left: 0px; background-image: url(../image/guanli_02.jpg); padding-bottom: 0px; margin: 0px; padding-top: 0px;" valign="top" align="center">
                &nbsp; &nbsp;&nbsp; &nbsp;<asp:LinkButton ID="LinkButton4" runat="server" CausesValidation="False"
                    ForeColor="White" OnClick="LinkButton4_Click">新闻维护</asp:LinkButton>
                &nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" ForeColor="White" Text="|" Width="1px"></asp:Label>&nbsp;&nbsp;<asp:LinkButton
                    ID="LinkButton2" runat="server" CausesValidation="False" ForeColor="White" OnClick="LinkButton2_Click">停车信息维护</asp:LinkButton>&nbsp;
                <asp:Label ID="Label3" runat="server" ForeColor="White" Text="|"></asp:Label>&nbsp;
                <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" ForeColor="White"
                    OnClick="LinkButton3_Click">欠费住户信息维护</asp:LinkButton>
                <asp:Label
                    ID="Label4" runat="server" ForeColor="White" Text="｜"></asp:Label>
                <asp:LinkButton ID="LinkButton5" runat="server" CausesValidation="False" ForeColor="White"
                    OnClick="LinkButton5_Click">住房维护</asp:LinkButton><asp:Label ID="Label5"
                            runat="server" ForeColor="White" Text="｜" Width="12px"></asp:Label>
                <asp:LinkButton ID="LinkButton6" runat="server" CausesValidation="False" ForeColor="White"
                    OnClick="LinkButton6_Click">设备信息维护</asp:LinkButton>
                <asp:Label
                                    ID="Label6" runat="server" ForeColor="White" Text="｜"></asp:Label>
                <asp:LinkButton ID="LinkButton7" runat="server" CausesValidation="False" ForeColor="White"
                    OnClick="LinkButton7_Click">投诉信息维护</asp:LinkButton>
                <asp:Label ID="Label8" runat="server" ForeColor="White" Text="｜" Width="1px"></asp:Label>
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" ForeColor="White"
                    OnClick="LinkButton1_Click">今天值班员工</asp:LinkButton>
                <asp:Label ID="Label7" runat="server" ForeColor="White" Text="｜" Width="10px"></asp:Label>&nbsp;
                <asp:LinkButton ID="LinkButton8" runat="server" CausesValidation="False" ForeColor="White"
                    OnClick="LinkButton8_Click">重新登录</asp:LinkButton></td>
        </tr>
        <tr>
            <td colspan="3" style="width: 794px; height: 19px; background-color: #99ccff;" valign="top" >
                &nbsp;<marquee><asp:Label id="Label1" runat="server" Font-Size="12px" Text="我们的终旨：全心全意为人民服务！！" ForeColor="red"></asp:Label></marquee></td>
        </tr>
    </table>

