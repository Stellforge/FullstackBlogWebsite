<%@ Page Title="" Language="C#" MasterPageFile="~/MainLayout.Master" AutoEventWireup="true" CodeBehind="BlogDetails.aspx.cs" Inherits="Coronavirus.BlogDetails" %>
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
            <h2>Blog Details</h2>
          </div>
        </div>
      </div>
    </div> 
  </section>
  <!-- Hero end -->
  <!--? Blog Area Start -->
  <section class="blog_area single-post-area section-padding">
   <div class="container">
    <div class="row">
     <div class="col-lg-12 posts-list">    
      <div class="single-post">

       <div class="feature-img">
           <asp:Image ID="Image1" runat="server"  CssClass="img-fluid" />       
      </div>
      <div class="blog_details">
        <h2 style="color: #2d2d2d;">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
       </h2>         
           <asp:Label ID="Label2" runat="server" CssClass="excert"></asp:Label>               
   </div>
 </div>

 <div class="navigation-top">
   <div class="d-sm-flex justify-content-between text-center">


</div>

<div class="comments-area">
 <h4>Comments</h4>
 <div class="comment-list">
  <div class="single-comment justify-content-between d-flex">
      <div class="user justify-content-between d-flex">
      <asp:GridView ID="commentview" runat="server" AutoGenerateColumns="False" GridLines="None">
    <Columns>
        <asp:TemplateField>
            <ItemTemplate>
                <div class="thumb">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/Commentimage.png" />                  
                </div>
                <div class="desc">
                    <asp:Label ID="Label4" runat="server" CssClass="comment"><%# Eval("Comment") %></asp:Label>                   
                    <div class="d-flex justify-content-between">
                        <div class="d-flex align-items-center">
                            <h5>
                                <asp:Label ID="Label3" runat="server" ><%# Eval("Email") %> </asp:Label>   
                            </h5>
                            <asp:Label ID="Label5" runat="server" CssClass="date"> <%# Eval("Date") %></asp:Label>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>

      </div>
 <%--  <div class="user justify-content-between d-flex">
    <div class="thumb">
     <img src="assets/img/blog/comment_1.png" alt="">
   </div>
   <div class="desc">
     <p class="comment">
      Multiply sea night grass fourth day sea lesser rule open subdue female fill which them
      Blessed, give fill lesser bearing multiply sea night grass fourth day sea lesser
    </p>
    <div class="d-flex justify-content-between">
      <div class="d-flex align-items-center">
       <h5>
        <a href="#">Emilly Blunt</a>
      </h5>
      <p class="date">December 4, 2017 at 3:12 pm </p>
    </div>
    <div class="reply-btn">
     <a href="#" class="btn-reply text-uppercase">reply</a>
   </div>
 </div>
</div>
</div>--%>
</div>
</div>

</div>
<div class="comment-form">
 <h4>Leave a Reply</h4>
 <div class="form-contact comment_form" action="#" id="commentForm">
  <div class="row">
   <div class="col-12">
    <div class="form-group">
        <asp:TextBox ID="comment" runat="server" CssClass="form-control w-100" placeholder="Write Comment" cols="30" rows="9" TextMode="MultiLine" ></asp:TextBox>
   
   </div>
 </div>
 <div class="col-sm-6">
  <div class="form-group">
      <asp:TextBox ID="Name" runat="server" CssClass="form-control"  placeholder="Name"></asp:TextBox>
  
 </div>
</div>
<div class="col-sm-6">
  <div class="form-group">
      <asp:TextBox ID="Email" runat="server" CssClass="form-control" placeholder="Email" TextMode="Email"></asp:TextBox>

 </div>
</div>

</div>
<div class="form-group">
    <asp:Button ID="Button1" runat="server" Text="Post Comment" CssClass="button button-contactForm btn_1 boxed-btn" OnClick="Button1_Click" />

</div>
</div>
</div>
</div>

</div>
</div>
       </div>
</section>
<!-- Blog Area End -->
</main>

</asp:Content>
