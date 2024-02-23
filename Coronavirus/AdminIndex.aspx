<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLayout.Master" AutoEventWireup="true" CodeBehind="AdminIndex.aspx.cs" Inherits="Coronavirus.AdminIndex" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-xl-3 col-sm-6 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-9">
                            <div class="d-flex align-items-center align-self-start">
                                <h3 class="mb-0">
                                    <asp:Label ID="Aktifsayısı" runat="server" Text=""></asp:Label></h3>
                            </div>
                        </div>
                        <div class="col-3">
                            <div class="icon icon-box-success ">
                                <span class="mdi mdi-account-check icon-item"></span>
                            </div>
                        </div>
                    </div>
                    <h6 class="text-muted font-weight-normal">Admin Aktifliği</h6>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-sm-6 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-9">
                            <div class="d-flex align-items-center align-self-start">
                                <h3 class="mb-0">
                                    <asp:Label ID="blogsayısı" runat="server"></asp:Label></h3>
                            </div>
                        </div>
                        <div class="col-3">
                            <div class="icon icon-box-success">
                                <span class="mdi mdi-crop-landscape icon-item"></span>
                            </div>
                        </div>
                    </div>
                    <h6 class="text-muted font-weight-normal">Blog Sayısı</h6>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-sm-6 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-9">
                            <div class="d-flex align-items-center align-self-start">
                                <h3 class="mb-0">
                                    <asp:Label ID="Label3" runat="server" Text=""></asp:Label></h3>
                            </div>
                        </div>
                        <div class="col-3">
                            <div class="icon icon-box-success">
                                <span class="mdi mdi-email icon-item"></span>
                            </div>
                        </div>
                    </div>
                    <h6 class="text-muted font-weight-normal">Yorum Sayısı</h6>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-sm-6 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-9">
                            <div class="d-flex align-items-center align-self-start">
                                <h3 class="mb-0">
                                    <asp:HyperLink ID="hyperlink" runat="server" CssClass="btn btn-danger btn-fw" NavigateUrl='/'>Anasayfa</asp:HyperLink>
                                </h3>
                            </div>
                        </div>
                        <div class="col-3">
                            <div class="icon icon-box-danger ">
                                <span class="mdi mdi-check-circle icon-item"></span>
                            </div>
                        </div>
                    </div>
                    <h6 class="text-muted font-weight-normal">---Website button---</h6>
                </div>
            </div>
        </div>
    </div>


    <div class="row">
        <div class="col-md-12 col-xl-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <div class="d-flex flex-row justify-content-between">
                         <h4 class="card-title">Comments</h4>
                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="text-muted mb-1 small" NavigateUrl="~/CommentListUpdate.aspx">View all</asp:HyperLink>
                     
                    </div>
                    <asp:GridView ID="commentview" runat="server" AutoGenerateColumns="False" GridLines="None" >
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                  <div class="preview-list">
                                      <div class="preview-item border-bottom">
                                    <div class="preview-thumbnail">
                                        <asp:Image ID="Image2" runat="server" ImageUrl="~/Commentimage.png" CssClass="rounded-circle" />
                                    </div>
                                    <div class="preview-item-content d-flex flex-grow">
                                        <div class="flex-grow">
                                            <div class="d-flex d-md-block d-xl-flex justify-content-between">
                                                <h6 class="preview-subject">
                                                    <asp:Label ID="LabelUserName" runat="server" Text='<%# Eval("Name") %>' CssClass="UserName"></asp:Label>
                                                </h6>
                                                <p class="text-muted text-small">
                                                    <asp:Label ID="LabelTime" runat="server" Text='<%# Eval("Date") %>' CssClass="TimeAgo"></asp:Label>
                                                </p>
                                            </div>
                                            <p class="text-muted">
                                                <asp:Label ID="LabelMessage" runat="server" Text='<%# Eval("Comment") %>' CssClass="Message"></asp:Label>
                                            </p>
                                        </div>
                                        </div>
                                    </div>
                                   </div>
                               
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                        
                    <%-- <div class="d-flex flex-row justify-content-between">
                        <h4 class="card-title">Comments</h4>
                   
                    </div>
                    <div class="preview-list">
                        <div class="preview-item border-bottom">
                            <div class="preview-thumbnail">
                                <img src="assets/images/faces/face6.jpg" alt="image" class="rounded-circle" />
                            </div>
                            <div class="preview-item-content d-flex flex-grow">
                                <div class="flex-grow">
                                    <div class="d-flex d-md-block d-xl-flex justify-content-between">
                                        <h6 class="preview-subject">Leonard</h6>
                                        <p class="text-muted text-small">5 minutes ago</p>
                                    </div>
                                    <p class="text-muted">Well, it seems to be working now.</p>
                                </div>
                            </div>
                        </div>--%>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
