<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AllSubject.aspx.cs" Inherits="STUDYPOINT.AllSubject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>All Subjects</title>
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
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" HorizontalAlign="Center" Height="331px" Width="370px" OnRowCommand="GridView1_RowCommand">
            <Columns>
                <asp:TemplateField HeaderText="Subject Id">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("SUBID") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="All Subjects" >
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" Text='<%# Eval("SUB") %>' CommandArgument='<%# Eval("SUBID")%>' CommandName="subclick" OnClick="LinkButton1_Click"></asp:LinkButton>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
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
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT SUBID,SUB FROM [ALLSubTable]"></asp:SqlDataSource>



    </form>

</asp:Content>
