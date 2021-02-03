<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AllCourse.aspx.cs" Inherits="STUDYPOINT.AllCourse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>All Courses</title>
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
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" HorizontalAlign="Center" Height="203px" Width="381px" OnRowDataBound="GridView1_RowDataBound" OnRowCommand="GridView1_RowCommand">
            <Columns>
                <asp:TemplateField HeaderText="Course Id">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("COURSEID") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="All Courses" >
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" Text='<%# Eval("COURSE") %>' OnClick="LinkButton1_Click" CommandName="courseclick" CommandArgument='<%# Eval("COURSEID")%>'></asp:LinkButton>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT COURSEID,COURSE FROM [AllCourseTable]"></asp:SqlDataSource>



    </form>

</asp:Content>
