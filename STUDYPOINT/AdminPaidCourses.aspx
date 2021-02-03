<%@ Page Title="" Language="C#" MasterPageFile="~/AdminHome.Master" AutoEventWireup="true" CodeBehind="AdminPaidCourses.aspx.cs" Inherits="STUDYPOINT.AdminPaidCourses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Paid Courses</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body1" runat="server">

    <form id="form1">
        <br />
        <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="#CC0066" Text="Manage Paid Courses.."></asp:Label>

        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" Height="285px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowFooter="True" style="margin-right: 0px" Width="715px" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" HorizontalAlign="Justify">
            <Columns>
                <asp:TemplateField HeaderText="Course ID">
                    <EditItemTemplate>
                        <asp:Label ID="Label6" runat="server" style="text-align: center" Text='<%# Eval("PCOURSEID") %>'></asp:Label>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("PCOURSEID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Course Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("PCOURSE") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" style="text-align: center" Text='<%# Eval("PCOURSE") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                 <asp:TemplateField HeaderText="Amount">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox8" runat="server" Text='<%# Eval("AMOUNT") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("AMOUNT") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" />
                </asp:TemplateField>




                <asp:TemplateField HeaderText="Operations">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Update">Update</asp:LinkButton>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton4" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:LinkButton ID="LinkButton5" runat="server" style="text-align: center" onclick="LinkButton5_Click" >Insert</asp:LinkButton>
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
         <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="#CC0066" Text="Manage Paid Course Subjects.."></asp:Label>
         <br />
         <br />
         <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" AutoGenerateColumns="False" ShowFooter="True" Height="313px" Width="982px" OnRowCancelingEdit="GridView2_RowCancelingEdit" OnRowDeleting="GridView2_RowDeleting" OnRowEditing="GridView2_RowEditing" OnRowUpdating="GridView2_RowUpdating" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
             <Columns>
                 <asp:TemplateField HeaderText="Subject Id">
                     <EditItemTemplate>
                         <asp:Label ID="Label13" runat="server" Text='<%# Eval("PSUBID") %>'></asp:Label>
                     </EditItemTemplate>
                     <FooterTemplate>
                         <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                     </FooterTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label12" runat="server" Text='<%# Eval("PSUBID") %>'></asp:Label>
                     </ItemTemplate>
                     <HeaderStyle HorizontalAlign="Center" />
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="Subject">
                     <EditItemTemplate>
                         <asp:TextBox ID="TextBox5" runat="server" Text='<%# Eval("PSUB") %>'></asp:TextBox>
                     </EditItemTemplate>
                     <FooterTemplate>
                         <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                     </FooterTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label9" runat="server" Text='<%# Eval("PSUB") %>'></asp:Label>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="Course Id">
                     <EditItemTemplate>
                         <asp:Label ID="Label15" runat="server" Text='<%# Eval("PCOURSEID") %>'></asp:Label>
                     </EditItemTemplate>
                     <FooterTemplate>
                         <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                     </FooterTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label14" runat="server" Text='<%# Eval("PCOURSEID") %>'></asp:Label>
                     </ItemTemplate>
                     <HeaderStyle HorizontalAlign="Center" />
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="Paid Course">
                     <EditItemTemplate>
                         <asp:TextBox ID="TextBox4" runat="server" Text='<%# Eval("PCOURSE") %>'></asp:TextBox>
                     </EditItemTemplate>
                     <FooterTemplate>
                         <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                     </FooterTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label8" runat="server" Text='<%# Eval("PCOURSE") %>'></asp:Label>
                     </ItemTemplate>
                 </asp:TemplateField>







                 <asp:TemplateField HeaderText="Operation">
                     <EditItemTemplate>
                         <asp:LinkButton ID="LinkButton8" runat="server" CommandName="Update">Update</asp:LinkButton>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:LinkButton ID="LinkButton9" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                     </EditItemTemplate>
                     <FooterTemplate>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:LinkButton ID="LinkButton10" runat="server" OnClick="LinkButton10_Click">Insert</asp:LinkButton>
                         &nbsp;
                     </FooterTemplate>
                     <ItemTemplate>
                         <asp:LinkButton ID="LinkButton6" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:LinkButton ID="LinkButton7" runat="server" CommandName="Delete">Delete</asp:LinkButton>
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
         <br />
         <asp:Label ID="Label10" runat="server"></asp:Label>
         <br />
         <br />
         <br />
         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [PaidCourseSubTable]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server"></asp:Label>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [PaidCourseTable]"></asp:SqlDataSource>
        <br />

    
   



          


        </form>
   





</asp:Content>
