<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.master" AutoEventWireup="true" CodeFile="recoverpass.aspx.cs" Inherits="recoverpass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     
    <div class="conatiner">
        <div class="row">
            <div class="col-sm-12">
                <h1 class="heading1">
                    <strong >Recover Password</strong></h1>
            </div>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-8">
                  <div class="row">
                     <asp:Panel ID="Panel3" runat="server">
                        <div class="col-sm-4">
                            <strong>Enter Username</strong>
                        </div>
                        <div class="col-sm-8">
                            <asp:TextBox ID="TextBox1" runat="server" class="form-control spacing"></asp:TextBox>
                        </div>
                        <div class="col-sm-4"></div>
                        <div class="col-sm-8">
                            <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" class="btn" />
                            <asp:Label ID="Label5" runat="server"></asp:Label>
                        </div>
                    </asp:Panel>
                  </div>
                  <div class="row">
                      <asp:Panel ID="Panel1" runat="server" Visible="False">
                           <div class="col-sm-4">
                                <strong>Security Question?</strong>
                            </div>
                            <div class="col-sm-8">
                                <asp:Label ID="Label2" runat="server" CssClass="form-control spacing"></asp:Label>
                            </div>
                            <div class="col-sm-4">
                                <strong>Enter your answer</strong>
                            </div>
                            <div class="col-sm-8">
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                          <div class="col-sm-4"></div>
                            <div class="col-sm-8">
                                <asp:Button ID="Button2" runat="server" Text="Submit" onclick="Button2_Click" class="btn"  />
                                <asp:Label ID="Label3" runat="server"></asp:Label>  
                            </div>
                      </asp:Panel>
                  </div>
                  <div class="row">
                       <asp:Panel ID="Panel2" runat="server" Visible="False">
                           <div class="col-sm-4">
                                <strong>New Password</strong>
                            </div>
                            <div class="col-sm-8">
                                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                            </div>
                            <div class="col-sm-4">
                                <strong>Confirm new password</strong>
                            </div>
                            <div class="col-sm-8">
                                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                            </div>
                          <div class="col-sm-4"></div>
                            <div class="col-sm-8">
                                <asp:Button ID="Button3" runat="server" Text="Submit" onclick="Button3_Click" class="btn"  />
                                <asp:Label ID="Label4" runat="server"></asp:Label>
                            </div>
                       </asp:Panel>
                  </div>
                </div>
                <div class="col-sm-2"></div>
            </div>
            <!------<td>
               
            </td>
        </div>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
               
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>------>
    </div>
</asp:Content>

