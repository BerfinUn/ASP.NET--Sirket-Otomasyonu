<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="YeniPersonelBasari.aspx.cs" Inherits="ASPNETSirketOtomasyonu.AdminPaneli.YeniPersonelBasari" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="section">
        <div class="section-header">
            <h1>
                <div>Personel Başarı Ekleme Sayfası</div>
            </h1>
        </div>
        <div class="section-body">
            <div>
                <div class="card">
                    <div class="card-header">
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                          <div class="form-group">
                              <b>Personel Ad Soyad:</b><asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server"></asp:DropDownList>
                          </div>
                            <div class="form-group">
                                <b>Başarı:</b><asp:TextBox ID="txtBasari" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <b>Tarih:</b><asp:TextBox ID="txtTarih" type="date" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Button ID="btnEkle" CssClass="btn btn-sm btn-info" runat="server" Text="Ekle" OnClick="btnEkle_Click" />
                            </div>
                        </div>
                    </div>


                    <div class="card-footer text-right">
                        <nav class="d-inline-block">
                            <ul class="pagination mb-0"></ul>
                        </nav>
                    </div>
                </div>
            </div>
            <br />
            <br />
        </div>
    </section>

</asp:Content>
