<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="adminpanel.aspx.cs" Inherits="adminpanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style301
        {
            width: 242px
        }
        .style302
        {
            font-size: large;
        }
        ul.admin
        {
           
            padding-left:30px;
        }
         ul.admin li
        {
           
            line-height:30px;
        }
         ul.admin li::before
        {
           
            content:"\00BB";
            margin-right:10px;
        }
        ul.admin li a
        { 
           
            color:#1d1810;
            text-decoration:underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <h1 class="heading1">
                    <strong >Welcome Admin</strong></h1>
    <table width=100%>
    
        <tr>
            <td >
            <ul class="admin">
       
                <li><asp:LinkButton ID="LinkButton11" runat="server" onclick="LinkButton11_Click">Add/Update/Delete Category</asp:LinkButton></li>
            
                <li>
                        <asp:LinkButton ID="LinkButton13" runat="server" onclick="LinkButton13_Click">Add Products</asp:LinkButton> 
                </li>
            
                <li>   <asp:LinkButton ID="LinkButton18" runat="server" onclick="LinkButton18_Click">Update Product</asp:LinkButton></li>
           
               
              <li>
                <asp:LinkButton ID="LinkButton20" runat="server" onclick="LinkButton20_Click">View Orders</asp:LinkButton>
                </li>
                <li>
                    <asp:LinkButton ID="LinkButton23" runat="server" OnClick="LinkButton23_Click">View Messages</asp:LinkButton>
                </li>
                <li>
                    <asp:LinkButton ID="LinkButton21" runat="server" OnClick="LinkButton21_Click1">List of Members</asp:LinkButton>
                </li>
                <li>
                    <asp:LinkButton ID="LinkButton22" runat="server" OnClick="LinkButton22_Click">Search Member</asp:LinkButton>
                </li>
          </ul>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style306">
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

