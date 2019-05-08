<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact us.aspx.cs" Inherits="css_contact_us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        strong
        {font-weight:bolder;}
        h2
        {font-size:1.3em;font-weight:bolder;}
        .style302
        {
            height: 51px;
            width: 225px;
        }
        .style303
        {
            width: 492px;
        }
        .style304
        {
            height: 51px;
            width: 492px;
        }
        .style305
        {
            width: 225px;
        }
        .auto-style1 {
            
            font-weight: bold;
        }
        .auto-style2 {
            height: 51px;
            width: 225px;
            font-weight: bold;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <h1 class="heading1"> Contact Us</h1>
            </div>
            <div class="row spacing">
                <div class="col-sm-4 text-center">
                   <span class="auto-style1">Name</span>
                </div>
                <div class="col-sm-8">
                    <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="row spacing">
                <div class="col-sm-4 text-center">
                   <span class="auto-style1">Email</span>
                </div>
                <div class="col-sm-8">
                    <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="row spacing">
                <div class="col-sm-4 text-center">
                   <span class="auto-style1">Phone no</span>
                </div>
                <div class="col-sm-8">
                    <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="row spacing">
                <div class="col-sm-4 text-center">
                   <span class="auto-style1">Message</span>
                </div>
                <div class="col-sm-8">
                    <asp:TextBox ID="TextBox4" runat="server" Rows="8" TextMode="MultiLine" class="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="row spacing">
                <div class="col-sm-4">&nbsp;</div>
                <div class="col-sm-8">
                    <asp:Button ID="Button1" runat="server" Text="Submit" class="btn" OnClick="Button1_Click"/>
                </div>
            </div>
        </div>
            <div class="row">
                
                
                <h2>
                    Customer care</h2><br />
                <p>
                    Want to know about order status or queries related to a product give us a call 
                    or drop a line<br />
                    
                    <strong>Phone number: ............................ Email: care@delicioushotel.com (Timings: 8 AM - 10 PM)</strong></p>
                <p>
                    &nbsp;</p>
                <h2>
                    DeliciousHotel Complaint Resolution</h2><br />
                <p>
                    Our issue resolution process is designed to encourage the fast and efficient 
                    resolution of your issue at the first point of contact. While we always aim to 
                    provide you with awesome customer service, we recognize that you may wish to 
                    express dissatisfaction with our products, services, staff or policies.</p>
                <p>
                    Please follow the steps below to raise and escalate your concern. In the event 
                    that you require assistance with making a complaint, our management at each 
                    stage of the process will be more than happy to assist.</p>
            </div>
       
    </div>
</asp:Content>

