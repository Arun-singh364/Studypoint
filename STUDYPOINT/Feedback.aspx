<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="STUDYPOINT.Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Feedback</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server" style="background-color:ButtonFace; height:100%; width:100%">
    <br /><br /><br /><br />
    <div class="container-fluid" >
        <div class="row" >
            <div class="col-md-4 col-sm-4 col-xs-12"></div>
             <div class="col-md-4 col-sm-4 col-xs-12">
                 <div class="form-container" style="background-color:azure">

               <h1>Give Feedback here...!</h1>
                         <div class="form-group ">
                <label >EMAIL:-</label><br />
     <asp:TextBox type="email" runat="server" placeholder="EMAIL" id="InputEmail" />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="InputEmail" ErrorMessage="Required field" ForeColor="Red"></asp:RequiredFieldValidator>
                             
                              </div>

            <div class="form-group">
                <label>Feedback:-</label><br />
         <asp:TextBox id="fdb" TextMode="multiline" Rows="3" placeholder="Give Feedback" runat="server" />


                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="fdb" ErrorMessage="Required field" ForeColor="Red"></asp:RequiredFieldValidator>                     
                
                 </div>

          
           <asp:Button ID="FdbSend" runat="server" CssClass="btn btn-success " style="width:60%" Text="SEND"  OnClick="FdbSend_Click"/>
         
         </div>



                 </div>
            <div class="col-md-4 col-sm-4 col-xs-12"></div>
        </div>
    </div>

</asp:Content>
