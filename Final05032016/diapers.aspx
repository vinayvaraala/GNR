<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="diapers.aspx.cs" Inherits="diapers" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .diapers {
            min-height: 400px;
            max-width: 100%;
            background: url(../img/medical/p-7.jpg) no-repeat left top;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <%--    <div class="diapers" data-stellar-background-ratio="0.5"></div>--%>
    <img src="img/medical/p-7.jpg" width="100%" height="350" />

    <div class="">
        <div class="container">
            <div class="headdings blog-head">
                <h3 class="pageheading" id="heading" runat="server">Diapers</h3>
            </div>
            <asp:Literal ID="ltProducts" runat="server"></asp:Literal>
        </div>
    </div>
    <div class="divide70"></div>
    <div class="container">
           <div class="row">
            <div class="col-md-6 margin30">
                <div class="blog-post">
                    <div>
                        <img id="imgDiaper" src="img/medical/small/image1.png" data-zoom-image="img/medical/large/image1.jpg" style="width:100%;height:90%;"/>
                    </div>
                   <%-- <img src="img/medical/BabyDiaper1.jpg" alt="" class="img-responsive">--%>
                </div>
            </div>
            <!--post column end-->

            <div class="col-md-6 margin30">
                <div class="blog-post">
                  <%--  <img src="img/medical/BabyDiaper2.jpg" alt="" class="img-responsive">--%>
                  <cc1:TabContainer ID="TabContainer1" runat="server"  CssClass="fancy fancy-green">
                    <cc1:TabPanel ID="tbpnlFeatures" runat="server">
                    <HeaderTemplate>
                    Features
                    </HeaderTemplate>
                    <ContentTemplate>
                         <img src="img/medical/DiaperFront.jpg" alt="" class="img-responsive" height="30">
                    </ContentTemplate>
                    </cc1:TabPanel>
                      <cc1:TabPanel ID="tbpnlBenefits" runat="server" >
                    <HeaderTemplate>
                    Benefits
                    </HeaderTemplate>
                    <ContentTemplate>
                          <img src="img/medical/DiaperBack.jpg" alt="" class="img-responsive">
                    </ContentTemplate>
                    </cc1:TabPanel>
                   </cc1:TabContainer>
                </div>
            </div>
            <!--post column end-->

        </div>

        <div class="row">
            <div class="col-md-6 margin30">
                <div class="blog-post">
                   <%-- <img src="img/medical/DiaperFront.jpg" alt="" class="img-responsive">--%>
                </div>
            </div>
            <!--post column end-->

            <div class="col-md-6 margin30">
                <div class="blog-post">
                  <%--  <img src="img/medical/DiaperBack.jpg" alt="" class="img-responsive">--%>
                </div>
            </div>
            <!--post column end-->

        </div>

    </div>

    <div class="divide40"></div>


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
    <style>
.fancy-green .ajax__tab_header
{
background: url(green_bg_Tab.gif) repeat-x;
cursor:pointer;
}
.fancy-green .ajax__tab_hover .ajax__tab_outer, .fancy-green .ajax__tab_active .ajax__tab_outer
{
background: url(green_left_Tab.gif) no-repeat left top;
}
.fancy-green .ajax__tab_hover .ajax__tab_inner, .fancy-green .ajax__tab_active .ajax__tab_inner
{
background: url(green_right_Tab.gif) no-repeat right top;
}
.fancy .ajax__tab_header
{
font-size: 13px;
font-weight: bold;
color: #000;
font-family: sans-serif;
}
.fancy .ajax__tab_active .ajax__tab_outer, .fancy .ajax__tab_header .ajax__tab_outer, .fancy .ajax__tab_hover .ajax__tab_outer
{
height: 46px;
}
.fancy .ajax__tab_active .ajax__tab_inner, .fancy .ajax__tab_header .ajax__tab_inner, .fancy .ajax__tab_hover .ajax__tab_inner
{
height: 46px;
 /* offset the width of the left image */
}
.fancy .ajax__tab_active .ajax__tab_tab, .fancy .ajax__tab_hover .ajax__tab_tab, .fancy .ajax__tab_header .ajax__tab_tab
{
margin: 0px 16px 0px 0px;
}
.fancy  .ajax__tab_tab, .fancy .ajax__tab_active .ajax__tab_tab
{
     background-color: #32c5d2;
  font-size: 16px;
  text-transform: uppercase;
  font-weight: 400;
  -webkit-border-radius: 0px;
  -moz-border-radius: 0px;
  -ms-border-radius: 0px;
  border-radius: 0px;
  color: #fff;
  padding-left:8px;
  padding-right:8px;
}
.fancy  .ajax__tab_tab, .fancy  .ajax__tab_tab
{
     background-color: white;
  font-size: 16px;
  text-transform: uppercase;
  font-weight: 400;
  -webkit-border-radius: 0px;
  -moz-border-radius: 0px;
  -ms-border-radius: 0px;
  border-radius: 0px;
  color:#32c5d2;
  padding-left:8px;
  padding-right:8px;
}

.fancy .ajax__tab_body
{
font-family: Arial;
font-size: 10pt;
border-top: 0;
border:1px solid #32c5d2;
padding: 8px;
background-color: #ffffff;
margin-top:-4%;
}
        </style>
</asp:Content>

