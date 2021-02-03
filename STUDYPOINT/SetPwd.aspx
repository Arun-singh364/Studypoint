<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SetPwd.aspx.cs" Inherits="STUDYPOINT.SetPwd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forget Password</title>
     <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <style>
        
     .bg{background:url('/img/10.jpg') no-repeat; width:100%;height:100vh; }
   
     .form-container{border:0px solid; padding:50px 50px; margin-top:10vh;
      -webkit-box-shadow:-1px 4px 26px 11px rgba(0,0,0,0.75);
      -moz-box-shadow:-1px 4px 26px 11px rgba(0,0,0,0.75);
      box-shadow:-1px 4px 26px 11px rgba(0,0,0,0.75);
     }
     label{
         color:white;
     }
      </style>

</head>
<body >
    
    <div class="container-fluid bg">
        <div class="row">
            <div class="col-md-4 col-sm-4 col-xs-12"></div>
             <div class="col-md-5 col-sm-4 col-xs-12">


      <form id="form1" runat="server" class="form-container">
          <h1>Set your password...!</h1>

                         <div class="form-group">
                <label for="InputEmail">EMAIL:-</label><br />
              <asp:TextBox type="email"  id="InputEmail" placeholder="EMAIL" runat="server"/>
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Display="Dynamic" runat="server" ControlToValidate="InputEmail" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="InputEmail" ErrorMessage="Required field" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                              </div>

                         <asp:Button ID="setpwd" runat="server" CssClass="btn btn-success " style="width:40%"  Text="Get Your Password" onclick="setpwd_Click" />
           

             </form>



                 </div>
            <div class="col-md-4 col-sm-4 col-xs-12"></div>
        </div>
    </div>

    

</body>
</html>
