<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/Admin.Master" CodeBehind="ModifyProduct.aspx.cs" Inherits="ShoppingCartOriginal.Admin.ModifyProduct" %>

<asp:Content ID="content"   ContentPlaceHolderID="c1" runat="server">
      <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
      <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

    <div class="container">
        <h3 class="jumbotron">Modify Product</h3>
        <table>
            <tr>
                <td>Product ID:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control input-sm" Width="200px"></asp:TextBox>

                </td>  
            </tr>
             <tr>
                <td>Price: </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control input-sm" Width="200px"></asp:TextBox>

                </td>  
            </tr>
               <tr>
                <td>Product Quantity: </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control input-sm" Width="200px"></asp:TextBox>

                </td>  
            </tr>
            <tr  >
              <td >
                  <asp:Button ID="Button1" runat="server" Text="Modify" CssClass="btn btn-group-lg btn-warning" Width="182px"  Height="34px" OnClick="Button1_Click" />
              </td>  
                
            </tr>
        </table>

    </div>



</asp:Content>