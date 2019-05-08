<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.master" AutoEventWireup="true" CodeFile="displayproducts.aspx.cs" Inherits="displayproducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row spacing1">
            <asp:ListView ID="ListView1" runat="server" DataKeyField="productid" DataSourceID="SqlDataSource1">
                       
                       <ItemTemplate>
                                <div class="col-sm-6 col-md-3 spacing img-height"> 
                                          
                                                <asp:ImageButton ID="ImageButton1" runat="server" CssClass="img-responsive" 
                                        ImageUrl='<%# Eval("productimage", "uploads/{0}") %>' 
                                        PostBackUrl='<%# Eval("productid", "detailsp.aspx?pid={0}") %>' 
                                         />
                                         
                                       <div class="col-sm-12 bottom_link">
                                            <asp:LinkButton ID="LinkButton11" runat="server"  
                                        PostBackUrl='<%# Eval("productid", "detailsp.aspx?pid={0}") %>' 
                                        Text='<%# Eval("productname") %>' Font-Bold="True" Font-Strikeout="False" 
                                        Font-Size="Small"></asp:LinkButton>
                                       </div>
                                    <div class="col-sm-12 bottom_link1">
                                        $
                                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Small" 
                                         Text='<%# Eval("disc") %>'></asp:Label>
                                    <asp:Label ID="Label3" runat="server" Font-Strikeout="True" 
                                        Text='<%# Eval("rate") %>'></asp:Label>
                                    </div>
                                    <div class="col-sm-12 bottom_link">
                                         <asp:LinkButton ID="LinkButton12" runat="server" CommandName="item">Add to Cart</asp:LinkButton>
                                    <asp:Label ID="lblprodid" runat="server" Text='<%# Eval("productid") %>' 
                                        Visible="False"></asp:Label>
                                    </div>
                                </div>
                         </ItemTemplate>
                   </asp:ListView>
           <!----<tr>
            <td align="center">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="productid" 
                    DataSourceID="SqlDataSource1" RepeatColumns="4" width="100%" 
                    onitemcommand="DataList1_ItemCommand">
                    
                    <ItemTemplate>
                    <table align="center" cellpadding="0" cellspacing="1" width="300px">
                        <table align="center" class="style2">
                            <tr>
                                <td>
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="238px" 
                                        ImageUrl='<%# Eval("productimage", "uploads/{0}") %>' 
                                        PostBackUrl='<%# Eval("productid", "detailsp.aspx?pid={0}") %>' 
                                        Width="229px" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" class="bottom_link" >
                                    <asp:LinkButton ID="LinkButton11" runat="server"  
                                        PostBackUrl='<%# Eval("productid", "detailsp.aspx?pid={0}") %>' 
                                        Text='<%# Eval("productname") %>' Font-Bold="True" Font-Strikeout="False" 
                                        Font-Size="Small"></asp:LinkButton>
                                </td>
                            </tr>
                            <tr align="center">
                                <td class="bottom_link1">
                                    Rs.
                                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Small" 
                                         Text='<%# Eval("disc") %>'></asp:Label>
                                    <asp:Label ID="Label3" runat="server" Font-Strikeout="True" 
                                        Text='<%# Eval("rate") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr align="center">
                                <td class="bottom_link" >
                                    <asp:LinkButton ID="LinkButton12" runat="server" CommandName="item">Add to Cart</asp:LinkButton>
                                    <asp:Label ID="lblprodid" runat="server" Text='<%# Eval("productid") %>' 
                                        Visible="False"></asp:Label>
                                </td>
                            </tr>
                        </table>
                        </ItemTemplate>
                </asp:DataList>----->
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                    SelectCommand="SELECT productid, productname, catid, rate, Convert(int,round((rate - rate * discount / 100),0)) AS disc, description, productimage, discount FROM addproduct WHERE (catid = @catid)" 
                    ConflictDetection="CompareAllValues" 
                    DeleteCommand="DELETE FROM [addproduct] WHERE [productid] = @original_productid AND (([productname] = @original_productname) OR ([productname] IS NULL AND @original_productname IS NULL)) AND (([catid] = @original_catid) OR ([catid] IS NULL AND @original_catid IS NULL)) AND (([rate] = @original_rate) OR ([rate] IS NULL AND @original_rate IS NULL)) AND (([description] = @original_description) OR ([description] IS NULL AND @original_description IS NULL)) AND (([productimage] = @original_productimage) OR ([productimage] IS NULL AND @original_productimage IS NULL)) AND (([discount] = @original_discount) OR ([discount] IS NULL AND @original_discount IS NULL))" 
                    InsertCommand="INSERT INTO [addproduct] ([productname], [catid], [rate], [description], [productimage], [discount]) VALUES (@productname, @catid, @rate, @description, @productimage, @discount)" 
                    OldValuesParameterFormatString="original_{0}" 
                    
                    UpdateCommand="UPDATE [addproduct] SET [productname] = @productname, [catid] = @catid, [rate] = @rate, [description] = @description, [productimage] = @productimage, [discount] = @discount WHERE [productid] = @original_productid AND (([productname] = @original_productname) OR ([productname] IS NULL AND @original_productname IS NULL)) AND (([catid] = @original_catid) OR ([catid] IS NULL AND @original_catid IS NULL)) AND (([rate] = @original_rate) OR ([rate] IS NULL AND @original_rate IS NULL)) AND (([description] = @original_description) OR ([description] IS NULL AND @original_description IS NULL)) AND (([productimage] = @original_productimage) OR ([productimage] IS NULL AND @original_productimage IS NULL)) AND (([discount] = @original_discount) OR ([discount] IS NULL AND @original_discount IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_productid" Type="Decimal" />
                        <asp:Parameter Name="original_productname" Type="String" />
                        <asp:Parameter Name="original_catid" Type="Decimal" />
                        <asp:Parameter Name="original_rate" Type="Decimal" />
                        <asp:Parameter Name="original_description" Type="String" />
                        <asp:Parameter Name="original_productimage" Type="String" />
                        <asp:Parameter Name="original_discount" Type="Decimal" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="productname" Type="String" />
                        <asp:Parameter Name="catid" Type="Decimal" />
                        <asp:Parameter Name="rate" Type="Decimal" />
                        <asp:Parameter Name="description" Type="String" />
                        <asp:Parameter Name="productimage" Type="String" />
                        <asp:Parameter Name="discount" Type="Decimal" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:QueryStringParameter Name="catid" QueryStringField="cid" 
                            Type="Decimal" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="productname" Type="String" />
                        <asp:Parameter Name="catid" Type="Decimal" />
                        <asp:Parameter Name="rate" Type="Decimal" />
                        <asp:Parameter Name="description" Type="String" />
                        <asp:Parameter Name="productimage" Type="String" />
                        <asp:Parameter Name="discount" Type="Decimal" />
                        <asp:Parameter Name="original_productid" Type="Decimal" />
                        <asp:Parameter Name="original_productname" Type="String" />
                        <asp:Parameter Name="original_catid" Type="Decimal" />
                        <asp:Parameter Name="original_rate" Type="Decimal" />
                        <asp:Parameter Name="original_description" Type="String" />
                        <asp:Parameter Name="original_productimage" Type="String" />
                        <asp:Parameter Name="original_discount" Type="Decimal" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            <!---</td>
        </tr>---->
        </div>
    </div>
</asp:Content>

