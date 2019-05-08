<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.master" AutoEventWireup="true" CodeFile="listofmembers.aspx.cs" Inherits="listofmembers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            font-size: large;
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
                <h1 class="heading1"> <strong >List of Users</strong></h1>
            </div>
        </div>
            <div class="row">
                <div class="table-responsive col-sm-12 table">
                     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="Username" DataSourceID="SqlDataSource1" Width="100%" GridLines="Horizontal" 
                    BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" ForeColor="Black">
                    <Columns>
                        <asp:ImageField DataImageUrlField="Image" 
                            DataImageUrlFormatString="uploads/{0}" HeaderText="Picture">
                            <ControlStyle Height="75px" Width="100px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Address" HeaderText="Address" 
                            SortExpression="Address" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                        <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                        <asp:BoundField DataField="Username" HeaderText="Username" ReadOnly="True" 
                            SortExpression="Username" />
                        <asp:BoundField DataField="gender" HeaderText="gender" 
                            SortExpression="gender" />
                        <asp:BoundField DataField="country" HeaderText="country" 
                            SortExpression="country" />
                        <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                    SelectCommand="SELECT [Name], [Address], [City], [State], [Phone], [Username], [Image], [gender], [country] FROM [signup] WHERE ([UserType] = @UserType)" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [signup] WHERE [Username] = @original_Username" InsertCommand="INSERT INTO [signup] ([Name], [Address], [City], [State], [Phone], [Username], [Image], [gender], [country]) VALUES (@Name, @Address, @City, @State, @Phone, @Username, @Image, @gender, @country)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [signup] SET [Name] = @Name, [Address] = @Address, [City] = @City, [State] = @State, [Phone] = @Phone, [Image] = @Image, [gender] = @gender, [country] = @country WHERE [Username] = @original_Username AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND (([Image] = @original_Image) OR ([Image] IS NULL AND @original_Image IS NULL)) AND (([gender] = @original_gender) OR ([gender] IS NULL AND @original_gender IS NULL)) AND (([country] = @original_country) OR ([country] IS NULL AND @original_country IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Username" Type="String" />
                        <asp:Parameter Name="original_Name" Type="String" />
                        <asp:Parameter Name="original_Address" Type="String" />
                        <asp:Parameter Name="original_City" Type="String" />
                        <asp:Parameter Name="original_State" Type="String" />
                        <asp:Parameter Name="original_Phone" Type="String" />
                        <asp:Parameter Name="original_Image" Type="String" />
                        <asp:Parameter Name="original_gender" Type="String" />
                        <asp:Parameter Name="original_country" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="State" Type="String" />
                        <asp:Parameter Name="Phone" Type="String" />
                        <asp:Parameter Name="Username" Type="String" />
                        <asp:Parameter Name="Image" Type="String" />
                        <asp:Parameter Name="gender" Type="String" />
                        <asp:Parameter Name="country" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Normal" Name="UserType" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="State" Type="String" />
                        <asp:Parameter Name="Phone" Type="String" />
                        <asp:Parameter Name="Image" Type="String" />
                        <asp:Parameter Name="gender" Type="String" />
                        <asp:Parameter Name="country" Type="String" />
                        <asp:Parameter Name="original_Username" Type="String" />
                        <asp:Parameter Name="original_Name" Type="String" />
                        <asp:Parameter Name="original_Address" Type="String" />
                        <asp:Parameter Name="original_City" Type="String" />
                        <asp:Parameter Name="original_State" Type="String" />
                        <asp:Parameter Name="original_Phone" Type="String" />
                        <asp:Parameter Name="original_Image" Type="String" />
                        <asp:Parameter Name="original_gender" Type="String" />
                        <asp:Parameter Name="original_country" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                </div>
            </div>
    </div>

</asp:Content>

