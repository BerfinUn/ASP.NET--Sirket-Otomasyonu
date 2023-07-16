<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="YeniPersonel.aspx.cs" Inherits="ASPNETSirketOtomasyonu.AdminPaneli.YeniPersonel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        TextBox {
            background-color: rgba(255,255,255,0.16)
        }
    </style>
    0
    <section class="section">
        <div class="section-header">
            <h1>
                <div>Yeni Personel Ekleme Sayfası</div>
            </h1>
        </div>
        <div class="section-body">
            <div>
                <div class="card">
                    <div class="card-header">
                        <h4>Personel Ekleme Tablosu</h4>
                    </div>
                    <div class="card-body">
                        <form runat="server">
                            <div class="form-group">
                                <b>Resim: </b>
                                <asp:Image ID="Image1" runat="server" class="form-control resim" Height="200px" Width="200px" />
                            </div>
                            <div class="form-group">
                                <asp:FileUpload ID="FileUpload1" ClientIDMode="Static" CssClass="form-group" runat="server" onchange="$('.resim')[0].src=window.URL.createObjectURL(this.files[0])"></asp:FileUpload>

                            </div>
                            <div class="form-group">
                                <b>Personel Adı: </b>
                                <asp:TextBox ID="txtAd" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <b>Personel Soyadı: </b>
                                <asp:TextBox ID="txtSoyad" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <b>Birimi: </b>
                                <asp:DropDownList ID="DropdownBirim" CssClass="form-control" runat="server"></asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <b>Telefon-1: </b>
                                <asp:TextBox ID="txtTel1" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <b>Telefon-2: </b>
                                <asp:TextBox ID="txtTel2" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <b>E-mail: </b>
                                <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <b>Adres : </b>
                                <asp:TextBox ID="txtAdres" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <b>Maaş: </b>
                                <asp:TextBox ID="txtMaas" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <b>Açıklama: </b>
                                <asp:TextBox ID="txtAciklama" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <b>Çalışma Durumu: </b>
                                <br />
                                <br />
                                <div style="border: 1px solid lightgray">
                                    <asp:RadioButton ID="RadioAktif" GroupName="isactive" runat="server" Text="Aktif" /><br />
                                    <asp:RadioButton ID="RadioPasif" GroupName="isactive" runat="server" Text="Pasif" />
                                </div>

                            </div>
                            <div class="form-group">
                                <b>Giriş Tarihi: </b>
                                <asp:TextBox ID="txtTarih" type="date" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Button ID="btnEkle" runat="server" Text="Ekle" CssClass="btn btn-info" OnClick="btnEkle_Click" />
                            </div>
                        </form>
                    </div>

                </div>

            </div>


        </div>
    </section>


</asp:Content>
