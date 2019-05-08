<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 500px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <h1 class="heading1">Search Members</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-10">
                <div class="row spacing">
                    <div class="col-sm-3">
                        <strong>Enter Name</strong>
                    </div>
                    <div class="col-sm-9">
                         <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="row spacing">
                    <div class="col-sm-3"></div>
                    <div class="col-sm-9">
                         <asp:Button ID="Button1" runat="server" Text="Search"  class="btn"/>
                    </div>
                </div>
            </div>
            <div class="col-sm-1"></div>
            <div class="col-sm-12 spacing">
                <div class="table-responsive col-sm-12">
                    <asp:GridView ID="GridView1" CssClass="table" runat="server" BackColor="White" 
                    BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                    ForeColor="Black" GridLines="Horizontal" AutoGenerateColumns="False" DataKeyNames="Username" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                        <asp:BoundField DataField="country" HeaderText="country" SortExpression="country" />
                        <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                        <asp:BoundField DataField="Username" HeaderText="Username" ReadOnly="True" SortExpression="Username" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" OnSelected="SqlDataSource1_Selected" SelectCommand="SELECT [Name], [Address], [City], [State], [country], [Phone], [Username] FROM [signup] WHERE (([Name] LIKE '%' + @Name + '%') AND ([UserType] = @UserType))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="Name" PropertyName="Text" Type="String" />
                        <asp:Parameter DefaultValue="Normal" Name="UserType" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
    
  
</asp:Content>

