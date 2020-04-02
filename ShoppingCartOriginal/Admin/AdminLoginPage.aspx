<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLoginPage.aspx.cs" Inherits="ShoppingCartOriginal.Admin.AdminLoginPage" %>

<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>Admin Login</title>

      
    
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    
    
    <link rel="stylesheet" href="logincss/style.css">
   
    
  
    
  </head>

  <body>

 
<form id="f1" runat="server">

  <header style="margin:auto" >
          <h3 class="display-4" style="margin-left:40%" >Login</h3>
          </header>
  <label>Username <span>*</span></label>
  <asp:TextBox ID="t1" runat="server"></asp:TextBox>

  <label>Password <span>*</span></label>
  <asp:TextBox ID="t2"  TextMode="Password" runat="server"></asp:TextBox>
<br />
  

 <asp:Button ID="b1" runat="server"  Text="Login" OnClick="b1_Click" />
      <br />

<asp:Label ID="l1" runat="server" Text=""></asp:Label>
</form>
    
    
    
    
  </body>
</html>

