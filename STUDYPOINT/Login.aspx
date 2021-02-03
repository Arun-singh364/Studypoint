<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="STUDYPOINT.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
     <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <style>
   
         label{
         color:white;
     }

     .form-container{border:0px solid; padding:50px 60px; margin-top:20vh;
      -webkit-box-shadow:-1px 4px 26px 11px rgba(0,0,0,0.75);
      -moz-box-shadow:-1px 4px 26px 11px rgba(0,0,0,0.75);
      box-shadow:-1px 4px 26px 11px rgba(0,0,0,0.75);
     }
      </style>




</head>
<body style="background-image:url(img/16.jpg); background-position:center; background-repeat:no-repeat; height:100%; width:100%; background-size:cover"">
    <div class="container-fluid ">
        <div class="row">
            <div class="col-md-4 col-sm-4 col-xs-12"></div>
             <div class="col-md-4 col-sm-4 col-xs-12">


      <form id="form1" runat="server" class="form-container">
          <h1 style="color: #FFFFFF; font-style: italic; font-size: xx-large; text-decoration: underline;">Login here...!</h1>

         <div>  
            <asp:RadioButton ID="RadioButton1" runat="server" Text="USER" GroupName="user"/>  
            <asp:RadioButton ID="RadioButton2" runat="server" Text="ADMIN" GroupName="user" />  
        </div>  
                         <div class="form-group">
                <label for="InputEmail">EMAIL:-</label><br />
    <asp:TextBox   runat="server" Type="email" class="form control" id="InputEmail" placeholder="EMAIL" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="InputEmail" ErrorMessage="Required field" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div>

            <div class="form-group">
                <label for="InputPwd">PASSWORD:-</label><br />
    <asp:TextBox runat="server" type="password" class="form control" id="InputPwd" placeholder="PASSWORD" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="InputPwd" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>     
                 </div>

          <div class="checkbox">
              <label>
                  <input type="checkbox" />Remember me
              </label>
              <u><i><a href="SetPwd.aspx" style="margin-left:12px">Forgot your password</a></i></u>
          </div>
          
         <asp:Button ID="login_user" runat="server" CssClass="btn btn-success btn-block" Text="LOGIN" OnClick="login_user_Click" />
          <br />
         <u><i><a href="Register.aspx" >New user? Register</a></i></u>
          
           </form>



                 </div>
            <div class="col-md-4 col-sm-4 col-xs-12"></div>
        </div>
    </div>

</body>
</html>

