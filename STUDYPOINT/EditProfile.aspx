<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="STUDYPOINT.EditProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Edit Profile</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <form id="form1">
     <br />
    <br />
    <br />
    <br />
    <br />
   
        <div class="container-fluid" >
        <div class="row" >
            <div class="col-md-4 col-sm-4 col-xs-12"></div>
             <div class="col-md-4 col-sm-4 col-xs-12">
                 <div class="form-container" style="background-color:azure">

               <h1>Edit Your Profile...!</h1>
                         <div class="form-group ">
                <label >Old Password:-</label><br />
     <asp:TextBox type="Password" runat="server" placeholder="old password" id="InputOPassword" />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="InputOPassword" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                             
                              </div>

            <div class="form-group ">
                <label >New Password:-</label><br />
     <asp:TextBox type="Password" runat="server" placeholder="new password" id="InputNPassword" />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="InputNPassword" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                             
                              </div>
          <div class="form-group ">
                <label >Confirm Password:-</label><br />
     <asp:TextBox type="Password" runat="server" placeholder="confirm password" id="InputCPassword" />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="InputCPassword" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                             
                              </div>

           <asp:Button ID="Save" runat="server" CssClass="btn btn-success " style="width:30%" Text="SAVE"  OnClick="Save_Click"/>
                     <br />
                     <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
         </div>



                 </div>
            <div class="col-md-4 col-sm-4 col-xs-12"></div>
        </div>
    </div>



</form>

</asp:Content>
