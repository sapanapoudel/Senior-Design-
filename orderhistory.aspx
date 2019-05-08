<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="orderhistory.aspx.cs" Inherits="orderhistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <h1 class="heading1">Order History</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <div class="table-responsive col-sm-12">
                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="OrderNo" DataSourceID="SqlDataSource1" Width="100%" GridLines="Horizontal" 
                    BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" ForeColor="Black" CssClass="table">
                <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="orderno" 
                        DataNavigateUrlFormatString="orderdetails.aspx?oid={0}" DataTextField="OrderNo" 
                        HeaderText="Order No" />
                    <asp:BoundField DataField="ShippingAddress" HeaderText="ShippingAddress" 
                        SortExpression="ShippingAddress" />
                    <asp:BoundField DataField="TotalCost" HeaderText="TotalCost" 
                        SortExpression="TotalCost" />
                    <asp:BoundField DataField="Status" HeaderText="Status" 
                        SortExpression="Status" />
                    <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" 
                        SortExpression="OrderDate" DataFormatString="{0:d}" />
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
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                onselected="SqlDataSource1_Selected" 
                SelectCommand="SELECT [OrderNo], [ShippingAddress], [TotalCost], [Status], [OrderDate] FROM [ordertable] WHERE ([Username] = @Username)">
                <SelectParameters>
                    <asp:SessionParameter Name="Username" SessionField="un" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            </div>
            </div>
        </div>
   
</div>
</asp:Content>

