    <%@ Page Title="" Language="C#" MasterPageFile="~/MainLayout.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Coronavirus.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
    <!--? Hero start-->
    <section class="slider-area slider-area2 slider-height2 d-flex align-items-center  hero-overly">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-8 col-lg-11 col-md-12">
                    <div class="hero__caption hero__caption2 text-center">
                        <h2>Contact</h2>
                    </div>
                </div>
            </div>
        </div> 
    </section>
    <!-- Hero end -->
    <!--?  Contact Area start  -->
    <section class="contact-section">
        <div class="container">
            <div class="d-none d-sm-block mb-5 pb-4">
                
            <div class="row">
                <div class="col-12">
                    <h2 class="contact-title">Get in Touch</h2>
                </div>
                <div class="col-lg-8">
                    <div class="form-contact contact_form"  id="contactForm" novalidate="novalidate">
                        <div class="row">
                            <div class="col-12">
                                <div class="form-group">
                                    <asp:TextBox ID="message" runat="server" TextMode="MultiLine" CssClass="form-control w-100" cols="30" rows="9" placeholder=" Enter Message"></asp:TextBox>
                    
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <asp:TextBox ID="name" runat="server" Cssclass="form-control valid" placeholder="Enter your name"></asp:TextBox>
                                    
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <asp:TextBox ID="email" runat="server" CssClass="form-control valid" placeholder="Email"></asp:TextBox>
                                
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <asp:TextBox ID="subject" runat="server" CssClass="form-control" placeholder="Enter Subject"></asp:TextBox>                             
                                </div>
                            </div>
                        </div>
                        <div class="form-group mt-3">
                            <asp:Button ID="Button1" runat="server" Text="Send"  Cssclass="button button-contactForm boxed-btn" OnClick="Button1_Click"/>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 offset-lg-1">
                   
                    <div class="media contact-info">
                        <span class="contact-info__icon"><i class="ti-tablet"></i></span>
                        <div class="media-body">
                            <h3>+90 538 895 45 53</h3>
                            <p> free at the weekend.    </p>
                        </div>
                    </div>
                    <div class="media contact-info">
                        <span class="contact-info__icon"><i class="ti-email"></i></span>
                        <div class="media-body">
                            <h3>stellforge6@gmail.com</h3>
                            <p>Send us your query anytime!</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
            </div>
    </section>
    <!-- Contact Area End -->
</main>
</asp:Content>
