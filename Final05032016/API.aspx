<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="API.aspx.cs" Inherits="API" %>

<asp:Content ID="conent1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--<div class="api" data-stellar-background-ratio="0.5"></div>--%>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <img src="img/medical/p-1.jpg" width="100%" height="350" />
    <div class="divide20"></div>
    <div class="headdings bolg-head">
    </div>
     <div class="">
        <div class="container">
            <div class="blog-head">
                <h3 class="pageheading">Active Pharmaceutical Ingredient</h3>
            </div>
            <div id="hacker-list">               
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
            <%--   <input class="form-control search service-box" runat="server" id="lblProduct"   style="width:100%; text-align: left;" placeholder="Search Product"/>--%>
                            <div>
               <asp:TextBox class="form-control search service-box" id="txtProduct"   style="width:91%;text-align: left;" placeholder="Search Product" runat="server"></asp:TextBox>
               <asp:Button class='btn btn-theme-bg' ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" />
                                </div>
               
                <marquee>
                This is a scrolling test message
               </marquee>

               
                <asp:GridView ID="grdProducts" runat="server" AutoGenerateColumns="False" CellPadding="20" CellSpacing="40" ForeColor="#333333" GridLines="Horizontal" 
                   Visible="true" ShowHeaderWhenEmpty="true" ShowHeader="false"  AllowPaging="true" PageSize="6"
                    style="width:100%;" PagerSettings-PageButtonCount="5" PagerStyle-CssClass="pagingStyle" PagerStyle-HorizontalAlign="Right"
                    PagerStyle-ForeColor="Black" OnPageIndexChanging="grdProducts_PageIndexChanging"  >
                    <Columns>
                        <%--<asp:BoundField DataField="ProductName" HeaderText="Products" ReadOnly="True" ControlStyle-CssClass="col-lg-10"/>--%>
                        <asp:TemplateField HeaderText="Product" ControlStyle-CssClass="col-lg-2">
                            <ItemTemplate>
                                <asp:Label ID="lblProduct" runat="server" Text='<%# Bind("ProductName") %>'  style='vertical-align:top;width:100%; padding: 10px 10px 10px 10px; margin-bottom: 5px; margin-top:5px;margin-right:5px;'></asp:Label>                               
                            </ItemTemplate>
                        </asp:TemplateField> 
                        <asp:TemplateField HeaderText="Quote" ControlStyle-CssClass="col-lg-2">
                            <ItemTemplate>
                                <button  class='btn btn-theme-bg' type='button'   style='float: right; vertical-align:top; padding: 10px 10px 10px 10px; margin-bottom: 10px; margin-top:10px;margin-right:10px;' onclick='PopulateValue("<%# Eval("ProductName") %>");'>Get Quote</button>
                            </ItemTemplate>
                        </asp:TemplateField>                      
                    </Columns>
                    <EmptyDataTemplate>No products available</EmptyDataTemplate>
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
         <PagerStyle  ForeColor="Black" HorizontalAlign="Right" CssClass="pagingStyle"  />
                </asp:GridView>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                <asp:Literal ID="ltProducts" runat="server" Visible="false"></asp:Literal>
            </div>
        </div>
    </div>
   
       <div class="divide70"></div>
     <div class="courier">
        <div class="courier-title">
            <i class="fa fa-truck"></i>
            <h2>our <strong>Courier Partners</strong></h2>
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2 text-center">
                    <div class="testi-slides">
                        <ul class="slides">
                            <li>
                                <img src="img/medical/amazon.png" alt="" />
                            </li>
                            <li>
                                <img src="img/medical/flipkart.png" alt="" />
                            </li>

                            <li>
                                <img src="img/medical/snapdeal.png" alt="" />
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
     <script type="text/javascript">
         var options = {
             valueNames: ['name']
         };

         var hackerList = new List('hacker-list', options);
    </script>
    <!--testimonials end-->
    <style>
.pagingStyle td 
{
    padding-left: 4px;
	padding-right: 4px;
	padding-top: 1px;
	padding-bottom: 2px;
    border-color:white;
}
.pagingStyle span { background-color:#32c5d2; font-size:18px;} 
.pagingStyle 
{
    border-left-color:white !important;
    border-right-color:white !important;
}
.pagingStyle table
{
    border:1px solid white;
    border-color:white;
}
#ContentPlaceHolder1_grdProducts tr
{
    border:1px solid #32c5d2;
}

#ContentPlaceHolder1_txtProduct {
    display : -webkit-inline-box !important;
}
#ContentPlaceHolder1_btnSearch{
    margin-left: 10px;
    margin-bottom: 4px
}

    </style>
</asp:Content>

