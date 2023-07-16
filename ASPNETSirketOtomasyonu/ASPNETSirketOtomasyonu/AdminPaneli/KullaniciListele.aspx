<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="KullaniciListele.aspx.cs" Inherits="ASPNETSirketOtomasyonu.AdminPaneli.KullaniciListele" %>

<%@ Import Namespace="ASPNETSirketOtomasyonu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <section class="section">
        <div class="section-header">
            <h1>
                <div>KULLANICI LİSTESİ</div>
            </h1>
        </div>
        <div class="section-body">
            <div>
                <div class="card">
                    <div class="card-header">
                        <h4>Duyurular</h4>

                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <asp:Repeater ID="Repeater1" runat="server">
                                <HeaderTemplate>
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Yetki</th>
                                                <th>Adı</th>
                                                <th>Soyadı</th>
                                                <th>Kullanıcı Adı</th>
                                                <th>E-mail</th>
                                                <th>Giriş Tarihi</th>
                                                <th>Aktif Mi?</th>
                                                <th>Yetki Değiştir</th>
                                            </tr>
                                        </thead>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tbody>
                                        <tr>
                                           <th><%# Eval("ID") %></th>
                                           <th><%# Eval("Yetkilendirme.Yetki") %></th>
                                            <td><%# Eval("Adi") %></td>
                                            <td><%# Eval("Soyadi") %></td>
                                            <td><%# Eval("KullaniciAdi") %></td>
                                            <td><%# Eval("Email") %></td>
                                            <td><%# Tarih.TarihFormati(DateTime.Parse( Eval("GirisTarihi").ToString()))%></td>
                                            <td>
                                                <asp:CheckBox ID="CheckBox1" runat="server"  Checked='<%# Eval("IsActive") %>'/>
                                                <a href='/AdminPaneli/KullaniciDurum.aspx?gelenid=<%# Eval("ID") %>'>
                                                    <i class="ion ion-edit"></i>
                                                </a>

                                            </td>
                                            <td>
                                                <a href='/AdminPaneli/YetkiDegistir.aspx?gelenid=<%# Eval("ID") %>'>
                                                    <i class="ion ion-android-refresh"></i>
                                                </a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </table>
                                </FooterTemplate>
                            </asp:Repeater>


                        </div>
                    </div>
                    
                </div>
            </div>

            <br />
            <br />
        </div>
    </section>
</asp:Content>
