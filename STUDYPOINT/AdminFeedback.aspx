<%@ Page Title="" Language="C#" MasterPageFile="~/AdminHome.Master" AutoEventWireup="true" CodeBehind="AdminFeedback.aspx.cs" Inherits="STUDYPOINT.AdminFeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Check Feedback</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body1" runat="server">


    <form id="form1" >
        <br />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="#CC0066" Text="Check Feedbacks:-"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="EML" DataSourceID="SqlDataSource2" GridLines="None" Height="190px" Width="483px" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="EML" HeaderText="EMAIL" ReadOnly="True" SortExpression="EML">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="FDB" HeaderText="FEEDBACK" SortExpression="FDB">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" HorizontalAlign="Center" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [FdbTable]"></asp:SqlDataSource>
        <br />
        <br />
           </form>


</asp:Content>
