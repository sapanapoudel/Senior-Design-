<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="checkout.aspx.cs" Inherits="checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            font-family: Calibri;
        }
        .style3
        {
            font-size: x-large;
        }
        .style4
        {
            font-family: Calibri;
            text-align: center;
        }
        .style5
        {
            font-size: large;
        } h1,h2,h3,h4,h5,h6,p,span,label
        {margin:.2em 0;}  td,th
        {padding:.5em .5em;}
       
       td
       {vertical-align:top;}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<div class="container">
    <div class="row">
        <div class="col-sm-12">
            <h1 class="heading1">Choose Payment Option</h1>
        </div>
    </div>
        <div class="row">
            <div class="col-sm-12">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" 
                    Height="16px" RepeatDirection="Horizontal" Width="353px" 
                    onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
                    <asp:ListItem Value="Cash on Delivery">Cash on Delivery</asp:ListItem>
                    <asp:ListItem Value="Credit Card">Credit Card</asp:ListItem>
                </asp:RadioButtonList>
            </div>
        </div>
       
        <div class="row">
            <div class="col-sm-12">
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                
                        <div class="row">
                            <div class="col-sm-4">
                                Credit Card Card Details</div>
                            <div class="col-sm-8">&nbsp;</div>
                        </div>
                        <div class="row">
                            <div class="col-sm-4">
                                &nbsp;</div>
                            <div class="col-sm-8">
                                &nbsp;</div>
                        </div>
                        <div class="row">
                            <div class="col-sm-4">
                                Holder Name</div>
                            <div class="col-sm-8">
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control spacing"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-4">
                                Card Number</div>
                            <div class="col-sm-8">
                                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control spacing"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-4">
                                Company</div>
                            <div class="col-sm-8">
                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control spacing">
                                    <asp:ListItem>Select</asp:ListItem>
                                    <asp:ListItem>VISA</asp:ListItem>
                                    <asp:ListItem>Master Card</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-4">
                                Expiry</div>
                            <div class="col-sm-8">
                                <div class="col-sm-6">
                                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control spacing">
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                        <asp:ListItem>11</asp:ListItem>
                                        <asp:ListItem>12</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col-sm-6">
                                    <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control spacing">
                                        <asp:ListItem>2015</asp:ListItem>
                                        <asp:ListItem>2016</asp:ListItem>
                                        <asp:ListItem>2017</asp:ListItem>
                                        <asp:ListItem>2018</asp:ListItem>
                                        <asp:ListItem>2019</asp:ListItem>
                                        <asp:ListItem>2020</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-4">
                                &nbsp;</div>
                            <div class="col-sm-8">
                                &nbsp;</div>
                        </div>
                   
                </asp:Panel>
            </div>
        </div>
        
        <div class="row">
            <div class="col-sm-4">
                <strong class="style5">Shipping Address</strong></div>
        
            <div class="col-sm-8">
                <asp:TextBox ID="TextBox4" runat="server" Height="109px" TextMode="MultiLine" 
                    CssClass="form-control spacing"></asp:TextBox>
            </div>

        </div>
       
        <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-8">
                <asp:Button ID="Button1" runat="server" onclick="Button2_Click" 
                    Text="Place Order" CssClass="btn"/>
            </div>
        </div>
       
    </div>
</asp:Content>

