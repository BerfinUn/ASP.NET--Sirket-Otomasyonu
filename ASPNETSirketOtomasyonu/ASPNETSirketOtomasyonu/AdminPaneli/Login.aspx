<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ASPNETSirketOtomasyonu.AdminPaneli.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="/css/font-awesome.min.css" rel="stylesheet" />
    <link href="/Content/bootstrap.min.css" rel="stylesheet" />

</head>
<body style="background-color: #eaeaea;">
    <form id="form1" runat="server">
        <div class="container" style="width: 25%; background-color: white; margin-top: 90px; border-radius: 20px; border: 3px solid red;">
            <div class="form-group">
                <h2 class="text-center">Kullanıcı Girişi</h2>

            </div>
            <div class="form-group">
                <b>KULLANICI ADI</b>
                <asp:TextBox ID="txtKullaniciAdi" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <b>ŞİFRE </b>
                <asp:TextBox ID="txtSifre" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
            </div>

         
            <div class="form-group">
                <asp:Button ID="btnGiris" CssClass="btn btn-danger form-control" runat="server" Text="GİRİŞ YAP" OnClick="btnGiris_Click" />
            </div>
            <div class="form-group">
                <div class="form-group" style="float: left">
                    <a href="/AdminPaneli/YeniKullanici.aspx">Yeni Kullanıcı</a>
                </div>
                <div class="form-group" style="float: right">
                    <a href="/AdminPaneli/SifremiUnuttum.aspx">Şifremi Unuttum</a>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
