<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="updateproduct.aspx.cs" Inherits="updateproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            font-family: Calibri;
            height: 21px;
        }
        .style301
        {
            font-size: x-large;
        }
        .style302
        {
            font-size: large;
        }
        .style303
        {
            font-family: Calibri;
            height: 21px;
            width: 232px;
        }
        .style304
        {
            font-family: Calibri;
            height: 21px;
            width: 232px;
            font-weight: bold;
        }
        h2
        {font-size:20px;}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <h1 class="heading1">
                    <strong >Already Added Products</strong></h1>
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
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" CssClass="form-control" DataTextField="CatName" DataValueField="CatID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                    SelectCommand="SELECT [CatID], [CatName] FROM [addcat]"></asp:SqlDataSource>
                    </div>
                </div>
                <div class="row spacing">
                    <div class="col-sm-12"><strong>Choose Product</strong></div>
                    <div class="col-sm-12">
                    <div class="table-responsive col-sm-12">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource3" HorizontalAlign="Left" 
                    DataKeyNames="productid" Height="245px" Width="100%" BackColor="White" 
                    BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                    ForeColor="Black" GridLines="Horizontal">
                    <Columns>
                        <asp:ImageField DataImageUrlField="productimage" 
                            DataImageUrlFormatString="uploads/{0}" HeaderText="Picture">
                            <ControlStyle Height="100px" Width="75px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="productname" HeaderText="Product " 
                            SortExpression="productname" />
                        <asp:BoundField DataField="rate" HeaderText="Rate" SortExpression="rate" />
                        <asp:CommandField 
                            DeleteImageUrl="~/imgs/trash_(delete)_16x16.gif" HeaderText="Delete" 
                            ShowDeleteButton="True">
                        <ControlStyle Height="20px" Width="25px" />
                        </asp:CommandField>
                        <asp:HyperLinkField DataNavigateUrlFields="productid" 
                            DataNavigateUrlFormatString="updateproductdetails.aspx?pid={0}" 
                            HeaderText="Update" Text="Update" />
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
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                    DeleteCommand="DELETE FROM [addproduct] WHERE [productid] = @original_productid" 
                    InsertCommand="INSERT INTO [addproduct] ([productname], [brandid], [rate], [description], [productimage]) VALUES (@productname, @brandid, @rate, @description, @productimage)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT [productid], [productname],  [rate], [description], [productimage] FROM [addproduct] WHERE ([catid] = @catid) " 
                    
                    
                    UpdateCommand="UPDATE [addproduct] SET [productname] = @productname, [brandid] = @brandid, [rate] = @rate, [description] = @description, [productimage] = @productimage WHERE [productid] = @original_productid AND (([productname] = @original_productname) OR ([productname] IS NULL AND @original_productname IS NULL)) AND (([brandid] = @original_brandid) OR ([brandid] IS NULL AND @original_brandid IS NULL)) AND (([rate] = @original_rate) OR ([rate] IS NULL AND @original_rate IS NULL)) AND (([description] = @original_description) OR ([description] IS NULL AND @original_description IS NULL)) AND (([productimage] = @original_productimage) OR ([productimage] IS NULL AND @original_productimage IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_productid" Type="Decimal" />
                        <asp:Parameter Name="original_productname" Type="String" />
                        <asp:Parameter Name="original_brandid" Type="Decimal" />
                        <asp:Parameter Name="original_rate" Type="Decimal" />
                        <asp:Parameter Name="original_description" Type="String" />
                        <asp:Parameter Name="original_productimage" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="productname" Type="String" />
                        <asp:Parameter Name="brandid" Type="Decimal" />
                        <asp:Parameter Name="rate" Type="Decimal" />
                        <asp:Parameter Name="description" Type="String" />
                        <asp:Parameter Name="productimage" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="catid" 
                            PropertyName="SelectedValue" Type="Decimal" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="productname" Type="String" />
                        <asp:Parameter Name="brandid" Type="Decimal" />
                        <asp:Parameter Name="rate" Type="Decimal" />
                        <asp:Parameter Name="description" Type="String" />
                        <asp:Parameter Name="productimage" Type="String" />
                        <asp:Parameter Name="original_productid" Type="Decimal" />
                        <asp:Parameter Name="original_productname" Type="String" />
                        <asp:Parameter Name="original_brandid" Type="Decimal" />
                        <asp:Parameter Name="original_rate" Type="Decimal" />
                        <asp:Parameter Name="original_description" Type="String" />
                        <asp:Parameter Name="original_productimage" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                    </div>
                </div>
            </div>
            <div class="col-sm-1"></div>
        </div>
    </div>
   
</asp:Content>

