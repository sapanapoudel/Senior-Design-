<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addcat.aspx.cs" Inherits="addcat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 194px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                 <h1 class="heading1">Add Category</h1>
            </div>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                  <div class="row spacing">
                            <div class="col-sm-3">
                            <strong>Category Name</strong>
                        </div>
                        <div class="col-sm-9">
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                        </div> 
                    </div>
                    <div class="row spacing">
                        <div class="col-sm-3">
                            <strong>Category Picture</strong>
                        </div>
                        <div class="col-sm-9">
                            <asp:FileUpload ID="FileUpload1" runat="server"  />
                        </div>
                    </div>
                    <div class="row spacing">
                        <div class="col-sm-3"></div>
                        <div class="col-sm-9">
                            <asp:Button ID="Button1" runat="server" Text="Add Category" 
                        onclick="Button1_Click1" CssClass="btn" />
                        </div>
                    </div>
                    <div class="row spacing">
                        <div class="col-sm-12">
                           <h1><strong>Already added categories</strong></h1>
                        </div>
                    </div>
                    
                </div>
                <div class="col-sm-1"></div>
                <div class="col-sm-12">
                   
                            <div class="table-responsive col-sm-12">
                                <asp:GridView ID="GridView1" CssClass="table" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" DataKeyNames="CatID" 
                    DataSourceID="SqlDataSource1" PageSize="5" 
                     BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" 
                    BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" RowStyle-BorderStyle="Solid">
                    <Columns>
                        <asp:ImageField DataImageUrlField="CatPic" 
                            DataImageUrlFormatString="uploads/{0}" HeaderText="Picture">
                            <ControlStyle Height="100px" Width="75px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="CatName" HeaderText="CatName" 
                            SortExpression="CatName" />
                        <asp:CommandField ButtonType="Image" 
                            DeleteImageUrl="~/imgs/trash_(delete)_16x16.gif" HeaderText="Delete" 
                            ShowDeleteButton="True" />
                        <asp:HyperLinkField DataNavigateUrlFields="catid" 
                            DataNavigateUrlFormatString="updatecatdetails.aspx?cid={0}" HeaderText="Update" 
                            Text="Update" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#1d1810" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />

<RowStyle BorderStyle="Solid" BorderColor="#1D1810" BorderWidth="1px"></RowStyle>

                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White"  />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                    DeleteCommand="DELETE FROM [addcat] WHERE [CatID] = @original_CatID" 
                    InsertCommand="INSERT INTO [addcat] ([CatName], [CatPic]) VALUES (@CatName, @CatPic)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [addcat]" 
                    UpdateCommand="UPDATE [addcat] SET [CatName] = @CatName, [CatPic] = @CatPic WHERE [CatID] = @original_CatID AND (([CatName] = @original_CatName) OR ([CatName] IS NULL AND @original_CatName IS NULL)) AND (([CatPic] = @original_CatPic) OR ([CatPic] IS NULL AND @original_CatPic IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_CatID" Type="Decimal" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="CatName" Type="String" />
                        <asp:Parameter Name="CatPic" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="CatName" Type="String" />
                        <asp:Parameter Name="CatPic" Type="String" />
                        <asp:Parameter Name="original_CatID" Type="Decimal" />
                        <asp:Parameter Name="original_CatName" Type="String" />
                        <asp:Parameter Name="original_CatPic" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                            </div>
                        
                    </div>
            </div>
            
        </div>
    </div>
   
</asp:Content>

