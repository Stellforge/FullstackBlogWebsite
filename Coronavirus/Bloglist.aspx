<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLayout.Master" AutoEventWireup="true" CodeBehind="Bloglist.aspx.cs" Inherits="Coronavirus.Bloglist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-lg-12 grid-margin sasp:TableRowetch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Blog List</h4>

                <div class="table-responsive">
                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-dark" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Blog Id" />
                            <asp:TemplateField HeaderText="Images">
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("Image") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Title" HeaderText="Title" />
                            <asp:BoundField DataField="Shortdescription" HeaderText="Shortdescription" />
                            <asp:BoundField DataField="Date" HeaderText="Date" />
                            <asp:BoundField DataField="Content" HeaderText="Content" />
                            <asp:TemplateField HeaderText="Update"  >
                                <ItemTemplate >
                                   <asp:HyperLink ID="GüncelleBlog" runat="server" CssClass="btn btn-success btn-fw" NavigateUrl='<%# "~/BlogUpdate.aspx?id=" + Eval("Id") %>'>Güncelle</asp:HyperLink>
                               
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
               




                </div>
            </div>
        </div>
    </div>
</asp:Content>
