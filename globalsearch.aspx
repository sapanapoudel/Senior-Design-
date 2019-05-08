<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="globalsearch.aspx.cs" Inherits="globalsearch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row spacing1">
            <div class="col-sm-12">
                <asp:ListView ID="ListView1" runat="server" DataKeyField="productid" DataSourceID="SqlDataSource1">
                       
                       <ItemTemplate>
                         <div class="col-sm-6 col-md-3 spacing"> 
                                                <asp:ImageButton ID="ImageButton1" runat="server"  
                                        ImageUrl='<%# Eval("productimage", "uploads/{0}") %>' 
                                        PostBackUrl='<%# Eval("productid", "detailsp.aspx?pid={0}") %>' 
                                        Width="100%" Height="200px" BorderColor="#1d1810" BorderWidth="1" />
                             <div class="col-sm-12 bottom_link">
                                              <asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="True" 
                                        Font-Strikeout="False" 
                                        PostBackUrl='<%# Eval("productid", "detailsp.aspx?pid={0}") %>' 
                                        Text='<%# Eval("productname") %>' class="bottom_link" ></asp:LinkButton>
                             </div>
                             <div class="col-sm-12 bottom_link1">
                                       <strong>$. </strong>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("rate") %>' 
                                        Font-Bold="True" Font-Size="Medium" ForeColor="Black"></asp:Label>
                             </div>
                            
                          </div>
                       </ItemTemplate>
                   </asp:ListView>
                
                <asp:Label ID="Label3" runat="server"></asp:Label>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                    
                    
                    SelectCommand="SELECT addproduct.productid, addproduct.productname, addproduct.productimage, addproduct.rate FROM addcat INNER JOIN addproduct ON addcat.CatID = addproduct.catid WHERE (addproduct.productname LIKE '%' + @pname + '%') OR (addcat.CatName = @cname + '%')" 
                    onselected="SqlDataSource1_Selected">
                    <SelectParameters>
                        <asp:QueryStringParameter DefaultValue="null" Name="pname" 
                            QueryStringField="s" />
                        <asp:QueryStringParameter DefaultValue="null" Name="cname" 
                            QueryStringField="s" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>

