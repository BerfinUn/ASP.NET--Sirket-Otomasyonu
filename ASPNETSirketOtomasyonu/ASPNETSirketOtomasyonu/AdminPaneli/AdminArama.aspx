<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="AdminArama.aspx.cs" Inherits="ASPNETSirketOtomasyonu.AdminPaneli.AdminArama" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="section">
        <div class="section-header">
            <h1>
                <div>Admin Arama Sayfası</div>
            </h1>
        </div>
        <div class="section-body">
            <div>
                <div class="card">
                    <div class="card-header">
                        

                    </div>
                    <div class="card-body">
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <%# Eval("Adi") %> <%# Eval("Soyadi") %> <br />
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </div>
            </div>

            <br />
            <br />
        </div>
    </section>
</asp:Content>
