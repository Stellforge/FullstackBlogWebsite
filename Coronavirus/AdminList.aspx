<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLayout.Master" AutoEventWireup="true" CodeBehind="AdminList.aspx.cs" Inherits="Coronavirus.AdminList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-panel">
        <div class="content-wrapper">

            <div class="row">
                <div class="col-lg-12 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Admin List </h4>

                            <div class="table-responsive">
                                <asp:GridView ID="AdminList1" runat="server" CssClass="table" AutoGenerateColumns="false" OnSelectedIndexChanged="AdminList1_SelectedIndexChanged">

                                    <Columns>
                                        <asp:TemplateField HeaderText="Profile Pic">
                                            <ItemTemplate>
                                                <asp:Image ID="Image1" runat="server" ImageUrl="~/permanentpic.png" Width="50" Height="50" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="Username" HeaderText="Username" />
                                        <asp:BoundField DataField="Name" HeaderText="Name" />
                                        <asp:BoundField DataField="Surname" HeaderText="Surname" />
                                        <asp:BoundField DataField="Email" HeaderText="Mail" />
                                        <asp:BoundField DataField="Password" HeaderText="Password" />
                                        <asp:TemplateField HeaderText="Update">
                                            <ItemTemplate>
                                                <asp:HyperLink ID="GüncelleAdmin" runat="server" CssClass="btn btn-success btn-fw" NavigateUrl='<%# "~/AdminUpdate.aspx?id=" + Eval("Id") %>'>Güncelle</asp:HyperLink>                                             
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Delete" >
                                            <ItemTemplate>
                                                <asp:HyperLink ID="SilAdmin" runat="server" CssClass="btn btn-danger btn-fw" NavigateUrl='<%# "~/AdminDelete.aspx?id=" + Eval("Id") %>'>Sil</asp:HyperLink>
                                               
                                            </ItemTemplate>
                                        </asp:TemplateField>



                                    </Columns>

                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
