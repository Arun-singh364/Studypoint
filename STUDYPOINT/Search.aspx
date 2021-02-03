<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="STUDYPOINT.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Search</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <br /><br /><br /><br /><br /><br /><br /><br />
<form id="form">
 <div class="container" style="margin-left:520px">
     <asp:Label ID="Label1" runat="server" Text="Search By:" Font-Bold="True" Font-Italic="True" ForeColor="#FF5050"></asp:Label>
      <asp:RadioButton ID="RadioButton1" runat="server" Text="Course" GroupName="Search"/>  
            <asp:RadioButton ID="RadioButton2" runat="server" Text="Subject" GroupName="Search" />  <br />
       
     <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="210px"></asp:TextBox>
  <asp:button runat="server" CssClass="btn btn-primary" Text="Search" OnClick="Unnamed1_Click"
  ></asp:button>
     </div>

    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" Visible="False" BackColor="Blue" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" Height="219px" HorizontalAlign="Center" Width="262px">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">View</asp:LinkButton>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        <SelectedRowStyle   BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#594B9C" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#33276A" />
       

    </asp:GridView>


    <br />


    <br />
    <br />
    

    
    </form>

    <br />


</asp:Content>
