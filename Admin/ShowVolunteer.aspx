<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ShowVolunteer.aspx.cs" Inherits="Admin_ShowVolunteer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td align="center" colspan="2" 
                style="height: 23px; color: #FFFFFF; font-size: xx-large; text-decoration: underline;">
                Show Volunteer</td>
        </tr>
        <tr>
            <td style="width: 373px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" 
                style="color: #FFFFFF; font-size: large; width: 373px; height: 25px;">
                Choose BloodGroup</td>
            <td style="height: 25px">
                <asp:DropDownList ID="ddlBloodGroup" runat="server" Height="25px" 
                    style="margin-top: 0px" Width="122px">
                    <asp:ListItem>Select..</asp:ListItem>
                    <asp:ListItem>A+</asp:ListItem>
                    <asp:ListItem>A-</asp:ListItem>
                    <asp:ListItem>AB+</asp:ListItem>
                    <asp:ListItem>AB-</asp:ListItem>
                    <asp:ListItem>O+</asp:ListItem>
                    <asp:ListItem>O-</asp:ListItem>
                    <asp:ListItem>B+</asp:ListItem>
                    <asp:ListItem>B-</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnButton" runat="server" BackColor="Black" Font-Bold="True" 
                    Font-Size="Medium" ForeColor="White" Height="30px" 
                    style="margin-bottom: 3px; background-color: #009900" Text="Button" 
                    Width="77px" onclick="btnButton_Click" />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2" 
                style="color: #FFFFFF; font-size: large; height: 25px;">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="10" CellSpacing="1" DataKeyNames="id" 
                    DataSourceID="SqlDataSource1" ForeColor="#333333" Width="100%" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                            ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="bloodgroup" HeaderText="bloodgroup" 
                            SortExpression="bloodgroup" />
                        <asp:CommandField ButtonType="Button" SelectText="View" 
                            ShowSelectButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:NGOConnectionString %>" 
                    SelectCommand="">
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

