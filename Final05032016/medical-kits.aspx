﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="medical-kits.aspx.cs" Inherits="medical_kits" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style> .medicalkit {
  min-height: 400px;
   max-width: 100%;
  background: url(../img/medical/p-5.jpg) no-repeat left top;
} </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <%--  <div class="medicalkit" data-stellar-background-ratio="0.5"></div>--%>
        <img src="img/medical/p-5.jpg" width="100%" height="350" />
        
    
        <div class="divide70"></div>
      <div class="">
        <div class="container">
            <div class="headdings blog-head">
                <h3 class="pageheading" id="heading" runat="server">Medical Kits</h3>
            </div>
            <asp:Literal ID="ltProducts" runat="server"></asp:Literal>
        </div>
    </div>
    <div class="divide70"> </div>
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
</asp:Content>

