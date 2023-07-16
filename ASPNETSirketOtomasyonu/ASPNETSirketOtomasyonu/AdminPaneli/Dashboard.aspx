<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="ASPNETSirketOtomasyonu.AdminPaneli.Dashboard" %>

<%@ Import Namespace="ASPNETSirketOtomasyonu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="section">
        <h1 class="section-header">
            <div>Genel Bilgiler</div>
        </h1>
        <div class="row">
            <div class="col-lg-3 col-md-6 col-12">
                <div class="card card-sm-3">
                    <div class="card-icon bg-primary">
                        <i class="ion ion-person"></i>
                    </div>
                    <div class="card-wrap">
                        <div class="card-header">
                            <h4>Toplam Admin</h4>
                        </div>
                        <div class="card-body">
                            <asp:Label ID="lblTotalAdmin" runat="server" Text="Label"></asp:Label>


                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-12">
                <div class="card card-sm-3">
                    <div class="card-icon bg-success">
                        <i class="ion ion-android-arrow-dropup"></i>
                    </div>
                    <div class="card-wrap">
                        <div class="card-header">
                            <h4>En Yüksek Maaş(₺)</h4>
                        </div>
                        <div class="card-body">
                            <asp:Label ID="lblMaxMaas" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-12">
                <div class="card card-sm-3">
                    <div class="card-icon bg-danger">
                        <i class="ion ion-android-arrow-dropdown"></i>
                    </div>
                    <div class="card-wrap">
                        <div class="card-header">
                            <h4>En Düşük Maaş (₺)</h4>
                        </div>
                        <div class="card-body">
                            <asp:Label ID="lblMinMaas" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-12">
                <div class="card card-sm-3">
                    <div class="card-icon bg-info">
                        <i class="ion ion-android-people"></i>
                    </div>
                    <div class="card-wrap">
                        <div class="card-header">
                            <h4>Toplam Kullanıcı</h4>
                        </div>
                        <div class="card-body">
                            <asp:Label ID="lblTotalUser" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="form-group">
          
          
                <div class="card">
                    <div class="card-header">
                        <h4>Son Eklenen Personeller</h4>
                    </div>
                    <div class="card-body">
                        <ul class="list-unstyled list-unstyled-border">

                            <asp:Repeater ID="Repeater1" runat="server">
                                <ItemTemplate>
                                    <li class="media">
                                        <img class="mr-3 rounded-circle" width="50" src='<%# Eval("Resim") %>' alt="avatar">
                                        <div class="media-body">
                                            <div class="float-right"><small><%#Tarih.TarihFormati(DateTime.Parse(Eval("GirisTarih").ToString())) %></small></div>
                                            <div class="media-title"><%# Eval("ID") %>-<%# Eval("Adi") %> <%# Eval("Soyadi") %></div>
                                            <small><%# Eval("Aciklama") %></small>
                                        </div>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>


                        </ul>
                        <div class="text-center">
                            <a href="/AdminPaneli/PersonelListele.aspx" class="btn btn-primary btn-round">Tüm Personeller
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        
       
    </section>

</asp:Content>
