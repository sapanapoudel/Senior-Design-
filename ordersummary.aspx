<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ordersummary.aspx.cs" Inherits="ordersummary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            font-family: Calibri;
            font-size: xx-large;
        }
    .style2
    {
        font-size: x-large;
    }
    .style3
    {
        color: #000000;
    }
        .style4
        {
            font-family: Calibri;
            font-size: large;
        }
        .style5
        {
            font-size: medium;
        }
               
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <h1 class="heading1">Your Order summary</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <p class="style4">
                    Thanks for shopping on our website. Your order number is
                    <asp:Label ID="Label3" runat="server" Font-Size="Large"></asp:Label>
                    . </p>
            </div>
            <div class="col-sm-12">
                <p class="style4">
                    Your shipping address is
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </p>
            </div>
            <div class="col-sm-12">
                <div class="table-responsive col-sm-12">
                     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CssClass="style5" Width="957px" BackColor="White" BorderColor="#CCCCCC" 
            BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
            GridLines="Horizontal">
            <Columns>
                <asp:ImageField DataImageUrlField="productpic" 
                    DataImageUrlFormatString="uploads/{0}" HeaderText="Picture">
                    <ControlStyle Height="75px" Width="100px" />
                </asp:ImageField>
                <asp:BoundField DataField="productname" HeaderText="productname" 
                    SortExpression="productname" />
                <asp:BoundField DataField="rate" HeaderText="rate" SortExpression="rate" />
                <asp:BoundField DataField="qty" HeaderText="qty" SortExpression="qty" />
                <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#1D1810" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BorderColor="#1D1810" BorderStyle="Solid" BorderWidth="1px" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
                </div>
            </div>
            <div class="col-sm-12">
                <p  align="center">
                    <span class="style2"><strong>&nbsp; <span class="style3">Your Total Amount is 
                    Rs.</span></strong></span><asp:Label ID="Label2" runat="server" 
                        Font-Bold="True" Font-Size="x-large"  ForeColor="Black"></asp:Label>
                </p>
            </div>
        </div>
    </div>
    
   

    </asp:Content>

