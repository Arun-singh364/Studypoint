<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Pdf.aspx.cs" Inherits="STUDYPOINT.Pdf" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>All Pdf</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

    <form id="form1">
        <br />
        <br />
        <br />
        <br />
         <br />
        <br />
         <br />
        <br />
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" Height="228px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" Width="559px" OnRowCommand="GridView1_RowCommand" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="SUBID" HeaderText="Subject Id">
                <HeaderStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="PDFNAME" HeaderText="File Name">
                <HeaderStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" Text="View and Download" Target="_blank" NavigateUrl='<%# Eval("PDF") %>'></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
    </form>



</asp:Content>
