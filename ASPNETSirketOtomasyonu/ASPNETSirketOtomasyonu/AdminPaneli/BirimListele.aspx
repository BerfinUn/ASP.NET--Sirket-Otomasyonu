<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="BirimListele.aspx.cs" Inherits="ASPNETSirketOtomasyonu.AdminPaneli.BirimListele" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="section">
        <div class="section-header">
            <h1>
                <div>
                    Birimler
                </div>
            </h1>
        </div>
        <div class="section-body">
            <asp:Repeater ID="Repeater1" runat="server" OnItemCreated="Repeater1_ItemCreated">
                <HeaderTemplate>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Birim</th>
                                <th>Açıklama</th>
                                <th>Güncelle</th>
                                <th>Sil</th>
                            </tr>
                        </thead>
                </HeaderTemplate>

                <ItemTemplate>
                    <tbody>
                        <tr>
                            <th><%# Eval("ID") %></th>
                            <td><%# Eval("Birim") %></td>
                            <td><%# Eval("Aciklama") %></td>
                            <td>
                                <a href="/AdminPaneli/BirimGuncelle.aspx?gelenid=<%# Eval("ID") %>" class="btn btn-warning">Güncelle</a>

                            </td>
                            <td>
                               <a href="/AdminPaneli/BirimSil.aspx?gelenid=<%# Eval("ID") %>" class="btn btn-danger">Sil</a>
                            </td>
                        </tr>
                    </tbody>
                </ItemTemplate>

                <FooterTemplate>
                    <td colspan="5">
                        <asp:Label ID="lblKayitSayisi" runat="server" Text="Label"></asp:Label>
                    </td>

                    </table>
                </FooterTemplate>

            </asp:Repeater>
            <a href="/AdminPaneli/YeniBirim.aspx" class="btn btn-info">Yeni</a>
        </div>
    </section>
</asp:Content>
