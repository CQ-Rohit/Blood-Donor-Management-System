<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralUser/GeneralUserMasterPage.master" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="GeneralUser_EditProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="border: thin solid #FFFFFF; width:100%;" align="left" 
        bgcolor="#255C0D">
    <tr>
        <td align="center" colspan="2" style="font-size: x-large; color: #FFFFFF">
            <h1 align="center" style="text-decoration: underline; font-size: xx-large;">
                Edit Profile</h1>
        </td>
    </tr>
    <tr>
        <td align="right" 
            style="height: 26px; width: 376px; color: #FFFFFF; font-size: large;">
            Name</td>
        <td style="height: 26px">
            <asp:TextBox ID="txtname" runat="server" Height="25px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="right" style="width: 376px; color: #FFFFFF; font-size: large;">
            Mobile</td>
        <td>
            <asp:TextBox ID="txtmobile" runat="server" Height="25px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="right" style="width: 376px; color: #FFFFFF; font-size: large;">
            City</td>
        <td>
            <asp:TextBox ID="txtcity" runat="server" Height="25px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="right" style="width: 376px; color: #FFFFFF; font-size: large;">
            Blood Group</td>
        <td>
            <asp:DropDownList ID="ddlbloodgroup" runat="server" Height="25px" Width="133px">
                <asp:ListItem>A+</asp:ListItem>
                <asp:ListItem>A-</asp:ListItem>
                <asp:ListItem>B+</asp:ListItem>
                <asp:ListItem>B-</asp:ListItem>
                <asp:ListItem>AB+</asp:ListItem>
                <asp:ListItem>AB-</asp:ListItem>
                <asp:ListItem>O+</asp:ListItem>
                <asp:ListItem>O-</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td align="center" style="width: 376px; color: #FFFFFF;">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="right" style="width: 376px; color: #FFFFFF; font-size: large;">
            Gender</td>
        <td>
            <asp:RadioButtonList ID="rblgender" runat="server" ForeColor="White" 
                Width="125px">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td align="right" style="width: 376px; color: #FFFFFF; font-size: large;">
            Age</td>
        <td>
            <asp:TextBox ID="txtage" runat="server" Height="25px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="right" style="width: 376px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            <asp:Button ID="btnupdate" runat="server" Text="Update" 
                onclick="btnupdate_Click" BackColor="#333300" ForeColor="White" 
                Height="30px" Width="101px" />
        </td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            <asp:Label ID="lblmsg" runat="server" Font-Size="Large" ForeColor="Yellow"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

