<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralUser/GeneralUserMasterPage.master" AutoEventWireup="true" CodeFile="ShowNotice.aspx.cs" Inherits="GeneralUser_ShowNotice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="10" CellSpacing="1" DataKeyNames="id" 
        DataSourceID="SqlDataSource1" ForeColor="#333333" Width="100%">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="notice" HeaderText="notice" 
                SortExpression="notice" />
            <asp:BoundField DataField="ndate" HeaderText="ndate" SortExpression="ndate" />
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
        SelectCommand="SELECT * FROM [Notice]"></asp:SqlDataSource>
</asp:Content>

