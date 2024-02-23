<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLayout.Master" AutoEventWireup="true" CodeBehind="AddBlog.aspx.cs" Inherits="Coronavirus.AddBlock" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Blog Add Form</h4>
                <p class="card-description">Write Something to your blog  </p>
                <div class="forms-sample">


                    <div class="form-group">
                        <label for="exampleInputUsername1">File</label>
                        <div class="form-group w-100">
                   
                <asp:FileUpload ID="BlogImage" CssClass="form-control" runat="server" />
                        </div>
            </div>

            <div class="form-group">
                <asp:Label runat="server" Text="Title"></asp:Label>
                <asp:TextBox ID="Blogtitle" runat="server" CssClass="form-control" placeholder="Title"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label runat="server" Text="Short Description"></asp:Label>
                <asp:TextBox ID="Blogshortdes" runat="server" CssClass="form-control" placeholder="Short Description"></asp:TextBox>
            </div>

            <%--<div class="form-group">
                        <label for="exampleInputPassword4">ID no. Blog </label>
                        <input type="text" class="form-control" id="exampleInputPassword4" placeholder="ID no">
                    </div>--%>
            <%--<div class="form-group">
                        <label for="exampleSelectGender">Gender</label> 
                        <select class="form-control" id="exampleSelectGender">
                            <option>Male</option>
                            <option>Female</option>
                        </select>
                    </div>--%>
            <%--                    <div class="form-group">
                        <label for="exampleInputCity1">City</label>
                        <input type="text" class="form-control" id="exampleInputCity1" placeholder="Location">
                    </div>--%>
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Content"></asp:Label>
                <asp:TextBox ID="BlogContent" runat="server" CssClass="form-control" Rows="6" TextMode="MultiLine"></asp:TextBox>
            </div>
            <asp:Button ID="BlogSubmit" runat="server" Text="Submit" class="btn btn-primary mr-2" OnClick="BlogSubmit_Click" />
            </div>
        </div>
    </div>
   </div>
</asp:Content>
