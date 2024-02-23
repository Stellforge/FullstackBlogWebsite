<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLayout.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="AdminUpdate.aspx.cs" Inherits="Coronavirus.AdminUpdate" %>

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
                        <asp:Label runat="server" Text="Role"></asp:Label>
                    <asp:DropDownList ID="Role" runat="server" CssClass="form-control">
                        <asp:ListItem Value="1">Admin</asp:ListItem>
                        <asp:ListItem Value="2">Users</asp:ListItem>
                        </asp:DropDownList>

                 
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" Text="Username"></asp:Label>
                        <asp:TextBox ID="Username1" runat="server" CssClass="form-control" placeholder="Username"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" Text="Name"></asp:Label>
                        <asp:TextBox ID="Name1" runat="server" CssClass="form-control" ></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" Text="Surname"></asp:Label>
                        <asp:TextBox ID="Surname1" runat="server" CssClass="form-control" ></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" Text="Email"></asp:Label>
                        <asp:TextBox ID="Email1" runat="server" CssClass="form-control" ></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" Text="Password"></asp:Label>
                        <asp:TextBox ID="Password1" runat="server" CssClass="form-control" ></asp:TextBox>
                    </div>


                    <asp:Button ID="Submit1" runat="server" Text="Submit" CssClass="btn btn-primary mr-2" OnClick="Submit1_Click"  />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
