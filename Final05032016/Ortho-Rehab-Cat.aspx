<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Ortho-Rehab-Cat.aspx.cs" Inherits="Ortho_Rehab_Cat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <img src="img/medical/p-6.jpg" width="100%" height="350" />
   <div class="divide20"></div>
    <div class="container">
        <br />
<asp:Literal ID="ltBack" runat="server"></asp:Literal><br />
        <div>
            <h3 style="margin-bottom:-10px; margin-left:360px;" class="pageheading">Specifications</h3>
        </div>
        <table>
            <tr>
                <td style="width:350px;padding-top:10px;">
                    <img id="deviceImage" runat="server" style="width:inherit; height: 250px; padding:5px 5px 5px 5px;" />
                    <asp:Label CssClass="pageheading" ID="lblDeviceName" runat="server" ></asp:Label>
                </td>
                <td style="width:750px;  margin-left:25px; padding-left:10px;">
                    <asp:TextBox ID="txtspec" ReadOnly="true" runat="server" Style="width:inherit; height: 250px; background-color:lightblue" TextMode="MultiLine" Height="450"></asp:TextBox></td>
            </tr>
        </table>
    </div>
    <div class="divide70"></div>
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
</asp:Content>

