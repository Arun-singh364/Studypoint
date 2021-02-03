<%@ Page Title="" Language="C#" MasterPageFile="~/AdminHome.Master" AutoEventWireup="true" CodeBehind="AdminUploadPdf.aspx.cs" Inherits="STUDYPOINT.AdminUploadPdf" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Upload PDF</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body1" runat="server">
    <form id="form1">
    <br />
    <br />
    <br />
   
        <div class="container-fluid" >
        <div class="row" >
            <div class="col-md-4 col-sm-4 col-xs-12"></div>
             <div class="col-md-4 col-sm-4 col-xs-12">
                 <div class="form-container" style="background-color:azure">

               <h1>Upload PDF...!</h1>
                         <div class="form-group ">
                <label >Subject ID:-</label><br />
     <asp:TextBox  runat="server" placeholder="Subject Id" id="subid" />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="subid" ErrorMessage="Required field" ForeColor="Red"></asp:RequiredFieldValidator>
                             
                              </div>

                      <div class="form-group ">
                <label >File Name:-</label><br />
     <asp:TextBox  runat="server" placeholder="file name" id="fname" />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="fname" ErrorMessage="Required field" ForeColor="Red"></asp:RequiredFieldValidator>
                             
                              </div>


            <div class="form-group">
                <label>Upload PDF:-</label><br />
                <asp:FileUpload ID="uploadpdf" runat="server" /><br />
                <asp:Label ID="Label1" runat="server" ForeColor="#FF5050"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="uploadpdf" ErrorMessage="Required field" ForeColor="Red"></asp:RequiredFieldValidator>                     
                
                 </div>

          
           <asp:Button ID="Upload" runat="server" CssClass="btn btn-success " style="width:30%" Text="Upload" onclick="Upload_Click"></asp:Button>
                     <br />
                     <asp:Label ID="Label2" runat="server" ForeColor="#FF5050"></asp:Label>
         
         </div>



                 </div>
            <div class="col-md-4 col-sm-4 col-xs-12">
                </div>
        </div>
    
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="#CC0066" Text="Manage Pdf:-"></asp:Label>
            <br />
    
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="168px" Width="396px" OnRowDeleting="GridView1_RowDeleting" HorizontalAlign="Center">
                    <Columns>
                        <asp:TemplateField HeaderText="Subject Id">
                            <ItemTemplate>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("SUBID") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Pdf Id">
                            <ItemTemplate>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("PDFID") %>'></asp:Label>
                                &nbsp;
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Pdf Name">
                            <ItemTemplate>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("PDFNAME") %>'></asp:Label>
                                &nbsp;
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Pdf">
                            <ItemTemplate>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("PDF") %>'></asp:Label>
                                &nbsp;
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Operations">
                            <ItemTemplate>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="delete">Remove</asp:LinkButton>
                                &nbsp;
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [PdfTable]"></asp:SqlDataSource>
                <br />
                <br />
            


</form>
</asp:Content>
