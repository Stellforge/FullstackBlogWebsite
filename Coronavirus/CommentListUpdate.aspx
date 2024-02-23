<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLayout.Master" AutoEventWireup="true" CodeBehind="CommentListUpdate.aspx.cs" Inherits="Coronavirus.CommentListUpdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
              <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Comment List</h4>
                   
                    <div class="table-responsive">
                     <asp:GridView ID="GridView1" runat="server" CssClass="table table-dark" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="ID" />
                            <asp:TemplateField HeaderText="Images">
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Commentimage.png" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="BlogId" HeaderText="BlogID" />
                            <asp:BoundField DataField="Name" HeaderText="Name" />
                            <asp:BoundField DataField="Email" HeaderText="email" />
                            <asp:BoundField DataField="Comment" HeaderText="Comment" />
                            <asp:BoundField DataField="Date" HeaderText="Date" />
                            <asp:TemplateField HeaderText="Delete"  >
                                <ItemTemplate >
                                     <asp:HyperLink ID="DeleteComment" runat="server" CssClass="btn btn-danger btn-fw" NavigateUrl='<%# "~/DeleteComment.aspx?id=" + Eval("Id") %>'>Delete</asp:HyperLink>
                              
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
      
                    
                           
                    </div>
                  </div>
                </div>
              </div>
</asp:Content>
 