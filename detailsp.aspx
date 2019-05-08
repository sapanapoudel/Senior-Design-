<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="detailsp.aspx.cs" Inherits="detailsp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 160px;
      margin: auto;
  }
        .style1
        {
            font-size: medium;
        }
        .style2
        {
            color: #000000;
        }
        tr,td
        {vertical-align:top;}
        .heading2
        {color:#1d1810;font-size:2em;border-bottom:.5px solid #1d1810;padding-bottom:.2em;}
        h1,h2,h3,h4,h5,h6,p,span,label
        {margin:.2em 0;}
  </style>
  
  <!-- zoom -->

  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row spacing1">
              <div class="col-sm-4">
                  <asp:Image ID="Image1" runat="server" ImageUrl="img1.jpg" class="img-responsive"/> 
              </div>
              <div class="col-sm-8" style="border:1px solid #eee;background-color:#beac7c;">
                  <div class="col-sm-12">
                      <h1 class="short center heading2">
                        <strong>
                        <asp:Label ID="Label5" runat="server" ></asp:Label>
                        </strong>
                    </h1>
                  </div>
                  <div class="col-sm-12">
                      <p class="center">Rs.<span class="style2"><strong class="style1">
    </strong></span>
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" 
                ForeColor="Black"></asp:Label>
                    &nbsp;Rs. <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Medium" 
                ForeColor="Black" Font-Strikeout="True"></asp:Label>
                    &nbsp;</p>
                  </div>
                  <div class="col-sm-12">
                       <p class="center">
    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Medium" 
                ForeColor="Black" Font-Strikeout="False"></asp:Label>
                    </p>
                  </div>
                  <div class="col-sm-12">
                      <p class="center">
    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="False" 
        Font-Size="Large" ForeColor="#0000CC"></asp:Label>
                    </p>
                  </div>
                  <div class="col-sm-12">
                       <p class="center">
                        <asp:Label ID="Label3" runat="server" Font-Size="Medium" ForeColor="#1d1810" Font-Bold="true"></asp:Label>
                    </p>
                  </div>
                  <div class="col-sm-12">
                      <div id="selectboxouter">
                        <br />
                          <div class="col-sm-2">
                             Quantity 
                          </div>
                          <div class="col-sm-5"><asp:DropDownList ID="DropDownList2" runat="server" class="form-control">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                        </div>
                        <asp:Label ID="Label9" runat="server"></asp:Label>
                        </div>
                  </div>
                  <div class="col-sm-12">
                       <asp:Button ID="Button1" runat="server" CssClass="btn bg" 
        Text="Add to Cart" onclick="Button1_Click" />
                  </div>
              </div>
        </div>
   </div>
    
</asp:Content>

