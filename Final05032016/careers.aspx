<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="careers.aspx.cs" Inherits="careers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style> .careers {
  min-height: 400px;
  background: url(../img/medical/careers.jpg) no-repeat left top;
}</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
         <%--<div class="careers" data-stellar-background-ratio="0.5"></div>--%>
         <img src="img/medical/careers.jpg" width="100%" height="350" />
        <div class="divide70"></div>


        <div class="cta">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 text-center">
                        <h3>To find out about the opportunities that are right for you send your cv to careers@gnrexim.com</h3>
                    </div>
                    <!--<div class="col-md-4 text-center">
                        <a href="#" class="btn btn-white-border btn-lg">Make an appointment</a>
                    </div>-->
                </div>
            </div>
        </div>
       <div class="divide70"></div>
</asp:Content>

