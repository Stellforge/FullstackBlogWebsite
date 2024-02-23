<%@ Page Title="" Language="C#" MasterPageFile="~/MainLayout.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="Coronavirus.Blog" %>

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
                            <h2>Blog</h2>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Hero start -->
        <!-- ? services-area start-->
        <section class="blog_area section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 mb-5 mb-lg-0">

                        <asp:GridView ID="blogview" runat="server" AutoGenerateColumns="False" GridLines="None">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <div class="blog_left_sidebar">
                                            <article class="blog_item">
                                                <div class="blog_item_img">
                                                    <asp:Image ID="Image1" runat="server" CssClass="card-img rounded-0" ImageUrl='<%# Eval("Image") %>' />
                                                    <a href="#" class="blog_item_date">
                                                        <h3><%# Eval("Date") %></h3>

                                                    </a>
                                                </div>
                                                <div class="blog_details">
                                                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="d-inline-block" NavigateUrl='<%#"~/BlogDetails.aspx?id="+Eval("Id")%>'>
                            <%--<a  href='<%# Eval("Link") %>'>--%>
                                <h2 class="blog-head" style="color: #2d2d2d;"><%# Eval("Title") %></h2>
                                                    </asp:HyperLink>
                                                    <p><%# Eval("Shortdescription") %></p>
                                                </div>
                                            </article>
                                        </div>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <RowStyle CssClass="blog_row_style" />
                        </asp:GridView>
                    </div>
                   
                </div>
            </div>
        </section>
        <!-- Blog Area End -->
    </main>
</asp:Content>
