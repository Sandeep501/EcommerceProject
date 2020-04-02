<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="ShoppingCartOriginal.User.UserLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ShoppingCart</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style>
        body{
            background: #0f0c29;  /* fallback for old browsers */
            background: -webkit-linear-gradient(to left, #24243e, #302b63, #0f0c29);  /* Chrome 10-25, Safari 5.1-6 */
            background: linear-gradient(to left, #24243e, #302b63, #0f0c29); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */


        }
    </style>
</head>
<body>
    <div class="container " style="margin-left:33%">
        <h2 class="display-4  " style="color:white">&nbsp;User Registration Form</h2>
    </div>
    <form id="form1" runat="server" style="margin-left:30%">
        <div >
            <table>
                <tr>
                    <td><label style="color:#f6fbf6">Name: <span>*</span></label></td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="221px"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td><label style="color:#f6fbf6">Gender: <span>*</span></label></td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem Selected="True">Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                 <tr>
                    <td><label style="color:#f6fbf6">Email ID:<span>*</span></label></td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Width="221px" TextMode="Email"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td><label style="color:#f6fbf6">Contact:<span>*</span></label></td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" Width="221px"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td><label style="color:#f6fbf6">Address:<span>*</span></label></td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" Width="221px" Height="74px"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td><label style="color:#f6fbf6" >Password:<span>*</span></label></td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="221px" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox6" CssClass="alert-danger" ErrorMessage="Password doesn't match"></asp:CompareValidator>
                    </td>
                </tr>
                 <tr>
                    <td><label style="color:#f6fbf6">Confirm Password:</label></td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" Width="221px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit" cssClass="btn btn-warning" Width="373px" OnClick="Button1_Click"/>
        </div>
        <br />
        
    </form>

    <div>
        <asp:Label ID="Confirmation" runat="server" ></asp:Label>
    </div>



<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    
</body>
</html>
