<%@ Page Title="" Language="C#" MasterPageFile="~/MainLayout.Master" AutoEventWireup="true" CodeBehind="Projects.aspx.cs" Inherits="Coronavirus.Projects" %>
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
                        <h2>Portfolio</h2>
                    </div>
                </div>
            </div>
        </div> 
    </section>
    <!-- Hero end -->
    <!--? Gallery Area Start -->
    <div class="gallery-area section-padding40">
        <div class="container">
            <div class="row justify-content-between align-items-center">
                <div class="col-lg-6">
                    <div class="section-tittle mb-50">
                        <h2>With my camera, I capture daily life</h2>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="section-tittle mb-60">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse 
                            varius enim in eros elementum tristique. Duis cursus, mi quis viverra 
                            ornare, eros dolor interdum nulla, ut commodo diam libero vitae erat. 
                        Aenean faucibus nibh et justo cursu.</p>
                    </div>
                </div>
            </div>
            <div class="row justify-content-between">
                <div class="col-xl-5 col-lg-5 col-md-6 col-sm-6">
                    <div class="box snake mb-30">
                        <div class="gallery-img small-img " style="background-image: url(assets/img/gallery/gallery1.png);"></div>
                        <figcaption>Travelshots</figcaption>
                        <div class="overlay">
                            <div class="overlay-content">
                                <a href="assets/img/gallery/gallery1.png" class="img-pop-up"><i class="ti-plus"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-7 col-lg-7 col-md-6 col-sm-6">
                    <div class="box snake mb-30">
                        <div class="gallery-img small-img " style="background-image: url(assets/img/gallery/gallery2.png);"></div>
                        <figcaption>Experimental</figcaption>
                        <div class="overlay">
                            <div class="overlay-content">
                                <a href="assets/img/gallery/gallery2.png" class="img-pop-up"><i class="ti-plus"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                    <div class="box snake mb-30">
                        <div class="gallery-img small-img " style="background-image: url(assets/img/gallery/gallery3.png);"></div>
                        <figcaption>Father's Day</figcaption>
                        <div class="overlay">
                            <div class="overlay-content">
                                <a href="assets/img/gallery/gallery3.png" class="img-pop-up"><i class="ti-plus"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                    <div class="box snake mb-30">
                        <div class="gallery-img small-img " style="background-image: url(assets/img/gallery/gallery4.png);"></div>
                        <figcaption>Curious Cats</figcaption>
                        <div class="overlay">
                            <div class="overlay-content">
                                <a href="assets/img/gallery/gallery4.png" class="img-pop-up"><i class="ti-plus"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-btn text-center mt-50">
                        <a href="#" class="border-btn">More Portfolio</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Gallery Area End -->
    <!--? instagram-social start -->
    <div class="instagram-area fix">
        <div class="container-fluid p-0">
            <div class="row">
                <div class="col-xl-12">
                    <div class="instagram-active owl-carousel">
                        <div class="single-instagram">
                            <img src="assets/img/gallery/instra1.png" alt="">
                            <a href="#"><i class="ti-instagram"></i></a>
                        </div>
                        <div class="single-instagram">
                            <img src="assets/img/gallery/instra2.png" alt="">
                            <a href="#"><i class="ti-instagram"></i></a>
                        </div>
                        <div class="single-instagram">
                            <img src="assets/img/gallery/instra3.png" alt="">
                            <a href="#"><i class="ti-instagram"></i></a>
                        </div>
                        <div class="single-instagram">
                            <img src="assets/img/gallery/instra4.png" alt="">
                            <a href="#"><i class="ti-instagram"></i></a>
                        </div>
                        <div class="single-instagram">
                            <img src="assets/img/gallery/instra5.png" alt="">
                            <a href="#"><i class="ti-instagram"></i></a>
                        </div>
                        <div class="single-instagram">
                            <img src="assets/img/gallery/instra2.png" alt="">
                            <a href="#"><i class="ti-instagram"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- instagram-social End -->
</main>
</asp:Content>
