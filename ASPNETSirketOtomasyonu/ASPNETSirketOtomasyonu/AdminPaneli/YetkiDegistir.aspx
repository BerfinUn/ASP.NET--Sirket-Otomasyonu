<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="YetkiDegistir.aspx.cs" Inherits="ASPNETSirketOtomasyonu.AdminPaneli.YetkiDegistir" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="section">
        <div class="section-header">
            <h1>
                <div>KULLANICI YETKİ DEĞİŞİM</div>
            </h1>
        </div>
        <div class="section-body">
            <div>
                <div class="card">
                    <div class="card-header">
                        <h4>Duyurular</h4>

                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <div class="form-group">
                                <b>ID</b><asp:TextBox CssClass="form-control" ID="txtID" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <b>Adı Soyadı</b><asp:TextBox CssClass="form-control" ID="txtAdSoyad" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <b>Yetki</b><asp:DropdownList CssClass="form-control" ID="DropdownList1" runat="server"></asp:DropdownList>
                            </div>
                            <div class="form-group">
                                <asp:Button ID="btnYetki" CssClass="btn btn-success btn-sm" runat="server" Text="Yetki Değiştir" Onclick="btnYetki_Click" />
                            </div>
                        </div>
                    </div>

                </div>
            </div>

            <br />
            <br />
        </div>
    </section>
</asp:Content>
