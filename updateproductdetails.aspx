<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="updateproductdetails.aspx.cs" Inherits="updateproductdetails" ValidateRequest="false" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit.HTMLEditor" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 333px;
        }
        .style301
        {
            width: 333px;
            height: 19px;
        }
        .style302
        {
            height: 19px;
        }
        .style303
        {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <h1 class="heading1"><strong >Update Product Details</strong></h1>
            </div>
            <div class="col-sm-12">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-10">
                <div class="row spacing">
                    <div class="col-sm-3">
                        <strong>Choose Category</strong>
                    </div>
                    <div class="col-sm-9">
                         <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server" 
                            DataSourceID="SqlDataSource1" DataTextField="CatName" 
                            DataValueField="CatID" AutoPostBack="True" 
                            ondatabound="DropDownList2_DataBound">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                            SelectCommand="SELECT [CatName], [CatID] FROM [addcat]"></asp:SqlDataSource>
                    </div>
                </div>
                <div class="row spacing">
                    <div class="col-sm-3">
                        Product Name
                    </div>
                    <div class="col-sm-9">
                         <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row spacing">
                    <div class="col-sm-3">
                        Product Image
                    </div>
                    <div class="col-sm-9">
                        <asp:Image ID="Image2" runat="server" Height="133px" Width="121px" />
                <br />
                Choose Image,if required<br />
                <asp:FileUpload ID="FileUpload1" runat="server" />
                    </div>
                </div>
                <div class="row spacing">
                    <div class="col-sm-3">
                        Product Rate
                    </div>
                    <div class="col-sm-9">
                        <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:FilteredTextBoxExtender ID="TextBox2_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" FilterType="Numbers" TargetControlID="TextBox2">
                </asp:FilteredTextBoxExtender>
                    </div>
                </div>
                <div class="row spacing">
                    <div class="col-sm-3">
                        Description
                    </div>
                    <div class="col-sm-9">
                        <cc1:Editor ID="Editor1" CssClass="form-control" runat="server" Height="350px" />
                    </div>
                </div>
                <div class="row spacing">
                    <div class="col-sm-3"></div>
                    <div class="col-sm-9">
                         <asp:Button ID="Button1" runat="server" Text="Update" onclick="Button1_Click" class="btn" />
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Back" onclick="Button2_Click" class="btn" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-3"></div>
                    <div class="col-sm-9">
                         <asp:Label ID="Label2" runat="server"></asp:Label>
                    </div>
                </div>
            </div>
            <div class="col-sm-1"></div>
        </div>
    </div>
   
  
</asp:Content>

