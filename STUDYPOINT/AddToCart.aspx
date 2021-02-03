<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AddToCart.aspx.cs" Inherits="STUDYPOINT.AddToCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Add to Cart</title>
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
    







        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/PaidCourse.aspx">Continue Buying...</asp:HyperLink>
    







        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Double" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" HorizontalAlign="Center" Height="365px" Width="749px" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowFooter="True">
            <Columns>
                <asp:BoundField DataField="srno" HeaderText="sr no." />
                <asp:BoundField DataField="PCOURSEID" HeaderText="CourseId">
                <HeaderStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="PCOURSE" HeaderText="CourseName">
                <HeaderStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="AMOUNT" HeaderText="Amount">
                <HeaderStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="TotalPrice" HeaderText="Total Price">
                <HeaderStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:CommandField DeleteText="Remove" ShowDeleteButton="True">
                <HeaderStyle HorizontalAlign="Center" />
                </asp:CommandField>
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
       


        <asp:Button ID="pay" runat="server" CssClass="btn btn-success " style="width:20%; margin-left:630px" Text="PAY" OnClick="pay_Click" />
        <br />
        <br />
        <br />
    







        </form>
</asp:Content>
