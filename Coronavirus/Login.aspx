<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Coronavirus.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Corona Admin</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="/AdminAssets/assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="/AdminAssets/assets/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="/AdminAssets/assets/css/style.css">
    <!-- End layout styles -->
    <link rel="shortcut icon" href="/AdminAssets/assets/images/favicon.png" />
</head>
<body>
    <div class="container-scroller">
        <div class="container-fluid page-body-wrapper full-page-wrapper">
            <div class="row w-100 m-0">
                <div class="content-wrapper full-page-wrapper d-flex align-items-center auth login-bg">
                    <div class="card col-lg-4 mx-auto">
                        <div class="card-body px-5 py-5">
                            <h3 class="card-title text-left mb-3">Login</h3>
                            <form id="form1" runat="server">
                                <div class="form-group">
                                    <label>Username or email *</label>
                                    <asp:TextBox ID="Logbox" runat="server" CssClass="form-control p_input"></asp:TextBox>

                                </div>
                                <div class="form-group">
                                    <label>Password *</label>
                                    <asp:TextBox ID="Logpassword" runat="server" CssClass="form-control p_input"></asp:TextBox>
                                </div>

                                <div class="form-group d-flex align-items-center justify-content-between">

                                  
                                </div>
                                <div class="text-center">
                                    <asp:Button ID="Loginbutton" runat="server" Text="Login" CssClass="btn btn-primary btn-block enter-btn" OnClick="Loginbutton_Click" />

                                </div>
                                <div class="form-group">
                                <asp:Label ID="Uyari" runat="server" ></asp:Label>
                                    </div>
                                <%--   <div class="d-flex">
                    <button class="btn btn-facebook mr-2 col">
                      <i class="mdi mdi-facebook"></i> Facebook </button>
                    <button class="btn btn-google col">
                      <i class="mdi mdi-google-plus"></i> Google plus </button>
                  </div>--%>
                                <p class="sign-up">Don't have an Account?<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx">Sign Up</asp:HyperLink></p>

                            </form>
                        </div>
                    </div>
                </div>
                <!-- content-wrapper ends -->
            </div>

            <!-- row ends -->
        </div>
        <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="/AdminAssets/assets/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="/AdminAssets/assets/js/off-canvas.js"></script>
    <script src="/AdminAssets/assets/js/hoverable-collapse.js"></script>
    <script src="/AdminAssets/assets/js/misc.js"></script>
    <script src="/AdminAssets/assets/js/settings.js"></script>
    <script src="/AdminAssets/assets/js/todolist.js"></script>
    <!-- endinject -->
</body>
</html>
