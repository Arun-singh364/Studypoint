<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="STUDYPOINT.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
         
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:TemplateField HeaderText="Subject Id">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("SUBID") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Video Name">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("VDONAME") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("VDO") %>'  Target="_blank" NavigateUrl='<%# Eval("VDO") %>'></asp:HyperLink>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" />
                </asp:TemplateField>
            </Columns>
         </asp:GridView>


         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [SUBID], [VDONAME], [VDO] FROM [VidioTable]"></asp:SqlDataSource>


    </form>
</body>
</html>
