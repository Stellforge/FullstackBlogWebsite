<%@ Page Title="" Language="C#" MasterPageFile="~/MainLayout.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Coronavirus.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<main>
    <!-- Start slider -->
    <div class="slider-area">
        <div class="slider-item-active">
            <!-- Single -->
            <div class="slider-item">
                <div class="slider-bg1 slider-height hero-overly slider-bg1 d-flex align-items-center ">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-9 col-lg-10">
                                <div class="slide-content">
                                    <h1>Stellforge</h1>
                                    <img src="assets/img/icon/signature.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Footer Content -->
                <div class="slider-caption2">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-4 col-lg-4 col-md-7 col-sm-8">
                                <div class="slide-content2">
                                    <h4><dd> ☆ </dd><span> Computer Engineer</span></h4>
                                    <p>i will achieve my goal</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Single -->
            <div class="slider-item">
                <div class="slider-bg2 slider-height hero-overly slider-bg1 d-flex align-items-center ">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-9 col-lg-10">
                                <div class="slide-content">
                                    <h1>Stellforge</h1>
                                    <img src="assets/img/icon/signature.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Footer Content -->
                <div class="slider-caption2">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-4 col-lg-4 col-md-7 col-sm-8">
                                <div class="slide-content2">
                                    <h4><dd>☆ </dd><span>Game Developer</span></h4>
                                    <p>If u think u can't do it , trust me u will.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Single -->
            <div class="slider-item">
                <div class="slider-bg3 slider-height hero-overly slider-bg1 d-flex align-items-center">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-9 col-lg-10">
                                <div class="slide-content">
                                    <h1>Stellforge</h1>
                                    <img src="assets/img/icon/signature.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Footer Content -->
                <div class="slider-caption2">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-4 col-lg-4 col-md-7 col-sm-8">
                                <div class="slide-content2">
                                    <h4><dd>☆ </dd><span>Web Designer</span></h4>
                                    <p>I missed 2 word and the whole project is broken.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Dot - image -->
        <div class="slider-nav text-center">
            <div class="slider-thumb">
                <img src="assets/img/hero/slider-dot1.png" alt="">
            </div>
            <div class="slider-thumb">
                <img src="assets/img/hero/slider-dot2.png" alt="">
            </div>
            <div class="slider-thumb">
                <img src="assets/img/hero/slider-dot3.png" alt="">
            </div>
            <div class="slider-thumb">
                <img src="assets/img/hero/slider-dot1.png" alt="">
            </div>
            <div class="slider-thumb">
                <img src="assets/img/hero/slider-dot2.png" alt="">
            </div>
            <div class="slider-thumb">
                <img src="assets/img/hero/slider-dot3.png" alt="">
            </div>
        </div>
    </div>
    <!-- End Start slider -->
    <!--? Gallery Area Start -->
    <div class="gallery-area section-padding40">
        <div class="container">
            <div class="row justify-content-between align-items-center">
                <div class="col-lg-6">
                    <div class="section-tittle mb-50">
                       <h2> <asp:Label ID="title3" runat="server" ></asp:Label> </h2>
                   
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="section-tittle mb-60">
                        <asp:Label ID="about2" runat="server" Text="Label"></asp:Label>
                      
                    </div>
                </div>
            </div>
            <%--<div class="row justify-content-between">
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
            </div>--%>
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-btn text-center mt-50">
                        <a href="About" class="border-btn">About Me</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Gallery Area End -->
    <!--? All startups Start -->
    <div class="all-starups-area fix">
        <!-- left Contents -->
        <div class="starups">
            <div class="starups-details">
                <h3><asp:Label ID="title4" runat="server" ></asp:Label></h3>
                <asp:Label ID="about4" runat="server" ></asp:Label>
                <a href="Blog" class="border-btn border-btn2">See My Blogs</a>
            </div>
        </div>
        <!--Right Contents  -->
        <div class="starups-img"></div>
    </div>
    <!--All startups End -->
    <!--? Services Area Start -->
    <div class="categories-area section-padding40">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-10">
                    <div class="section-tittle mb-60 text-center">
                        <h2>Everything is a Beggining</h2>
                        <p>At first I thought I wouldn't be able to write these high-level codes anyway, but life depends on experience, and the more I tried, the more I could write them.
                            If I can write, you can too.
                        </p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="single-cat mb-50 text-center wow fadeInUp" data-wow-duration="1s" data-wow-delay=".2s">
                        <div class="cat-icon">
                            <img src="assets/img/icon/services1.svg" alt="">
                        </div>
                        <div class="cat-cap">
                            <h5>Visual Studio</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="single-cat mb-50 text-center wow fadeInUp" data-wow-duration="1s" data-wow-delay=".4s">
                        <div class="cat-icon">
                            <img src="assets/img/icon/services2.svg" alt="">
                        </div>
                        <div class="cat-cap">
                            <h5>Unity</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="single-cat mb-50 text-center wow fadeInUp" data-wow-duration="1s" data-wow-delay=".6s">
                        <div class="cat-icon">
                            <img src="assets/img/icon/services3.svg" alt="">
                        </div>
                        <div class="cat-cap">
                            <h5>Unreal Engine</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="single-cat mb-50 text-center wow fadeInUp" data-wow-duration="1s" data-wow-delay=".8s">
                        <div class="cat-icon">
                            <img src="assets/img/icon/services4.svg" alt="">
                        </div>
                        <div class="cat-cap">
                            <h5>Blender</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--? Services Area End -->
    <!--? Testimonial Area Start -->
    <section class="testimonial-area testimonial-padding fix section-bg" data-background="assets/img/gallery/section_bg03.png">
        <div class="container">
            <div class="row align-items-center justify-content-center">
                <div class=" col-lg-9">
                    <div class="about-caption">
                        <!-- Testimonial Start -->
                        <div class="h1-testimonial-active dot-style">
                            <!-- Single Testimonial -->
                            <div class="single-testimonial position-relative">
                                <div class="testimonial-caption">
                                    <img src="assets/img/icon/quotes-sign.png" alt="" class="quotes-sign">
                                    <p>Oynadığım oyunlarda bir bug olduğunda patates kodlaması bunlar dedikten sonra benim yazdığım kodda oluşan 300 hata..</p>
                                </div>
                                <!-- founder -->
                                <div class="testimonial-founder d-flex align-items-center">
                                    <div class="founder-img">
                                        <img src="assets/img/icon/testimonial.png" alt="">
                                    </div>
                                    <div class="founder-text">
                                        <span>Furkan Erçelebi</span>
                                        <p>Developed by Stellforge</p>
                                    </div>
                                </div>
                            </div>
                            <!-- Single Testimonial -->
                            <div class="single-testimonial position-relative">
                                <div class="testimonial-caption">
                                    <img src="assets/img/icon/quotes-sign.png" alt="" class="quotes-sign">
                                    <p>Programcılar, geleceği düşündükleri için sürekli olarak işleri gereğinden fazla karmaşıklaştırmaktadırlar. Geleceği boşverin. Bugün için programlayın.</p>
                                </div>
                                <!-- founder -->
                                <div class="testimonial-founder d-flex align-items-center">
                                    <div class="founder-img">
                                        <img src="assets/img/icon/testimonial.png" alt="">
                                    </div>
                                    <div class="founder-text">
                                        <span>Furkan Erçelebi</span>
                                        <p>Developed by Stellforge</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Testimonial End -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--? Testimonial Area End -->
    
    
</main>
</asp:Content>
