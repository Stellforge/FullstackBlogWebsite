<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Coronavirus.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
                            <h3 class="card-title text-left mb-3">Register</h3>
                            <form id="form1" runat="server">
                                <div class="form-group">
                                    <label>Username</label>
                                    <asp:TextBox ID="RegUsername" runat="server" CssClass="form-control p_input" Placeholder="Username"></asp:TextBox>

                                </div>
                                <div class="form-group">
                                    <label>Name</label>
                                    <asp:TextBox ID="RegName" runat="server" class="form-control p_input" Placeholder="Name"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>Surname</label>
                                    <asp:TextBox ID="RegSurname" runat="server" class="form-control p_input" Placeholder="Surname"></asp:TextBox>

                                </div>
                                <div class="form-group">
                                    <label>Email</label>
                                    <asp:TextBox ID="RegMail" runat="server" class="form-control p_input" Placeholder="...@gmail.com"></asp:TextBox>

                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <asp:TextBox ID="Regpassword" runat="server" class="form-control p_input" Placeholder="Make a hard one.."></asp:TextBox>
                                </div>
                                <div class="form-group d-flex align-items-center justify-content-between">
                                
                                
                                </div>
                                <div class="text-center">
                                    <asp:Button ID="Button1" runat="server" Text="Login" Cssclass="btn btn-primary btn-block enter-btn" OnClick="Button1_Click"  />   
                                </div>
                                <%--    <div class="d-flex">
                    <button class="btn btn-facebook col mr-2">
                      <i class="mdi mdi-facebook"></i> Facebook </button>
                    <button class="btn btn-google col">
                      <i class="mdi mdi-google-plus"></i> Google plus </button>
                  </div>--%>
                                <p class="sign-up text-center">Already have an Account?<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx" >Login</asp:HyperLink></p>
                                <%--      <p class="terms">By creating an account you are accepting our<a href="#"> Terms & Conditions</a></p>       --%>
                        </div>
                    </div>
                </div>
                <!-- content-wrapper ends -->
            </div>
            <!-- row ends -->
        </div>
        <!-- page-body-wrapper ends -->
    </div>
    </form>
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
