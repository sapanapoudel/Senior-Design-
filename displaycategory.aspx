<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.master" AutoEventWireup="true" CodeFile="displaycategory.aspx.cs" Inherits="displaycategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
     
            <div class="row">
       <div class="col-sm-12">
                <h1  class="heading1">
                    Menu</h1>
       </div>
        <div class="col-sm-12">
          <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                       
                       <ItemTemplate>
                                <div class="col-sm-6 col-md-3 spacing"> 
                                           <div class="col-sm-12 img-height">
                                                <asp:ImageButton ID="ImageButton1" runat="server"  
                                        ImageUrl='<%# Eval("CatPic", "uploads/{0}") %>' 
                                        PostBackUrl='<%# Eval("CatID", "displayproducts.aspx?cid={0}") %>' 
                                        class="img-responsive" BorderColor="#1d1810" BorderWidth="1" />
                                           </div>
                                       <div class="col-sm-12">
                                            <asp:LinkButton ID="LinkButton11" runat="server" class="bottom_link"  
                                        PostBackUrl='<%# Eval("CatID", "displayproducts.aspx?cid={0}") %>' 
                                        Text='<%# Eval("CatName") %>'></asp:LinkButton>
                                       </div>
                                </div>
                         </ItemTemplate>
                   </asp:ListView>
                
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                    SelectCommand="SELECT * FROM [addcat]"></asp:SqlDataSource>
                &nbsp;
        </div>
    </div>
       
    </div>
    
</asp:Content>

