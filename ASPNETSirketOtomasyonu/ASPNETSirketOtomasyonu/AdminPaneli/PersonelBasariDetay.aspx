<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/Admin.Master" AutoEventWireup="true" CodeBehind="PersonelBasariDetay.aspx.cs" Inherits="ASPNETSirketOtomasyonu.AdminPaneli.PersonelBasariDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="section">
        <div class="section-header">
            <h1>
                <div>Personel Başarı Detay Sayfası</div>
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
                                <b>Personel Ad Soyad:</b><asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
                            </div>
                            <div class="form-group">
                              

                                <asp:Repeater ID="Repeater1" runat="server">
                                    <ItemTemplate>
                                        <br />
                                        <b>
                                            <asp:Label ID="lblCount" runat="server" Text="Label"></asp:Label></b><%# Eval("Basari") %><br />
                                        <b style="float: right"><%#TarihFormati(DateTime.Parse( Eval("Tarih").ToString())) %></b> <br />
                                    </ItemTemplate>
                                </asp:Repeater>

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
