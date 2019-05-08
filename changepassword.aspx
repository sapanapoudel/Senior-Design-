<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.master" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="changepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style6
    {
        width: 272px;
    }
        .style301
        {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row" style="height:300px">
            <div class="col-sm-12">
                <h1 class="heading1">
                <strong >Change Password</strong></h1>
            </div>
            <div class="row">
                <div class="col-sm-4 col-sm-offset-1">
                    <strong>Current Password</strong>
                </div>
                <div class="col-sm-6">
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Password" CssClass="form-control spacing"></asp:TextBox>
                </div>
            </div>
          <div class="row">
               
                <div class="col-sm-4 col-sm-offset-1">
                    <strong>New Password</strong>
                </div>
                <div class="col-sm-6">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="form-control spacing"></asp:TextBox>
                </div>
            </div>
            <div class="row">
               
                <div class="col-sm-4 col-sm-offset-1">
                    <strong>Confirm New Password</strong>
                </div>
                <div class="col-sm-6">
                     <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" CssClass="form-control spacing"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-5"></div>
                <div class="col-sm-6">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                Text="Change Password" class="btn" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4"></div>
                <div class="col-sm-8">
                     <asp:Label ID="Label2" runat="server"></asp:Label>
                </div>
            </div>
        </div>
    </div>
  
</asp:Content>

