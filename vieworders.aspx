<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="vieworders.aspx.cs" Inherits="vieworders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 100%;
        }
        .style8
        {
            width: 158px;
        }
        .style9
        {
            width: 158px;
            font-weight: bold;
        }
        .style301
        {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <h1 class="heading1"><strong >View Orders</strong></h1>
            </div>
           
        </div>
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-10">
                <div class="row spacing">
                    <div class="col-sm-2">
                        <strong>Choose Date</strong>
                    </div>
                    <div class="col-sm-10">
                        <asp:Calendar ID="Calendar1" runat="server" Height="238px" 
                            Width="285px">
                        </asp:Calendar>
                    </div>
                </div>
                <div class="row spacing">
                    <div class="col-sm-2">
                        <strong>Orders</strong>
                    </div>
                    <div class="col-sm-10">
                        <div class="table-responsive col-sm-12">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="OrderNo" DataSourceID="SqlDataSource1" 
                    onrowupdating="GridView1_RowUpdating" Width="100%" BackColor="White" 
                    BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                    ForeColor="Black" GridLines="Horizontal" >
                    <Columns>
                        <asp:HyperLinkField DataNavigateUrlFields="orderno" 
                            DataNavigateUrlFormatString="displayorderdetails.aspx?oid={0}" 
                            DataTextField="OrderNo" HeaderText="Order No." />
                        <asp:BoundField DataField="TotalCost" HeaderText="TotalCost" 
                            SortExpression="TotalCost" />
                        <asp:BoundField DataField="ShippingAddress" HeaderText="ShippingAddress" 
                            SortExpression="ShippingAddress" />
                        <asp:BoundField DataField="PaymentMode" HeaderText="PaymentMode" 
                            SortExpression="PaymentMode" />
                        <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" 
                            SortExpression="OrderDate" />
                        <asp:TemplateField HeaderText="Status" SortExpression="Status">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem>Processing</asp:ListItem>
                                    <asp:ListItem>Order Approved</asp:ListItem>
                                    <asp:ListItem>Packing</asp:ListItem>
                                    <asp:ListItem>Shipped</asp:ListItem>
                                    <asp:ListItem>In-Transit</asp:ListItem>
                                    <asp:ListItem>Out for Delivery</asp:ListItem>
                                    <asp:ListItem>Delivered</asp:ListItem>
                                    <asp:ListItem>Cancelled</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Username" HeaderText="Username" 
                            SortExpression="Username" />
                        <asp:CommandField EditText="Update Status" HeaderText="Update" 
                            ShowEditButton="True" />
                         
                   
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
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                    DeleteCommand="DELETE FROM [ordertable] WHERE [OrderNo] = @original_OrderNo AND (([TotalCost] = @original_TotalCost) OR ([TotalCost] IS NULL AND @original_TotalCost IS NULL)) AND (([ShippingAddress] = @original_ShippingAddress) OR ([ShippingAddress] IS NULL AND @original_ShippingAddress IS NULL)) AND (([PaymentMode] = @original_PaymentMode) OR ([PaymentMode] IS NULL AND @original_PaymentMode IS NULL)) AND (([OrderDate] = @original_OrderDate) OR ([OrderDate] IS NULL AND @original_OrderDate IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL)) AND (([Username] = @original_Username) OR ([Username] IS NULL AND @original_Username IS NULL))" 
                    InsertCommand="INSERT INTO [ordertable] ([TotalCost], [ShippingAddress], [PaymentMode], [OrderDate], [Status], [Username]) VALUES (@TotalCost, @ShippingAddress, @PaymentMode, @OrderDate, @Status, @Username)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT [OrderNo], [TotalCost], [ShippingAddress], [PaymentMode], [OrderDate], [Status], [Username] FROM [ordertable] WHERE ([OrderDate] = @OrderDate)" 
                    
                    UpdateCommand="UPDATE [ordertable] SET  [Status] = @Status WHERE [OrderNo] = @original_OrderNo" 
                    onselected="SqlDataSource1_Selected">
                    <DeleteParameters>
                        <asp:Parameter Name="original_OrderNo" Type="Decimal" />
                        <asp:Parameter Name="original_TotalCost" Type="Decimal" />
                        <asp:Parameter Name="original_ShippingAddress" Type="String" />
                        <asp:Parameter Name="original_PaymentMode" Type="String" />
                        <asp:Parameter DbType="Date" Name="original_OrderDate" />
                        <asp:Parameter Name="original_Status" Type="String" />
                        <asp:Parameter Name="original_Username" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="TotalCost" Type="Decimal" />
                        <asp:Parameter Name="ShippingAddress" Type="String" />
                        <asp:Parameter Name="PaymentMode" Type="String" />
                        <asp:Parameter DbType="Date" Name="OrderDate" />
                        <asp:Parameter Name="Status" Type="String" />
                        <asp:Parameter Name="Username" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Calendar1" Name="OrderDate" 
                            PropertyName="SelectedDate" Type="DateTime" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Status" />
                        <asp:Parameter Name="original_OrderNo" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-1"></div>
        </div>
    </div>
 
</asp:Content>

