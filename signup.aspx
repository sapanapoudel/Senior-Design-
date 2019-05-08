<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style6
    {
        width: 163px;
    }
    .style7
    {
        width: 257px;
    }
    .style8
    {
        width: 258px;
    }
        .style9
        {
            width: 257px;
            text-align: left;
        }
        .style10
        {
            width: 163px;
            text-align: left;
        }
        .style11
        {
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h1 class="heading1" >
                <strong>SignUp</strong></h1>
    <div class="container">
 <div class="row">  
    <div class="col-sm-9">
      <div class="row spacing">
            <div class="col-sm-3 style6">
                <strong>Name</strong>
            </div>
            <div class="col-sm-7 style7">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-2 style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="* This information is required" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </div>
       </div>
        <div class="row spacing">
           <div class="col-sm-3 style6">
                <strong>Address</strong>
            </div>
            <div class="col-sm-7 style7">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-2 style8">

            </div>
        </div>
        <div class="row spacing">
             <div class="col-sm-3 style6">
                <strong>City</strong>
            </div>
            <div class="col-sm-7 style7">
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
            </div>
            <div class="col-sm-2 style8">

            </div>
        </div>
        <div class="row spacing">
            <div class="col-sm-3 style6">
                <strong>State</strong>
            </div>
            <div class="col-sm-7 style7">
                 <asp:TextBox ID="TextBox4" runat="server"  CssClass="form-control" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
            </div>
            <div class="col-sm-2 style8">

            </div>
        </div>

          <div class="row spacing">
            <div class="col-sm-3 style6">
                <strong>Country</strong>
            </div>
            <div class="col-sm-7 style7">
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                    <asp:ListItem>Choose your country</asp:ListItem>
                   
                    <asp:ListItem>USA</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-sm-2 style8">

            </div>
        </div>
        <div class="row spacing">
            <div class="col-sm-3 style6">
                <strong>Phone</strong>
            </div>
            <div class="col-sm-7 style7">
                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-2 style8">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="TextBox5" ErrorMessage="Phone number should be of 10 digits" 
                ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            </div>
        </div>
        <div class="row spacing">
            <div class="col-sm-3 style6">
                <strong>Email ID(Username)</strong>
            </div>
            <div class="col-sm-7 style7">
                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" OnTextChanged="TextBox6_TextChanged"></asp:TextBox>
            </div>
            <div class="col-sm-2 style8">
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="TextBox6" ErrorMessage="Please enter in proper format" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div>
        </div>
        <div class="row spacing">
            <div class="col-sm-3 style6">
                <strong>Password</strong>
            </div>
            <div class="col-sm-7 style7">
                 <asp:TextBox ID="TextBox7" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-2 style8">

            </div>
        </div>
        <div class="row spacing">
            <div class="col-sm-3 style6">
                <strong>Confirm Password</strong>
            </div>
            <div class="col-sm-7 style7">
                <asp:TextBox ID="TextBox8" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-2 style8">
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="TextBox7" ControlToValidate="TextBox8" 
                ErrorMessage="Password doesn't match" CssClass="form-control"></asp:CompareValidator>
            </div>
        </div>
      
       
        <div class="row spacing">
            <div class="col-sm-3 style6">
                <strong>Security Question</strong>
            </div>
            <div class="col-sm-7 style7">
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
                <asp:ListItem>What is your pet name?</asp:ListItem>
                <asp:ListItem>Who is your favourite book?</asp:ListItem>
                <asp:ListItem>What was the name of your first job?</asp:ListItem>
                <asp:ListItem>What was the make of your first vehicle?</asp:ListItem>
            </asp:DropDownList>
            </div>
            <div class="col-sm-2 style8"></div>
        </div>
        <div class="row spacing">
            <div class="col-sm-3 style6">
                <strong>Security Answer</strong>
            </div>
            <div class="col-sm-7 style7">
                <asp:TextBox ID="TextBox11" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-2 style8">

            </div>
        </div>
        <div class="row spacing">
            <div class="col-sm-3 style6"></div>
            <div class="col-sm-7 style7">
                <asp:Button ID="Button1" runat="server" Text="Sign Up" 
                onclick="Button1_Click" class="btn"  />
            </div>
            <div class="col-sm-2 style8"></div>
        </div>
        <div class="row spacing">
            <div class="col-sm-4 style6"></div>
            <div class="col-sm-8 style7">
                 <asp:Label ID="Label1" runat="server"></asp:Label>
            </div>
        </div>
        <div class="row spacing">
            <div class="col-sm-3 style6"></div>
            <div class="col-sm-7 style7">
                 <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                DisplayMode="List" ShowMessageBox="True" />
            </div>
            <div class="col-sm-2 style8"></div>
        </div>
    </div>
      
   </div>
</div>
</asp:Content>

