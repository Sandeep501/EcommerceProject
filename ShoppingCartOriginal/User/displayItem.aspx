<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/User/User.Master" CodeBehind="displayItem.aspx.cs" Inherits="ShoppingCartOriginal.User.displayItem" %>

<asp:Content ID="content1" ContentPlaceHolderID="c1" runat="server">
  

    
    <asp:Repeater ID="d1" runat="server" OnItemCommand="d1_ItemCommand">

        <HeaderTemplate>
            <ul>
            
        </HeaderTemplate> 
        <ItemTemplate>

            <li class="last">
                <a href="productDes.aspx?id=<%#Eval("id") %>"><img src="../<%#Eval("image") %>"alt="" /></a>
                <div class="product-info">
                    <h3><%#Eval("ProductName") %></h3>
                    <div class="product-desc">
                        <h4>Available Quantity: <%#Eval("productQyt")%></h4>
                        <p><%#Eval("productDes")%></p>
                        <strong class="price">Price: <%#Eval("price") %></strong>
                    </div>

                </div>

            </li>
        </ItemTemplate>    

        <FooterTemplate>
           
            </ul>
        </FooterTemplate>  


    </asp:Repeater>
</asp:Content>
