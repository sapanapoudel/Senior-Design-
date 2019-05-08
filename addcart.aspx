<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addcart.aspx.cs" Inherits="addcart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style302
        {
            width: 239px;
        }
        .style303
        {
            width: 453px;
        }
        .style304
        {
            width: 239px;
            color: #000000;
        }
        .style305
        {
            color: #000000;
        }
        td,th
        {padding:.5em .5em;}
        th
       {text-align:left;} 
       td
       {vertical-align:top;}
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
    <div class="container">
    <div class="row">
        <div class="col-sm-12">
            <h1 class="heading1">
                Your Shopping Cart</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <div class="table-responsive col-sm-12">  
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="cartid" DataSourceID="SqlDataSource2" 
                    onrowdeleted="GridView1_RowDeleted" Width="100%" BackColor="White" 
                    BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                    ForeColor="Black" GridLines="Horizontal" CssClass="table">
                    <Columns>
                        <asp:ImageField DataImageUrlField="productpic" 
                            DataImageUrlFormatString="uploads/{0}" HeaderText="Picture">
                            <ControlStyle Height="100px"/>
                        </asp:ImageField>
                        <asp:BoundField DataField="productname" HeaderText="Product" 
                            SortExpression="productname" />
                        <asp:BoundField DataField="rate" HeaderText="Rate" SortExpression="rate" />
                        <asp:BoundField DataField="qty" HeaderText="Qty." SortExpression="qty" />
                        <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" />
                        <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#1d1810" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BorderStyle="Solid" BorderWidth="1" BorderColor="#3E1F00" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
          
                <div class="row" style="margin:10px 0;">
                    <div class="col-sm-3">&nbsp;</div>
                    <div class="col-sm-5">
                        <span class="style305"><strong>Total Bill :- Rs.</strong></span>
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Small" 
                ForeColor="Black"></asp:Label>
            &nbsp;<asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Black"></asp:Label>
                    </div>
                    <div class="col-sm-4">&nbsp;</div>
                </div>
                <div class="row" style="margin:10px 0;">
                    <div class="col-sm-3">&nbsp;</div>
                    <div class="col-sm-5">
            <asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="True" 
                Font-Italic="False" ForeColor="#990000" onclick="LinkButton4_Click">Continue Shopping</asp:LinkButton>
        &nbsp;<asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                Text="Check Out" CssClass="btn" />
                    </div>
                    <div class="col-sm-4">&nbsp;</div>
                </div>
           
        </div>
    </div>
</div>
        </asp:Panel>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConflictDetection="CompareAllValues" 
                ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                DeleteCommand="DELETE FROM [addcart] WHERE [cartid] = @original_cartid" 
                InsertCommand="INSERT INTO [addcart] ([productpic], [productname], [rate], [qty], [size], [color], [brand], [total], [username]) VALUES (@productpic, @productname, @rate, @qty, @size, @color, @brand, @total, @username)" 
                OldValuesParameterFormatString="original_{0}" 
                SelectCommand="SELECT cartid, productpic, productname, rate, qty, total, username FROM addcart WHERE (username = @username)" 
                
                
                
                UpdateCommand="UPDATE [addcart] SET [productpic] = @productpic, [productname] = @productname, [rate] = @rate, [qty] = @qty, [size] = @size, [color] = @color, [brand] = @brand, [total] = @total, [username] = @username WHERE [cartid] = @original_cartid AND (([productpic] = @original_productpic) OR ([productpic] IS NULL AND @original_productpic IS NULL)) AND (([productname] = @original_productname) OR ([productname] IS NULL AND @original_productname IS NULL)) AND (([rate] = @original_rate) OR ([rate] IS NULL AND @original_rate IS NULL)) AND (([qty] = @original_qty) OR ([qty] IS NULL AND @original_qty IS NULL)) AND (([size] = @original_size) OR ([size] IS NULL AND @original_size IS NULL)) AND (([color] = @original_color) OR ([color] IS NULL AND @original_color IS NULL)) AND (([brand] = @original_brand) OR ([brand] IS NULL AND @original_brand IS NULL)) AND (([total] = @original_total) OR ([total] IS NULL AND @original_total IS NULL)) AND (([username] = @original_username) OR ([username] IS NULL AND @original_username IS NULL))" OnSelected="SqlDataSource2_Selected">
                <DeleteParameters>
                    <asp:Parameter Name="original_cartid" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="productpic" Type="String" />
                    <asp:Parameter Name="productname" Type="String" />
                    <asp:Parameter Name="rate" Type="Decimal" />
                    <asp:Parameter Name="qty" Type="Decimal" />
                    <asp:Parameter Name="size" Type="String" />
                    <asp:Parameter Name="color" Type="String" />
                    <asp:Parameter Name="brand" Type="String" />
                    <asp:Parameter Name="total" Type="String" />
                    <asp:Parameter Name="username" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="username" SessionField="un" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="productpic" Type="String" />
                    <asp:Parameter Name="productname" Type="String" />
                    <asp:Parameter Name="rate" Type="Decimal" />
                    <asp:Parameter Name="qty" Type="Decimal" />
                    <asp:Parameter Name="size" Type="String" />
                    <asp:Parameter Name="color" Type="String" />
                    <asp:Parameter Name="brand" Type="String" />
                    <asp:Parameter Name="total" Type="String" />
                    <asp:Parameter Name="username" Type="String" />
                    <asp:Parameter Name="original_cartid" Type="Decimal" />
                    <asp:Parameter Name="original_productpic" Type="String" />
                    <asp:Parameter Name="original_productname" Type="String" />
                    <asp:Parameter Name="original_rate" Type="Decimal" />
                    <asp:Parameter Name="original_qty" Type="Decimal" />
                    <asp:Parameter Name="original_size" Type="String" />
                    <asp:Parameter Name="original_color" Type="String" />
                    <asp:Parameter Name="original_brand" Type="String" />
                    <asp:Parameter Name="original_total" Type="String" />
                    <asp:Parameter Name="original_username" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        <br />
    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large"></asp:Label>
</asp:Content>

