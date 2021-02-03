<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="STUDYPOINT.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
     <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <style>
        
     
     .form-container{border:0px solid; padding:50px 50px; margin-top:10vh;
      -webkit-box-shadow:-1px 4px 26px 11px rgba(0,0,0,0.75);
      -moz-box-shadow:-1px 4px 26px 11px rgba(0,0,0,0.75);
      box-shadow:-1px 4px 26px 11px rgba(0,0,0,0.75);
     }
     label{
         color:black;
     }
      </style>




</head>
<body>
    <div class="container-fluid ">
        <div class="row">
            <div class="col-md-4 col-sm-4 col-xs-12"></div>
             <div class="col-md-5 col-sm-4 col-xs-12">


      <form id="form1" runat="server" class="form-container">
          <h1> Register here...!</h1>
         
           <div class="form-group">
                <label for="InputName">USERNAME:-</label><br />
    <asp:TextBox type="text"  id="InputName" placeholder="USERNAME" runat="server" />
                
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="InputName" ErrorMessage="Required feild" ForeColor="Red"></asp:RequiredFieldValidator>
                       
                      </div>

                         <div class="form-group">
                <label for="InputEmail">EMAIL:-</label><br />
              <asp:TextBox type="email"  id="InputEmail" placeholder="EMAIL" runat="server"/>
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Display="Dynamic" runat="server" ControlToValidate="InputEmail" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="InputEmail" ErrorMessage="Required field" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                              </div>

          <div class="form-group">
                  <asp:Button ID="SendOtp" runat="server" CssClass="btn btn-info "   Text="SEND OTP" onclick="SendOtp_Click"/><br />  <br />                 
                <label for="InputEmail">Verify EMAIL:-</label><br />
              <asp:TextBox type="text"  id="InputOtp" placeholder="Write OTP" runat="server"/>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="InputOtp" ErrorMessage="Required field" ForeColor="Red"></asp:RequiredFieldValidator>
                              </div>
          
           


            <div class="form-group">
                <label for="InputPwd">PASSWORD:-</label><br />
    <asp:TextBox type="password"  id="InputPwd" placeholder="PASSWORD" runat="server" />
             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="InputPwd" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
             
                      </div><br />
          
          <asp:Button ID="register_user" runat="server" CssClass="btn btn-success " style="width:60%" OnClick="register_user_Click" Text="REGISTER" />
          <br />
          
           </form>



                 </div>
            <div class="col-md-4 col-sm-4 col-xs-12"></div>
        </div>
    </div>

</body>
</html>
