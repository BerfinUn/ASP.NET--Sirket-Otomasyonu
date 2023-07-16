<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="YeniBirim.aspx.cs" Inherits="ASPNETSirketOtomasyonu.AdminPaneli.YeniBirim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="section">
        <h1 class="section-header">
            <div>Yeni Birim Ekleme</div>
        </h1>
        <div class="section-body">
            <%--<form runat="server">--%>
                <div class="form-group">
                    Birim:<asp:TextBox ID="txtBirim" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    Açıklama:<asp:TextBox ID="txtAciklama" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Button ID="btnEkle" CssClass="btn btn-info" runat="server" Text="Ekle" OnClick="btnEkle_Click" />
                </div>

        <%--    </form>--%>
        </div>
    </section>
</asp:Content>
