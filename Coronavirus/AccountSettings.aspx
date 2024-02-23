<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLayout.Master" AutoEventWireup="true" CodeBehind="AccountSettings.aspx.cs" Inherits="Coronavirus.AccountSettings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Account Settings</h4>
                <p class="card-description">  </p>
                <div class="forms-sample">

           
                    <div class="form-group">
                        <asp:Label runat="server" Text="Username"></asp:Label>
                        <asp:TextBox ID="UsernameSET" runat="server" CssClass="form-control" placeholder="Username"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" Text="Name"></asp:Label>
                        <asp:TextBox ID="NameSET" runat="server" CssClass="form-control" ></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" Text="Surname"></asp:Label>
                        <asp:TextBox ID="SurnameSET" runat="server" CssClass="form-control" ></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" Text="Email"></asp:Label>
                        <asp:TextBox ID="EmailSET" runat="server" CssClass="form-control" ></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" Text="Password"></asp:Label>
                        <asp:TextBox ID="PasswordSET" runat="server" CssClass="form-control" ></asp:TextBox>
                    </div>


                    <asp:Button ID="Submit1" runat="server" Text="Submit" CssClass="btn btn-primary mr-2" OnClick="Submit1_Click"  />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
