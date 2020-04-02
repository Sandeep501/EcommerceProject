<%@ Page Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="addProduct.aspx.cs" Inherits="ShoppingCartOriginal.Admin.addProduct" %>

<asp:Content ID="content1" ContentPlaceHolderID="c1" runat="server">
   <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <h1>Add Product Page</h1>
    <table>
        <tr>
            <td>
                Product Name
            </td>
            <td><asp:TextBox ID="t1" runat="server" CssClass="form-control input-sm" ></asp:TextBox></td>
        </tr>
         <tr>
            <td>
                Product Description
            </td>
            <td><asp:TextBox ID="t2" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
        </tr>
         <tr>
            <td>
                Product Price
            </td>
            <td><asp:TextBox ID="t3" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
        </tr>
         <tr>
            <td>
                Product Quantity
            </td>
            <td><asp:TextBox ID="t4" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
        </tr>
         <tr>
            <td>
                Product Type
            </td>
            <td><asp:TextBox ID="t5" runat="server" CssClass="form-control input-sm"></asp:TextBox></td>
        </tr>
         <tr>
            <td>
                Product Image
            </td>
            <td><asp:FileUpload ID="f1" runat="server" CssClass="btn btn-danger" /></td>
        </tr>
         <tr>
            <td colspan="2" align="centre">
                <asp:Button ID="b1" runat="server" Text="Upload" OnClick="b1_Click" cssClass="btn btn-primary"/>
            </td>
           
        </tr>
    </table>
</asp:Content>
