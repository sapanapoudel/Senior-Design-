<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addproduct.aspx.cs" Inherits="addproduct" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit.HTMLEditor" tagprefix="cc1" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style4
        {
            height: 23px;
        }
        .style6
        {
            height: 26px;
        }
    .style8
    {
            width: 260px;
            height: 26px;
            font-family: Calibri;
            font-weight: bold;
        }
    .style9
    {
        width: 260px;
        height: 23px;
            font-weight: bold;
        }
        .style301
        {
            width: 260px
        }
        .style304
        {
            width: 260px;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <h1 class="heading1">
      Add Item<asp:ScriptManager 
            ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </h1>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-10">
                <div class="row spacing">
                    <div class="col-sm-3">
                        <strong>Product Name</strong>
                    </div>
                    <div class="col-sm-9">
                         <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="row spacing">
                    <div class="col-sm-3">
                        <strong>Choose Category</strong>
                    </div>
                    <div class="col-sm-9">
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="CatName" CssClass="form-control" DataValueField="CatID">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                            SelectCommand="SELECT [CatName], [CatID] FROM [addcat]"></asp:SqlDataSource>
                    </div>
                </div>
                <div class="row spacing">
                    <div class="col-sm-3">
                        <strong>Rate</strong>
                    </div>
                    <div class="col-sm-9">
                         <div class="col-sm-1">$.</div>
                         <div class="col-sm-11">
                             <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:FilteredTextBoxExtender ID="TextBox2_FilteredTextBoxExtender" 
                                runat="server" Enabled="True" FilterType="Numbers" TargetControlID="TextBox2">
                            </asp:FilteredTextBoxExtender>
                        </div>
                    </div>
                </div>
                <div class="row spacing">
                    <div class="col-sm-3">
                        <strong>Discount(in Percent)</strong>
                    </div>
                    <div class="col-sm-9">
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:FilteredTextBoxExtender ID="TextBox4_FilteredTextBoxExtender" 
                            runat="server" Enabled="True" FilterType="Numbers" TargetControlID="TextBox4">
                        </asp:FilteredTextBoxExtender>
                    </div>
                </div>
                <div class="row spacing">
                    <div class="col-sm-3">
                        <strong>Description</strong>
                    </div>
                    <div class="col-sm-9">
                        <div style="height:360"><cc1:Editor ID="Editor1" CssClass="form-control" runat="server" Height="350px" /></div>
                    </div>
                </div>
                <div class="row spacing">
                    <div class="col-sm-3">
                        <strong>Picture</strong>
                    </div>
                    <div class="col-sm-9">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </div>
                </div>
                <div class="row spacing">
                    <div class="col-sm-3"></div>
                    <div class="col-sm-9">
                         <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Add Product" CssClass="btn" />
                    </div>
                </div>
            </div>
            <div class="col-sm-1"></div>
        </div>
    </div>
   
</asp:Content>

