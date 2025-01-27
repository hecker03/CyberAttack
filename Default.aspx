<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 391px;
        }
        .style2
        {
            width: 131px;
        }
        .style3
        {
            width: 79px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="style1" style="border: thin solid #008080">
            <tr>
                <td colspan="3" 
                    style="text-align: center; font-weight: 700; border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #008080; background-color: blue">
                    User Login Area</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    UserName :</td>
                <td class="style2">
                    <asp:TextBox ID="txtusername" runat="server" Width="120px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Password :</td>
                <td class="style2">
                    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Width="120px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2">
                    <asp:Button ID="btnlogin" runat="server" onclick="btnlogin_Click" 
                        Text="Login" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td colspan="2">
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
