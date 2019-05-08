<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="displayorderdetails.aspx.cs" Inherits="displayorderdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 100%;
        }
        .style301
        {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h1 class="heading1">
                    <strong >Order Details</strong></h1>
    <table align="center" class="style7">
        <tr>
            <td>
&nbsp;
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" Width="100%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" 
                    BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" RowStyle-BorderStyle="Solid">
                    <Columns>
                        <asp:ImageField DataImageUrlField="productpic" 
                            DataImageUrlFormatString="uploads/{0}" HeaderText="Product Picture">
                            <ControlStyle Height="100px" Width="75px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="productname" HeaderText="Name" 
                            SortExpression="productname" />
                        <asp:BoundField DataField="rate" HeaderText="Rate" SortExpression="rate" />
                        <asp:BoundField DataField="qty" HeaderText="Quantity" SortExpression="qty" />
                        <asp:BoundField DataField="total" HeaderText="Total" SortExpression="total" />
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
                    ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                    
                    
                    
                    SelectCommand="SELECT productpic,productname,rate, qty,total, username from addcart1 WHERE (orderno = @orderno)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="orderno" QueryStringField="oid" 
                            Type="Decimal" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

