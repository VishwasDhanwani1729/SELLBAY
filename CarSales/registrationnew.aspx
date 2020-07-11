<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registrationnew.aspx.cs" Inherits="CarSales.registrationnew" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 3 | Registration Page</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="../../plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="../../plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../../dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">

</head>
<body class="hold-transition register-page">
    <form id="form1" runat="server">
        <div class="register-box">
  <div class="register-logo">
    <b>Sell-Buy Used</b> Cars
  </div>

  <div class="card">
    <div class="card-body register-card-body">
      <p class="login-box-msg">Register a new membership</p>

      
        
        <div class="input-group mb-3">
         
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" ></asp:TextBox>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
        
        <div class="input-group mb-3">
          <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
            <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-8">
            <div class="icheck-primary">
              <input type="checkbox" id="agreeTerms" name="terms" value="agree">
              <label for="agreeTerms">
               I agree to the <a href="https://www.google.com">terms</a>
              </label>
            </div>
          </div>
          <!-- /.col -->
          <div class="col-4">
            
              
          </div>
          <!-- /.col -->
        </div>
      

      <p class="login-box-msg"> <asp:Label ID="Label3" runat="server" Text="Label" style="color:red;"></asp:Label>
                        </p>

     
    </div>
    <!-- /.form-box -->
  </div><!-- /.card -->
</div>
<!-- /.register-box -->

<!-- jQuery --><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register new user" class="btn btn-primary btn-block"/>
          
    <script src="../../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js"></script>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Db %>" SelectCommand="SELECT * FROM [cinfo]"></asp:SqlDataSource>
                 
    </form>
    </body>
</html>

                        

                        
                      
</html>
