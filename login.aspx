<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style6
    {
        width: 212px;
    }
        .style301
        {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" DefaultButton="Button1">
    
    <div class="container">
       <div class="row">
           <div class="col-sm-12">
               <h1 class="heading1">Login</h1>
           </div>
           <div class="row">
               <div class="col-sm-2"></div>
               <div class="col-sm-8">
                   <div class="col-sm-4">
                        Username
                   </div>
                   <div class="col-sm-8">
                       <asp:TextBox ID="TextBox1" runat="server" Class="form-control spacing"></asp:TextBox>
                   </div>
                   <div class="col-sm-4">
                        Password
                   </div>
                   <div class="col-sm-8">
                       <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Class="form-control spacing"></asp:TextBox>
                   </div>
                    <div class="col-sm-4"></div>
                   <div class="col-sm-8">
                       <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Login" class="btn spacing" />
                      
                   </div>
                    <div class="col-sm-4"></div>
                   <div class="col-sm-8">
                        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton11_Click">Recover Password</asp:LinkButton>
                   </div>
                    <div class="col-sm-4"></div>
                    <div class="col-sm-8">
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                    </div>
            </div>
               </div>
               <div class="col-sm-2"></div>
           </div>
           
       </div>
    <!------
   
    <tr>
        <td class="style6">
            &nbsp;</td>
        <td>
            <asp:LinkButton ID="LinkButton11" runat="server" onclick="LinkButton11_Click">Recover Password</asp:LinkButton>
        </td>
    </tr>----->
</div></asp:Panel>
</asp:Content>

