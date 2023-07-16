<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BilgilerimiGuncelle.aspx.cs" Inherits="ASPNETSirketOtomasyonu.Genel.BilgilerimiGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="form-group">
            <b>Resim: </b>
            <asp:Image ID="Image1" runat="server" class="form-control resim" Height="200px" Width="200px" />
        </div>
        <div class="form-group">
            <asp:FileUpload ID="FileUpload1" ClientIDMode="Static" CssClass="form-group" runat="server" onchange="$('.resim')[0].src=window.URL.createObjectURL(this.files[0])"></asp:FileUpload>

        </div>
        <div class="form-group">
            <b>Adı</b><asp:TextBox ID="txtAdi" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <b>Soyadı</b><asp:TextBox ID="txtSoyadi" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <b>Kullanıcı Adı</b><asp:TextBox ID="txtKullaniciAdi" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <b>Şifre</b><asp:TextBox ID="txtSifre" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <b>E-Mail</b><asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" TextMode="Email"></asp:TextBox>
        </div>
        <div class="form-group"> 
            <asp:Button ID="btnGuncelle" runat="server" Text="Güncelle" CssClass="btn btn-success" OnClick="btnGuncelle_Click" />
         <a href="/AdminPaneli/Dashboard.aspx" class="btn btn-warning" style="float:right">Geri</a>
        </div>
       
    </div>
</asp:Content>
