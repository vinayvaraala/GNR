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
                        <cc1:TabPanel ID="tbpnlHowToUse" runat="server" >
                    <HeaderTemplate>
                    How to use
                    </HeaderTemplate>
                    <ContentTemplate>
                        <%-- <img src="img/medical/DiaperBack.jpg" alt="" class="img-responsive">--%>
                     <div id="tab4" class="scroll-pane tabs jspScrollable img-responsive" style="padding: 0px; width: 512px;" tabindex="0">    
                        <div class="jspContainer" style="width: 512px;">
                            <div class="jspPane" style="padding: 0px; top: 0px; left: 0px; width: 512px;">
                                <div class="w100 ha left descr" id="" style="font-weight:normal;"> 
                       <ul style="list-style-type: none;">
                        <li>
                            <span style="font-size: small; font-family: tahoma,arial,helvetica,sans-serif;">
                                <strong>
                                    <span><img src="img/listbullete.png" style="margin-right: 7px;"/></span><span style="line-height: 115%; color: #333333;" lang="EN-IN">In sleeping position :</span>
                                </strong>
                            </span>
                        </li>
                        <li>
                            <span style="font-size: small; font-family: tahoma,arial,helvetica,sans-serif;"><strong><span style="line-height: 115%; color: #333333;" lang="EN-IN">
                            <img src="img/sleeping_posDiaper.jpg" alt="" width="480" height="228"><br></span></strong></span></li>
                        <li>
                            <span><img src="img/listbullete.png" style="margin-right: 7px;"/></span><span style="font-size: small; font-family: tahoma,arial,helvetica,sans-serif;"><strong><span style="line-height: 115%; color: #333333;" lang="EN-IN">In standing position :</span></strong></span></li>
                        <li><span style="font-size: small; font-family: tahoma,arial,helvetica,sans-serif;"><strong><span style="line-height: 115%; color: #333333;" lang="EN-IN">
                            <img src="img/standing_posDiaper.jpg" alt="" width="480" height="228"><br></span></strong></span></li>
                       <%-- <li><span style="font-size: small; font-family: tahoma,arial,helvetica,sans-serif;"><strong><span style="line-height: 115%; color: #333333;" lang="EN-IN">--%>
                        <%--<strong><span style="line-height: 115%;" lang="EN-IN">In standing position :</span></strong></span></strong></span></li>
                        <li><span style="font-size: small; font-family: tahoma,arial,helvetica,sans-serif;"><strong><span style="line-height: 115%; color: #333333;" lang="EN-IN"><strong><span style="line-height: 115%;" lang="EN-IN"><img src="img/sleeping_posDiaper.jpg" alt="" width="513" height="205"><br></span></strong></span></strong></span></li>--%>
                       </ul> </div>
                  <div class="clear"></div></div></div></div>                    
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
/*.fancy-green .ajax__tab_header
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
}*/
.fancy .ajax__tab_header
{
font-size: 13px;
font-weight:600;
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
         border-top-right-radius: 8px !important;
    border-top-left-radius: 8px !important;
  font-size: 12px;
  text-transform: uppercase;
  color: #fff;
}
.fancy  .ajax__tab_tab, .fancy  .ajax__tab_tab
{
     background-color: white;
  font-size: 12px;
  text-transform: uppercase;
  font-weight: 600;
  -webkit-border-radius: 0px;
  -moz-border-radius: 10px;
  -ms-border-radius: 10px;
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
#tab4
{overflow: hidden;
    padding: 0px;
    width: 512px;}
#descrhowtouse  ul li
{
    background-image: url(img/listbullete.png);
    background-repeat:no-repeat;
    background-position:left top;    
}

        </style>
</asp:Content>

