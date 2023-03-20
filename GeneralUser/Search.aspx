<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralUser/GeneralUserMasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="GeneralUser_Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
    <p>
        <table style="border-style: solid; border-width: thin; width:100%;">
            <tr>
                <td align="center" colspan="2" 
                    style="font-size: xx-large; color: #FFFFFF; text-decoration: underline;">
                    Search</td>
            </tr>
            <tr>
                <td align="right" 
                    style="color: #FFFFFF; font-family: Calibri; font-size: x-large;">
                    Choose Blood Group</td>
                <td align="left" style="margin-left: 80px">
                    <asp:DropDownList ID="ddlBloodGroup" runat="server" Height="25px" Width="131px">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>A+</asp:ListItem>
                        <asp:ListItem>A-</asp:ListItem>
                        <asp:ListItem>O+</asp:ListItem>
                        <asp:ListItem>O-</asp:ListItem>
                        <asp:ListItem>B+</asp:ListItem>
                        <asp:ListItem>B-</asp:ListItem>
                        <asp:ListItem>AB+</asp:ListItem>
                        <asp:ListItem>AB-</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnSearch" runat="server" onclick="btnSearch_Click" 
                        Text="Search" BackColor="#009900" ForeColor="White" Height="25px" 
                        Width="98px" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="10" DataKeyNames="id" DataSourceID="SqlDataSource1" 
                        ForeColor="#333333" Height="192px" Width="100%" CellSpacing="2" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>


                            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                                ReadOnly="True" SortExpression="id" />
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                            <asp:BoundField DataField="mobile" HeaderText="mobile" 
                                SortExpression="mobile" />
                            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                              




                        <asp:TemplateField HeaderText="Photo">
                        <ItemTemplate>
                        <img src="../Photo/<%#Eval("Photo") %>"width="100px"height="100px">
                            <br>
                        </br>

                        </ItemTemplate>
                        </asp:TemplateField>





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
&nbsp;&nbsp;
    </p>
 
</asp:Content>

