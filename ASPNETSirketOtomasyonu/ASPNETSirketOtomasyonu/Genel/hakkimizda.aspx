<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="hakkimizda.aspx.cs" Inherits="ASPNETSirketOtomasyonu.Genel.hakkimizda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <h2>Şirket Hakkında</h2>
    <br />
    <div>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <div>
                    <%# Eval("Hakkinda") %>
                </div>
                <br />

            </ItemTemplate>
        </asp:Repeater>
        <b> <h2>Vizyonumuz</h2></b>
        <br />
        Müşteri ve çalışan odaklı çalışma prensibi doğrultusunda, uluslararası standartlarda hizmet sunan, ileri teknoloji bilgi sistemlerine dayalı katma değerli , çok sayıda proje referansına dayalı tecrübesiyle fikir geliştirme ve özgün çözümler sunan kurumsal bir firma olmaktadır.
         <br />
        <br />
    </div>

</asp:Content>
