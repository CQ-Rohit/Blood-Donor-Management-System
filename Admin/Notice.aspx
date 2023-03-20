<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Notice.aspx.cs" Inherits="Admin_Notice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table bgcolor="#781C0C" style="border: thin solid #FFFFFF; width: 100%;">
        <tr>
            <td align="center" colspan="2" 
                style="font-family: Arial, Helvetica, sans-serif; font-size: xx-large; color: #FFFFFF; text-decoration: underline;">
                Admin Notice</td>
        </tr>
        <tr>
            <td style="width: 301px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" height="50" 
                style="color: #FFFFFF; width: 301px; font-size: x-large;">
                Notice</td>
            <td align="left">
                <asp:TextBox ID="txtNotice" runat="server" Height="30px" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtNotice" ErrorMessage="Write any notice" 
                    ForeColor="Yellow"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" 
                style="color: #FFFFFF; width: 301px; font-size: x-large; height: 50px;">
                Date</td>
            <td style="height: 50px">
                <asp:TextBox ID="txtDate" runat="server" Height="30px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtDate" ErrorMessage="Choose date" ForeColor="Yellow"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 301px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="2" height="50">
                <asp:Button ID="btnSubmit" runat="server" Font-Bold="False" Font-Size="Medium" 
                    onclick="btnSubmit_Click" Text="Submit" />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2" height="50">
                <asp:Label ID="lblmsg" runat="server" Font-Size="X-Large" ForeColor="White"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

