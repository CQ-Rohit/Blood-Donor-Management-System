<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<head>
<link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style3
        {
            height: 50px;
            font-size: xx-large;
            font-family: Calibri;
        }
    .style7
    {
    }
    .style9
    {
        height: 57px;
            margin-left: 80px;
            width: 324px;
        }
    .style10
    {
        height: 47px;
            width: 324px;
        }
    .style11
    {
        height: 50px;
            width: 324px;
        }
    .style12
    {
        height: 37px;
    }
        .style15
        {
            height: 47px;
            width: 294px;
            font-size: x-large;
        }
        .style16
        {
            height: 50px;
            width: 294px;
            font-size: x-large;
        }
        .style17
        {
            height: 29px;
        }
        .style18
        {
            height: 57px;
            width: 294px;
            font-size: x-large;
        }
        
    </style>
    </head>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <table style="border-style: solid; border-width: thin; " 
    align="center" bgcolor="#81857E">
        <tr>
            <td align="center" class="style3" colspan="2" 
                
                
                
                style="background-color: #800000; color: #FFFFFF; text-decoration: underline; font-family: Algerian;" 
                width="100%">
                Login</td>
        </tr>
        <tr>
            <td align="right" class="style18" style="color: #FFFFFF;" width="100%">
                <strong>Type</strong></td>
            <td class="style9">
                <asp:DropDownList ID="ddltype" runat="server" Font-Bold="True" 
                    Font-Italic="False" Height="25px" Width="122px" CSSClass="round">
                    <asp:ListItem>Select..</asp:ListItem>
                    <asp:ListItem>Volunteer</asp:ListItem>
                    <asp:ListItem>GeneralUser</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="ddltype" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="#FFFF66" style="font-size: large">Select type</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style15" style="color: #FFFFFF;" width="100%">
                <strong>UserName</strong></td>
            <td class="style10">
                

                <asp:TextBox ID="txtusername" runat="server" BorderStyle="Inset" Height="25px" 
                    CSSClass="round" AutoCompleteType="Disabled" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtusername" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Yellow" style="font-size: large">Enter Username</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style16" style="color: #FFFFFF;" width="100%">
                <strong>Password</strong></td>
            <td class="style11">
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" 
                    BorderStyle="Inset" Height="25px" CSSClass="round"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtpassword" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="#FFFF66" style="font-size: large">Enter Password</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center" class="style12" colspan="2" width="100%">
                <asp:Button ID="btnsubmit" runat="server" Text="Login" 
                    onclick="btnsubmit_Click" BackColor="Black" Font-Bold="False" 
                    Font-Italic="False" Font-Names="Algerian" Font-Overline="False" 
                    Font-Size="Medium" ForeColor="White" Height="30px" Width="107px" 
                    BorderStyle="Groove" />
            </td>
        </tr>
        <tr>
            <td align="center" class="style17" colspan="2" width="100%">
                <asp:Label ID="lblmsg" runat="server" Font-Size="Large" ForeColor="Red" 
                    style="color: #FFFF00"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" class="style17" colspan="2" width="100%">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" class="style17" colspan="2" width="100%">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" class="style17" colspan="2" width="100%" bgcolor="#FFFF99">
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl="~/Admin/AdminLogin.aspx">Admin Login</asp:HyperLink>
            </td>
        </tr>
        </table>
</asp:Content>

