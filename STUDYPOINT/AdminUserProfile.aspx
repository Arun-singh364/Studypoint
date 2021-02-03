<%@ Page Title="" Language="C#" MasterPageFile="~/AdminHome.Master" AutoEventWireup="true" CodeBehind="AdminUserProfile.aspx.cs" Inherits="STUDYPOINT.AdminUserProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>User Profiles</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body1" runat="server"> 
    <form id="form1">

        <br />
        <asp:Label ID="Label3" runat="server" Text="Users Profile:-" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="#CC0066"></asp:Label>

        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" Height="211px" Width="361px" AutoGenerateColumns="False" DataKeyNames="EML" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="EML" HeaderText="EML" ReadOnly="True" SortExpression="EML" />
                <asp:BoundField DataField="UNAME" HeaderText="UNAME" SortExpression="UNAME" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
               <br />   
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" OnSelecting="SqlDataSource1_Selecting" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [EML], [UNAME] FROM [RegTable]"></asp:SqlDataSource>
        <br />
                <asp:Label ID="Label4" runat="server" Text="Paid Users Profile:-" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="#CC0066"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="EMLID" DataSourceID="SqlDataSource2" Height="254px" OnRowDataBound="GridView2_RowDataBound" Width="368px" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="EMLID" HeaderText="EMLID" ReadOnly="True" SortExpression="EMLID" />
                <asp:BoundField DataField="UNAME" HeaderText="UNAME" SortExpression="UNAME" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [PaidUserTable]"></asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />







    </form>



</asp:Content>
