<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SifremiUnuttum.aspx.cs" Inherits="ASPNETSirketOtomasyonu.AdminPaneli.SifremiUnuttum" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="/css/font-awesome.min.css" rel="stylesheet" />
    <link href="/Content/bootstrap.min.css" rel="stylesheet" />

</head>
<body style="background-color: #eaeaea;">
    <form id="form1" runat="server">
        <div class="container" style="width: 40%; background-color: white; margin-top: 90px; border-radius: 20px; border: 3px solid red;">
            <div class="form-group">
                <h2 class="text-center">Şifremi Unuttum Sayfası</h2>

            </div>
            <div class="form-group">
                <b>E-Mail</b>
                <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" PlaceHolder="E-mail Adresiniz"></asp:TextBox>
            </div>
           

            
            <div class="form-group">
                <asp:Button ID="btnResetle" CssClass="btn btn-success" runat="server" Text="Şifreyi Sıfırla" OnClick="btnResetle_Click" />
            </div>
          
        </div>
    </form>
</body>
</html>

