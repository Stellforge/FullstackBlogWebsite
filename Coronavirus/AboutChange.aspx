<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLayout.Master" AutoEventWireup="true" CodeBehind="AboutChange.aspx.cs" Inherits="Coronavirus.AboutChange" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Input size</h4>
                    <p class="card-description"> Add classes like <code>.form-control-lg</code> and <code>.form-control-sm</code>. </p>
                    <div class="form-group">
                      <label>Large input</label>
                      <input type="text" class="form-control form-control-lg" placeholder="Username" aria-label="Username">
                    </div>
                    <div class="form-group">
                      <label>Default input</label>
                      <input type="text" class="form-control" placeholder="Username" aria-label="Username">
                    </div>
                    <div class="form-group">
                      <label>Small input</label>
                      <input type="text" class="form-control form-control-sm" placeholder="Username" aria-label="Username">
                    </div>
                  </div>
                </div>
</asp:Content>
