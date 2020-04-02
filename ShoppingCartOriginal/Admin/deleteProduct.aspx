<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/Admin.Master" CodeBehind="deleteProduct.aspx.cs" Inherits="ShoppingCartOriginal.Admin.deleteProduct" %>

<asp:Content ID="content"   ContentPlaceHolderID="c1" runat="server">
      <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
      <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


    <div >
        <h3 class="jumbotron" >Delete Product</h3>
        <table>
            <tr>
                <td>Product ID:</td>
                <td><asp:TextBox cssClass="form-control input-sm" ID="TextBox1" runat="server" ></asp:TextBox></td>
                    
              
            </tr>
            <tr>
                
                <td>
                    <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" Text="Delete" Width="162px" OnClick="Button1_Click" />

                </td>
            </tr>
        </table>
    </div>


</asp:Content>