<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style7
    {
        height: 34px;
        width: 298px;
    }
    .style14
    {
            width: 330px;
        }
    .style16
    {
        width: 330px;
        height: 39px;
    }
    .style20
    {
        height: 51px;
    }
        .style22
        {
            width: 229px;
            height: 39px;
            color: #FFFFFF;
            font-size: large;
        }
        .style27
        {
            color: #FFFFFF;
            width: 229px;
            font-size: large;
        }
        .style28
        {
            height: 34px;
            width: 229px;
            color: #FFFFFF;
            font-size: large;
        }
        .style29
        {
            font-size: xx-large;
            color: #FFFFFF;
            height: 56px;
        }
        .style30
        {
            height: 37px;
            width: 330px;
        }
        </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

    0<table style="border-style: solid; border-width: thin; " 
        align="center" bgcolor="#81857E" width="40%">
    <tr>
        <td align="center" colspan="2" 
            
            style="background-color: #800000; text-decoration: underline; font-family: Algerian;" 
            class="style29">
            Registration</td>
    </tr>
    <tr>
        <td align="right" class="style22">
            Type</td>
        <td class="style16">
            <asp:DropDownList   ID="ddltype" runat="server" Height="30px" 
                style="margin-bottom: 5px" CSSClass="round" Width="50%" 
                onselectedindexchanged="ddltype_SelectedIndexChanged">
                <asp:ListItem>Select..</asp:ListItem>
                <asp:ListItem>Volunteer</asp:ListItem>
                <asp:ListItem>GeneralUser</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="RequiredFieldValidator" ControlToValidate="ddltype" 
                ForeColor="Yellow">Choose type</asp:RequiredFieldValidator>
        </td>
    </tr>
    
    <tr>
   
        <td align="right" class="style27">
            Name</td>
        <td class="style14">

           
      
            <asp:TextBox ID="txtname" runat="server" Width="50%"  CSSClass="round" 
                Height="30px" placeholder="Enter Name"></asp:TextBox>





            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtname" ErrorMessage="RequiredFieldValidator" 
                ForeColor="Yellow">Enter correct name</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="txtname" Display="Dynamic" 
                ErrorMessage="RegularExpressionValidator" ForeColor="Yellow" 
                ValidationExpression="[a-z A-Z]*">Enter Correct name</asp:RegularExpressionValidator>
        
        </td>
       
    </tr>
    <tr>
        <td align="right" class="style27">
            Mobile</td>
        <td class="style14">
            <asp:TextBox ID="txtmobile" runat="server" Width="50%" CSSClass="round" 
                Height="30px" placeholder="Enter Mobile"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtmobile" ErrorMessage="RequiredFieldValidator" 
                ForeColor="Yellow">Enter mobile number</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="right" class="style27">
            City</td>
        <td class="style14">
            <asp:TextBox ID="txtcity" runat="server" Width="50%" CSSClass="round" 
                Height="30px" placeholder="Enter City"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="txtcity" ErrorMessage="RequiredFieldValidator" 
                ForeColor="Yellow">Enter city</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="right" class="style27">
            Blood Group</td>
        <td class="style14">
            <asp:DropDownList ID="ddlbloodgroup" runat="server" Height="25px" Width="50%" 
                CssClass="round">
                <asp:ListItem>Select..</asp:ListItem>
                <asp:ListItem>A+</asp:ListItem>
                <asp:ListItem>A-</asp:ListItem>
                <asp:ListItem>B+</asp:ListItem>
                <asp:ListItem>B-</asp:ListItem>
                <asp:ListItem>AB+</asp:ListItem>
                <asp:ListItem>AB-</asp:ListItem>
                <asp:ListItem>O+</asp:ListItem>
                <asp:ListItem>O-</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="ddlbloodgroup" ErrorMessage="RequiredFieldValidator" 
                ForeColor="Yellow">Choose blood group</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="right" class="style27">
            Gender</td>
        <td align="left" class="style14">
            <asp:RadioButtonList ID="rblgender" runat="server" style="color: #FFFFFF">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="rblgender" ErrorMessage="RequiredFieldValidator" 
                ForeColor="Yellow">Choose Gender</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="right" class="style27">
            Age</td>
        <td class="style14">
            <asp:TextBox ID="txtage" runat="server" Width="50%" CssClass="round" 
                Height="30px" placeholder="Enter Age"></asp:TextBox>



            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="txtage" ErrorMessage="RequiredFieldValidator" 
                ForeColor="Yellow">Enter Age</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="right" class="style27">
            Username</td>
        <td class="style14">
            <asp:TextBox ID="txtusername" runat="server" Width="50%" CssClass="round" 
                Height="30px" placeholder="Enter Username"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ControlToValidate="txtusername" ErrorMessage="RequiredFieldValidator" 
                ForeColor="Yellow">Enter Username</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="right" class="style28">
            Password</td>
        <td class="style30">
            <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Width="50%" 
                CssClass="round" Height="30px" placeholder="Enter Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                ControlToValidate="txtpassword" ErrorMessage="RequiredFieldValidator" 
                ForeColor="Yellow">Enter Password</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="right" class="style28">
            Photo</td>
        <td class="style30">
            <asp:FileUpload ID="fuphoto" runat="server" ForeColor="Yellow" Height="30px" 
                Width="50%"  />
        </td>
    </tr>
    <tr>
        <td align="center" class="style20" colspan="2">
            <asp:Button class="w3-button w3-yellow w3-round-large" ID="btnsubmit" 
                runat="server" Text="Submit" 
                onclick="btnsubmit_Click" BackColor="#009933" Font-Bold="False" 
                Font-Size="Medium" ForeColor="White" CssClass="round" 
                style="font-size: large" />
        </td>
    </tr>
    <tr>
        <td align="center" class="style20" colspan="2">
            <asp:Label ID="lblmsg" runat="server" Font-Bold="False" Font-Size="Large" 
                ForeColor="Yellow"></asp:Label>
        </td>
    </tr>
    </table>
   
</asp:Content>

