<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralUser/GeneralUserMasterPage.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="GeneralUser_ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" bgcolor="#255C0D" 
        style="border: thin solid #FFFFFF; height: 404px; width: 101%">
    <tr>
        <td align="center" colspan="2" 
            style="color: #FFFFFF; text-decoration: underline; font-size: xx-large;" 
            width="50%">
            <strong>Change Password</strong></td>
    </tr>
    <tr>
        <td style="height: 23px;">
            </td>
        <td style="height: 23px">
            </td>
    </tr>
    <tr>
        <td align="right" style="color: #FFFFFF; font-size: large; height: 41px;">
            Old Password</td>
        <td style="height: 41px">
            <asp:TextBox ID="txtoldpassword" runat="server" Height="25px" 
                style="margin-left: 0px" placeholder="Enter old password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtoldpassword" ErrorMessage="RequiredFieldValidator" 
                ForeColor="#FFFF66">Enter old password</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="height: 24px;" align="right">
            </td>
        <td style="height: 24px">
            </td>
    </tr>
    <tr>
        <td align="right" style="color: #FFFFFF; font-size: large; height: 33px;">
            New Password</td>
        <td style="height: 33px">
            <asp:TextBox ID="txtnewpassword" runat="server" Height="25px" placeholder="Enter new password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtnewpassword" ErrorMessage="RequiredFieldValidator" 
                ForeColor="Yellow">Enter new password</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="height: 21px;" align="right">
            </td>
        <td style="height: 21px">
            </td>
    </tr>
    <tr>
        <td align="right" style="color: #FFFFFF; font-size: large; height: 42px;">
            Confirm New Password</td>
        <td style="height: 42px">
            <asp:TextBox ID="txtconfirmnewpassword" runat="server" Height="25px" placeholder="confirm new password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtconfirmnewpassword" ErrorMessage="RequiredFieldValidator" 
                ForeColor="Yellow">Enter confirm password</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="height: 19px;">
            </td>
        <td style="height: 19px">
            </td>
    </tr>
    <tr>
        <td align="center" colspan="2" style="height: 30px" width="50%">
            <asp:Button ID="btnsubmit" runat="server" Text="Submit" 
                onclick="btnsubmit_Click" BackColor="#333300" Font-Bold="False" 
                Font-Size="Medium" ForeColor="White" Height="31px" Width="101px" 
                CssClass="round" />
        </td>
    </tr>
    <tr>
        <td align="center" colspan="2" style="height: 30px" width="50%">
            <asp:Label ID="lblmsg" runat="server" Font-Size="Large" ForeColor="Yellow"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

