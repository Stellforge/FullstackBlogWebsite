<%@ Page Title="" Language="C#" MasterPageFile="~/MainLayout.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Coronavirus.About" %>
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
                        <h2>About</h2>
                    </div>
                </div>
            </div>
        </div> 
    </section>
    <!-- Hero start -->
    <div class="about-details section-padding40">
        <div class="container">
            <div class="row justify-content-between">
                <div class="col-lg-6">
                    <div class="section-tittle mb-50">
                        <h2><asp:Label ID="About2" runat="server" ></asp:Label></h2>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="section-tittle mb-20">
                       
                        <asp:Label ID="Aboutlab1" runat="server" Text="Label"></asp:Label>
                    </div>

                
            </div>
        </div>
    </div>
        </div>
    <!--? All startups Start -->
    <div class="all-starups-area fix">
        <!-- left Contents -->
        <div class="starups">
            <div class="starups-details">
                <h3>  <asp:Label ID="Label2" runat="server" Text="I'm Ready to Exceed Expectations"></asp:Label></h3>
                <asp:Label ID="Aboutlab4" runat="server" Text="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse varius enim in eros elementum tristique. Duis cursus, mi quis viverra ornare, eros dolor interdum nulla, ut commodo diam libero vitae erat. Aenean faucibus nibh et justo cursus id rutrum lorem imperdiet"></asp:Label>
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
                        <h2>Everything is a Beginning</h2>
                        <p>At first I thought I wouldn't be able to write these high-level codes anyway, but life depends on experience, and the more I tried, the more I could write them.
                            If I can write, you can too.</p>
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

</main>
</asp:Content>
