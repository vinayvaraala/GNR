<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div id="map-canvas" style="width:100%; height: 400px;"></div>
        <!--g map end-->
        <div class="divide70"></div>

     <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="contact-form-col">
                        <h3>Keep in touch with us</h3>
                        <form name="sentMessage" id="contactForm" method="post" novalidate>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="row control-group">
                                        <div class="form-group col-xs-12 controls">  
                                            <asp:TextBox ID="txtName" runat="server" placeholder="Name" class="form-control" ClientIDMode="Static"></asp:TextBox>                                      
                                            <%--<input type="text" class="form-control" placeholder="Name" id="name" required data-validation-required-message="Please enter your name.">--%>
                                            <p class="help-block"></p>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="row control-group">
                                        <div class="form-group col-xs-12 controls">                                          
                                            <asp:TextBox ID="txtEmail" runat="server" placeholder="Email Address" class="form-control" ClientIDMode="Static"></asp:TextBox>                                      
                                            <%--<input type="email" class="form-control" placeholder="Email Address" id="email" required data-validation-required-message="Please enter your email address.">--%>
                                            <p class="help-block"></p>
                                        </div>
                                    </div> 
                                </div>
                            </div>
                            <div class="row control-group">
                                <div class="form-group col-xs-12  controls">                                  
                                    <asp:TextBox ID="txtPhoneNumber" runat="server" placeholder="Phone Number" class="form-control" ClientIDMode="Static"></asp:TextBox>                                      
                                    <%--<input type="tel" class="form-control" placeholder="Phone Number" id="phone" required data-validation-required-message="Please enter your phone number.">--%>
                                    <p class="help-block"></p>
                                </div>
                            </div>
                            <div class="row control-group">
                                <div class="form-group col-xs-12 controls">   
                                    <asp:TextBox TextMode="MultiLine"  class="form-control" placeholder="Message" id="txtMsg" runat="server" ></asp:TextBox>                               
                                    <%--<textarea rows="5" class="form-control" placeholder="Message" id="message" required data-validation-required-message="Please enter a message."></textarea>--%>
                                    <p class="help-block"></p>
                                </div>
                            </div>

                            <div id="success"></div>
                            <div class="row">
                                <div class="form-group col-xs-12">
                                    <asp:Button ID="btnSubmit" class="btn btn-theme-bg btn-lg" Text="Send Message" runat="server" OnClick="btnSubmit_Click" ClientIDMode="Static" />
                                    <%--<button type="submit" class="btn btn-theme-bg btn-lg">Send Message</button>--%>
                                </div>
                            </div>
                        </form>
                    </div>
                </div><!--form col end-->
                <div class="col-md-4">
                    <div class="contact-info">
                        <div class="media">
                            <div class="media-left">
                                <i class="pe-7s-home"></i>
                            </div>
                            <div class="media-body">
                                <p>GNR PHARMA PRIVATE LIMITED,<br>
                                    #2-85/1/P-133, SY No. 412/AA,<br>
                                    Raganna guda, Hayathnagar (M),<br> RR Dist,
                                    Hyderabad � 501510, INDIA</p>
                            </div>
                        </div><!--media-->
                         <div class="media">
                            <div class="media-left">
                                <i class="pe-7s-mail"></i>
                            </div>
                            <div class="media-body">
                                <p>info@gnrexim.com ;pharma@gnrexim.com </br> online@gnrexim.com</p>
                            </div>
                        </div><!--media-->
                           <div class="media">
                            <div class="media-left">
                                <i class="pe-7s-call"></i>
                            </div>
                            <div class="media-body">
                                <p>+91-949-155-2999, +91-833-281-1217</p>
                            </div>
                        </div><!--media-->
                        <div class="divide30"></div>
                        <div class="socials-colored">
                            <a target="_blank" href="https://www.facebook.com/gnrpharmapvtltd/" class="social-icon si-dark si-colored-facebook">
                                <i class="fa fa-facebook"></i>
                                <i class="fa fa-facebook"></i>
                            </a>
                            <a target="_blank" href="https://twitter.com/GNRPHARMA" class="social-icon si-dark si-colored-twitter">
                                <i class="fa fa-twitter"></i>
                                <i class="fa fa-twitter"></i>
                            </a>
                           <a href="#" class="social-icon si-dark si-colored-linkedin">
                                <i class="fa fa-linkedin"></i>
                                <i class="fa fa-linkedin"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
     <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=true"></script>
        <script type="text/javascript">
            var myLatlng;
            var map;
            var marker;

            function initialize() {
                myLatlng = new google.maps.LatLng(17.2607657, 78.5902143);

                var mapOptions = {
                    zoom: 13,
                    center: myLatlng,
                    mapTypeId: google.maps.MapTypeId.ROADMAP,
                    scrollwheel: false,
                    draggable: true
                };
                map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);

                var contentString = '<p style="line-height: 20px; margin-bottom:4px;"><strong style="font-size:20px;text-transform:uppercase;">GNR Pharma Private Ltd</strong></p><p style=" margin-bottom:4px;">Raganna guda, Hayathnagar ,RR Dist, Hyderabad , 501510</p>';

                var infowindow = new google.maps.InfoWindow({
                    content: contentString
                });

                marker = new google.maps.Marker({
                    position: myLatlng,
                    map: map,
                    title: 'Marker'
                });

                google.maps.event.addListener(marker, 'click', function () {
                    infowindow.open(map, marker);
                });
            }

            google.maps.event.addDomListener(window, 'load', initialize);
        </script>

</asp:Content>

