<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zhibanyuangong.aspx.cs" Inherits="zhibanyuangong" %>

<%@ Register Src="userControl/syhead.ascx" TagName="syhead" TagPrefix="uc1" %>


<%@ Register Src="userControl/foot.ascx" TagName="foot" TagPrefix="uc2" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>^_^  小区物业内部管理网-------值班员工信息  ^_^</title>
<script language="javascript" type="text/javascript">
<!--


// -->
</script>
</head>
<body background="image/index_03.jpg">
    <form id="form1" runat="server">
    <div>
        <div align="center">
            <div align="center">
                &nbsp;</div>
        </div>
    
    </div>
                <table id="TABLE2" language="javascript"  border="1" align="center" style="margin-top: 0px; padding-top: 0px">
                    <tr>
                        <td colspan="3" style="width: 741px" valign="top">
                            &nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <uc1:syhead ID="Syhead1" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 741px; background-color: #99ccff; height: 23px;" valign="top" align="center">
                           <marquee></marquee></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 741px; height: 25px" valign="top" align="center">
                            </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 741px; height: 25px" valign="top" align="center">
                            <asp:Table ID="Table1" runat="server">
                            </asp:Table>
                        &nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="width: 741px; height: 140px" valign="top">
                            &nbsp;
                            <uc2:foot ID="Foot1" runat="server" />
                        </td>
                    </tr>
                </table>
    </form>
</body>
</html>
