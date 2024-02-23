<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLayout.Master" AutoEventWireup="true" CodeBehind="AdminAbout.aspx.cs" Inherits="Coronavirus.AdminAbout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">About Change-1</h4>
                <p class="card-description">Change your info..  </p>
                <div class="forms-sample">

                    <div class="form-group">
                        <asp:Label runat="server" Text="About me-1"></asp:Label>
                        <asp:TextBox ID="abouttitle1" runat="server" CssClass="form-control" placeholder="About1"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="Content"></asp:Label>
                        <asp:TextBox ID="Aboutcontent1" runat="server" CssClass="form-control" Rows="6" TextMode="MultiLine"></asp:TextBox>
                    </div>

                       <div class="form-group">
                        <asp:Label runat="server" Text="About me-2"></asp:Label>
                        <asp:TextBox ID="abouttitle2" runat="server" CssClass="form-control" placeholder="About2"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" Text="Content"></asp:Label>
                        <asp:TextBox ID="Aboutcontent2" runat="server" CssClass="form-control" Rows="6" TextMode="MultiLine"></asp:TextBox>
                    </div>



                    <asp:Button ID="AboutSubmit1" runat="server" Text="Submit" class="btn btn-primary mr-2" OnClick="AboutSubmit1_Click" />
                <%--    <asp:HyperLink ID="GüncelleAbout" runat="server" CssClass="btn btn-success btn-fw" NavigateUrl='<%# "~/AdminAboutUpdate.aspx?id=" + Eval("id") %>'>Update</asp:HyperLink>--%>
                    
                </div>

            </div>
        </div>
    </div>
    

</asp:Content>
