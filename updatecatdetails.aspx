<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="updatecatdetails.aspx.cs" Inherits="updatecatdetails" %>

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
        .style302
        {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 class="heading1">
                    <strong >Update Category Details</strong></h1>
    <table class="style2">
       
        <tr>
            <td class="style6">
                <strong>Category Name</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                <strong>Category Picture</strong></td>
            <td>
                <asp:Image ID="Image2" runat="server" Height="134px" Width="114px" />
                <br />
                <br />
                <strong>Choose new image, if required</strong><br />
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Update" class="btn" /> &nbsp; &nbsp;
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Back" class="btn" />
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

