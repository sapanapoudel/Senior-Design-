<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.master" AutoEventWireup="true" CodeFile="error.aspx.cs" Inherits="error" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row spacing1">
            <div class="col-sm-12">
                Please login to access the page. Click
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/login.aspx">here</asp:HyperLink>
&nbsp;to login.</div>
        </div>
    </div>
</asp:Content>

