<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="YeniDuyuru.aspx.cs" Inherits="ASPNETSirketOtomasyonu.AdminPaneli.YeniDuyuru" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                        <h4>Duyuru Ekleme Sayfası</h4>
                    </div>
                    <div class="card-body">
                        
                      
                            <div class="form-group">
                                <b>Başlık: </b>
                                <asp:TextBox ID="txtBaslik" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <b>Duyuru: </b>
                                <asp:TextBox ID="txtDuyuru" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <b>Açıklama: </b>
                                <asp:TextBox ID="txtAciklama" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            
                           
                            <div class="form-group">
                                <asp:Button ID="btnEkle" runat="server" Text="Ekle" CssClass="btn btn-info" OnClick="btnEkle_Click" />
                            </div>
                  
                    </div>

                </div>

            </div>


        </div>
    </section>
</asp:Content>
