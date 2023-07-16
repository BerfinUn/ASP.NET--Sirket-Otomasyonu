<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="PersonelBasariGuncelle.aspx.cs" Inherits="ASPNETSirketOtomasyonu.AdminPaneli.PersonelBasariGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section class="section">
        <div class="section-header">
            <h1>
                <div>Personel Başarı Güncelleme Sayfası</div>
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
                                <asp:Button ID="btnGuncelle" CssClass="btn btn-sm btn-success" runat="server" Text="Güncelle" OnClick="btnGuncelle_Click" />
                            <a href="/AdminPaneli/PersonelBasarilariListele.aspx" class="btn btn-sm btn-dark" style="float:right">Geri</a>
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
