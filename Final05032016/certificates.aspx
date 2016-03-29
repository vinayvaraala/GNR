<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="certificates.aspx.cs" Inherits="certificates" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style> .certificates {
  min-height: 400px;
  background: url(../img/medical/certificates.jpg) no-repeat left top;
}</style>
    <script type="text/javascript">
if (document.layers) {
    //Capture the MouseDown event.
    document.captureEvents(Event.MOUSEDOWN);
 
    //Disable the OnMouseDown event handler.
    document.onmousedown = function () {
        return false;
    };
}
else {
    //Disable the OnMouseUp event handler.
    document.onmouseup = function (e) {
        if (e != null && e.type == "mouseup") {
            //Check the Mouse Button which is clicked.
            if (e.which == 2 || e.which == 3) {
                //If the Button is middle or right then disable.
                return false;
            }
        }
    };
}
 
//Disable the Context Menu event.
document.oncontextmenu = function () {
    return false;
};
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <%--   <div class="certificates" data-stellar-background-ratio="0.5"></div>--%>
          <img src="img/medical/certificates.jpg" width="100%" height="350" />
        <div class="divide70"></div>
          <div class="container">
            <div class="row">
                <div class="col-sm-6 col-md-3 margin20 ">
                    <div class="gallery">
                        <img src="img/medical/sm-1.jpg" alt="gallery-img" class="img-responsive">
                        <div class="gallery-overlay">
                            <p><a href="img/medical/sm-1.jpg" class="show-image"><i class="pe-7s-plus"></i></a></p>
                        </div>
                    </div>
                </div><!--col-->
                <div class="col-sm-6 col-md-3 margin20 ">
                    <div class="gallery">
                        <img src="img/medical/sm-2.jpg" alt="gallery-img" class="img-responsive">
                        <div class="gallery-overlay">
                            <p><a href="img/medical/sm-2.jpg" class="show-image"><i class="pe-7s-plus"></i></a></p>
                        </div>
                    </div>
                </div><!--col-->
                <div class="col-sm-6 col-md-3 margin20 ">
                    <div class="gallery">
                        <img src="img/medical/sm-3.jpg" alt="gallery-img" class="img-responsive">
                        <div class="gallery-overlay">
                            <p><a href="img/medical/sm-3.jpg" class="show-image"><i class="pe-7s-plus"></i></a></p>
                        </div>
                    </div>
                </div><!--col-->
                <div class="col-sm-6 col-md-3 margin20 ">
                    <div class="gallery">
                        <img src="img/medical/sm-4.jpg" alt="gallery-img" class="img-responsive">
                        <div class="gallery-overlay">
                            <p><a href="img/medical/sm-4.jpg" class="show-image"><i class="pe-7s-plus"></i></a></p>
                        </div>
                    </div>
                </div><!--col-->
            </div>
        
            
        </div>

    <div class="divide40"></div>

        <div class="cta">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 text-center">
                        <h3>For more information please click on Contact us button</h3>
                    </div>
                    <div class="col-md-4 text-center">
                        <a href="contact.aspx" class="btn btn-white-border btn-lg">Contact Us</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="divide30"></div>

</asp:Content>

