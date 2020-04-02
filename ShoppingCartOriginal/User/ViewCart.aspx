<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCart.aspx.cs" Inherits="ShoppingCartOriginal.User.ViewCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="View Cart" OnClick="Button1_Click" Width="126px" />
            <asp:DataList ID="DataList" runat="server">
              <HeaderTemplate>
                  <table>
              </HeaderTemplate>
               <ItemTemplate>
                   
                      <tr>
                          <td><img src="<%#Eval("image")%>" height="100" width="100" /></td>
                          <td><%#Eval("productName")%></td>
                          <td><%#Eval("productDes")%></td>
                          <td><%#Eval("productQyt")%></td>
                          <td><%#Eval("price")%></td>
                      </tr>
                  
               </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:DataList>
        </div>
    </form>
</body>
</html>
