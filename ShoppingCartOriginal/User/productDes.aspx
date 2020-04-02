<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/User/User.Master" CodeBehind="productDes.aspx.cs" Inherits="ShoppingCartOriginal.User.productDes" %>

<asp:Content ID="content1" ContentPlaceHolderID="c1" runat="server">

    

    <asp:Repeater ID="d1" runat="server">

        <HeaderTemplate>
           
            
        </HeaderTemplate> 
        <ItemTemplate>

             <div style="height:300px; width:600px; border-style:solid; border-width:1px">
             <div style="height:300px; float:left; width:200px; border-style:solid; border-width:1px; ">
                 <img src='../<%#Eval("image") %>' height="300" width="200" alt="product image" />
             </div>
             <div style="height:300px;  width:395px; float:left; border-style:solid; border-width:1px" >
          
                 <h3> item name=<%#Eval("productName") %></h3>
                 <br />
                 <h3>Product description=<%#Eval("productDes") %></h3>
             </div>
         </div>

        </ItemTemplate>    

        <FooterTemplate>
           
         
        </FooterTemplate>  

        
    </asp:Repeater>
    <br />
    <asp:ImageButton ID="AddToCart" src="imageInterface/add-to-cart.png" runat="server" OnClick="AddToCart_Click" />

</asp:Content>
