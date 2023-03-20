<%@ Page Title="" Language="C#" MasterPageFile="~/Volunteer/VolunteerMasterPage.master" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="Volunteer_EditProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="border: thin solid #FFFFFF;" bgcolor="#285704" width="100%">
    <tr>
        <td align="center" colspan="2" style="font-size: x-large; color: #FFFFFF">
            <h1 align="center" style="text-decoration: underline">Edit Profile</h1></td>
    </tr>
    <tr>
        <td align="right" 
            style="height: 26px; width: 383px; color: #FFFFFF; font-size: large;">
            Name</td>
        <td style="height: 26px">
            <asp:TextBox ID="txtname" runat="server" Height="25px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="right" style="width: 383px; color: #FFFFFF; font-size: large;">
            Mobile</td>
        <td>
            <asp:TextBox ID="txtmobile" runat="server" Height="25px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="right" style="width: 383px; color: #FFFFFF; font-size: large;">
            City</td>
        <td>
            <asp:TextBox ID="txtcity" runat="server" Height="25px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="right" style="width: 383px; color: #FFFFFF; font-size: large;">
            Blood Group</td>
        <td>
            <asp:DropDownList ID="ddlbloodgroup" runat="server" Height="20px" Width="128px">
                <asp:ListItem>A-</asp:ListItem>
                <asp:ListItem>A+</asp:ListItem>
                <asp:ListItem>B-</asp:ListItem>
                <asp:ListItem>B+</asp:ListItem>
                <asp:ListItem>AB-</asp:ListItem>
                <asp:ListItem>AB+</asp:ListItem>
                <asp:ListItem>O-</asp:ListItem>
                <asp:ListItem>O+</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td align="right" style="width: 383px; color: #FFFFFF; font-size: large;">
            Gender</td>
        <td>
            <asp:RadioButtonList ID="rblgender" runat="server" ForeColor="White" 
                Width="120px">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td align="right" style="width: 383px; color: #FFFFFF; font-size: large;">
            Age</td>
        <td>
            <asp:TextBox ID="txtage" runat="server" Height="25px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="right" style="width: 383px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center" colspan="2" style="height: 34px">
            <asp:Button ID="btnupdate" runat="server" Text="Update" 
                onclick="btnupdate_Click" BackColor="#00CC00" Font-Bold="True" 
                Font-Size="Medium" ForeColor="White" Height="31px" Width="114px" />
        </td>
    </tr>
    <tr>
        <td align="center" colspan="2" style="height: 36px">
            <asp:Label ID="lblmsg" runat="server" Font-Size="Large" ForeColor="#FFFF66" 
                style="font-size: x-large"></asp:Label>
        </td>
    </tr>
    </table>
</asp:Content>

