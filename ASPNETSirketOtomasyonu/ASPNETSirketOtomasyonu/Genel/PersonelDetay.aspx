<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PersonelDetay.aspx.cs" Inherits="ASPNETSirketOtomasyonu.Genel.PersonelDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .cerceve {
            padding: 5px;
            border: 1px solid gray;
            width: 100%;
        }
    </style>
    <div>
        <h2>Personellerimiz</h2>
        <div>

            <div class="cerceve">
                <div>
                    <asp:Image ID="Image1" runat="server" width="100" height="100" />
                </div>

                <div>
                    <b>
                        <asp:Label ID="lblAdSoyad" runat="server" Text="Label"></asp:Label>
                    </b>
                </div>
                <div>
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <br />
                            <b>
                                <asp:Label ID="lblCount" runat="server" Text="Label"></asp:Label>
                            </b><%# Eval("Basari") %><br />
                            <b style="float: right"><%#ASPNETSirketOtomasyonu.Tarih.TarihFormati(DateTime.Parse(Eval("Tarih").ToString())) %></b>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <br />
            </div>

        </div>
        <br />
    </div>
    <br />
</asp:Content>
