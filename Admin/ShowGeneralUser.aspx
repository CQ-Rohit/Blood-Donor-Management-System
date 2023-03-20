<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ShowGeneralUser.aspx.cs" Inherits="Admin_ShowGeneralUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table style="width:100%;">
            <tr>
                <td align="center" colspan="2" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: xx-large; color: #FFFFFF">
                    Show General User</td>
            </tr>
            <tr>
                <td style="width: 322px">
                    &nbsp;</td>
                <td class="style1" style="width: 312px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 322px; color: #FFFFFF; font-size: x-large;">
                    Select BloodGroup</td>
                <td class="style1" style="width: 312px">
                    <asp:DropDownList ID="ddlBloodGroup" runat="server" Height="30px" Width="169px">
                        <asp:ListItem Selected="True">Select..</asp:ListItem>
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
                    <asp:Button ID="btnSearch" runat="server" BackColor="#336600" Font-Bold="True" 
                        Font-Size="Small" ForeColor="White" Height="30px" onclick="btnSearch_Click" 
                        Text="Search" Width="92px" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="20" CellSpacing="1" DataKeyNames="id" 
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
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>

