<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="BirimGuncelle.aspx.cs" Inherits="ASPNETSirketOtomasyonu.AdminPaneli.BirimGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="section">
        <h1 class="section-header">
            <div>Birim Güncelle</div>
        </h1>
        <div class="section-body">
            <%--<form runat="server">--%>
                 <div class="form-group">
                    ID:<asp:TextBox ID="txtID" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    Birim:<asp:TextBox ID="txtBirim" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    Açıklama:<asp:TextBox ID="txtAciklama" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Button ID="btnGuncelle" CssClass="btn btn-info" runat="server" Text="Güncelle" OnClick="btnGuncelle_Click" />
                </div>

<%--            </form>--%>
        </div>
    </section>
</asp:Content>
