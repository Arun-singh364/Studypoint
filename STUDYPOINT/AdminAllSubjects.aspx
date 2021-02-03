<%@ Page Title="" Language="C#" MasterPageFile="~/AdminHome.Master" AutoEventWireup="true" CodeBehind="AdminAllSubjects.aspx.cs" Inherits="STUDYPOINT.AdminAllCourses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Manage Course</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body1" runat="server">

    <form id="form1">
        <br />
        <br />
        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="#CC0066" Text="Manage Subjects.."></asp:Label>

        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" Height="285px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowFooter="True" style="margin-right: 0px" Width="715px" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" HorizontalAlign="Justify">
            <Columns>
                <asp:TemplateField HeaderText="Sub ID">
                    <EditItemTemplate>
                        <asp:Label ID="Label6" runat="server" style="text-align: center" Text='<%# Eval("SUBID") %>'></asp:Label>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("SUBID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Sub Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("SUB") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" style="text-align: center" Text='<%# Eval("SUB") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Operations">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Update">Update</asp:LinkButton>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton4" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:LinkButton ID="LinkButton5" runat="server" style="text-align: center" OnClick="LinkButton5_Click">Insert</asp:LinkButton>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Delete">Delete</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" Wrap="True" />
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
        <br />
        <asp:Label ID="Label7" runat="server"></asp:Label>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ALLSubTable]"></asp:SqlDataSource>
        <br />

        </form>
        </asp:Content>
