<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="Admin_AdminLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../StyleSheet.css" rel="stylesheet" type="text/css" />



    <title></title>
    <style type="text/css">
        .style1
        {
            width: 251px;
            color: #FFFFFF;
        }
        .style2
        {
            height: 58px;
        }
        .style3
        {
            width: 251px;
            height: 47px;
            color: #FFFFFF;
        }
        .style7
        {
            width: 361px;
            height: 47px;
        }
        .style8
        {
            width: 361px;
        }
        .style9
        {
            height: 67px;
        }
    </style>
</head>




<body>
    <form id="form1" runat="server" >
   

    
        <table align="center" bgcolor="#255C0D" 
            style="border-width: thin; border-style: solid; ">
            <tr>
                <td align="center" colspan="2" 
                    style="font-family: Algerian; font-size: xx-large; font-weight: bold; color: #FFFFFF; background-color: #800000">
                    Admin Login</td>
            </tr>
            <tr>
                <td align="right" class="style3" 
                    style="font-family: 'Baskerville Old Face'; font-size: x-large; ">
                    Username</td>
                <td class="style7">



                    <asp:TextBox  ID="txtUsername" placeholder="Username" runat="server" 
                        Height="30px" Width="149px" CssClass="round"></asp:TextBox>


                         

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtUsername" ErrorMessage="Enter correct username " 
                        ForeColor="Red" style="color: #FFFF66"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style1" 
                    style="font-family: 'Baskerville Old Face'; font-size: x-large">
                    Password</td>
                <td class="style8">
                    <asp:TextBox  class="w3-panel w3-round-xxlarge w3-teal" ID="txtPassword" 
                        runat="server" Height="30px" Width="149px" 
                        TextMode="Password" placeholder="Password
                        " CssClass="round"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtPassword" ErrorMessage="Enter correct password" 
                        ForeColor="Red" style="color: #FFFF00"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
            
                <td align="center" class="style2" colspan="2">
                    <asp:Button class="w3-btn w3-round-xxlarge" ID="btnLogin" runat="server" 
                        BackColor="#48BEC8" Font-Bold="False" Font-Italic="False" 
                        Font-Names="Book Antiqua" Font-Overline="False" Font-Size="Large" 
                        ForeColor="White" onclick="btnLogin_Click" Text="Login" 
                        Width="109px" style="font-weight: 700" />





                       
                </td>
            </tr>
            <tr>
                <td align="center" class="style9" colspan="2">
                    <asp:Label ID="lblmsg" runat="server" Font-Size="X-Large" ForeColor="Red" 
                        Height="32px" Width="276px" style="color: #FFFF00; font-size: large;"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
