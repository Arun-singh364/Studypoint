<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="VdoPdf.aspx.cs" Inherits="STUDYPOINT.VdoPdf" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Pdf and Vidioes</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
    
   <div class="btn-group">
         <asp:Button ID="pdf" runat="server" CssClass="btn btn-success btn-block" Text="PDF" OnClick="pdf_Click" Height="100px" Width="150px" style="margin-left: 400px;"/>

     <asp:Button ID="vdo" runat="server" CssClass="btn btn-success btn-block" Text="Videos" OnClick="vdo_Click" style="margin-left: 250px;" Height="100px" Width="150px" />
       </div>
    <br />
    <br />
     <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" Height="228px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" Width="559px" OnRowCommand="GridView1_RowCommand" HorizontalAlign="Center" Visible="False">
            <Columns>
                <asp:BoundField DataField="SUBID" HeaderText="Subject Id">
                <HeaderStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="PDFNAME" HeaderText="File Name">
                <HeaderStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="Pdf">
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
    <br />
    
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" Height="228px"  Width="559px" HorizontalAlign="Center" Visible="False">
            <Columns>
                <asp:BoundField DataField="SUBID" HeaderText="Subject Id">
                <HeaderStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="VDONAME" HeaderText="File Name">
                <HeaderStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="Videos">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" Text="Watch and Download" Target="_blank" NavigateUrl='<%# Eval("VDO") %>'></asp:HyperLink>
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
 
       
       
 
       
       
</asp:Content>
