<%@ Page Title="" Language="C#" MasterPageFile="~/Volunteer/VolunteerMasterPage.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="Volunteer_ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" bgcolor="#285704" style="border: thin solid #FFFFFF;">
    <tr>
        <td align="center" colspan="2" 
            style="color: #FFFFFF; text-decoration: underline; font-size: xx-large;">
            Change Password</td>
    </tr>
    <tr>
        <td style="width: 294px">
            &nbsp;</td>
        <td style="width: 335px">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="right" style="color: #FFFFFF; width: 294px; font-size: large;">
            Old Password</td>
        <td style="width: 335px">
            <asp:TextBox ID="txtoldpassword" runat="server" Height="25px" placeholder="Enter old password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtoldpassword" ErrorMessage="RequiredFieldValidator" 
                Font-Size="Medium" ForeColor="Red">Enter old password</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 294px">
            &nbsp;</td>
        <td style="width: 335px">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="right" style="color: #FFFFFF; width: 294px; font-size: large;">
            New Password</td>
        <td style="width: 335px">
            <asp:TextBox ID="txtnewpassword" runat="server" Height="25px" placeholder="Enter new password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtnewpassword" ErrorMessage="RequiredFieldValidator" 
                Font-Size="Medium" ForeColor="Red">Enter new password</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 294px">
            &nbsp;</td>
        <td style="width: 335px">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="right" style="color: #FFFFFF; width: 294px; font-size: large;">
            Confirm New Password</td>
        <td style="width: 335px">
            <asp:TextBox ID="txtconfirmnewpassword" runat="server" Height="25px" placeholder="Confirm new password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtconfirmnewpassword" ErrorMessage="RequiredFieldValidator" 
                Font-Size="Medium" ForeColor="Red">Enter confirm password</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 294px">
            &nbsp;</td>
        <td style="width: 335px">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center" colspan="2" style="height: 45px">
            <asp:Button ID="btnsubmit" runat="server" Text="Submit" 
                onclick="Button1_Click" BackColor="#009900" BorderStyle="Groove" 
                Font-Bold="False" Font-Size="Medium" Font-Strikeout="False" 
                Font-Underline="False" ForeColor="White" Height="33px" 
                style="margin-bottom: 8px" Width="174px" />
        </td>
    </tr>
    <tr>
        <td align="center" colspan="2" style="height: 32px">
            <asp:Label ID="lblmsg" runat="server" Font-Size="Large" ForeColor="Yellow"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

