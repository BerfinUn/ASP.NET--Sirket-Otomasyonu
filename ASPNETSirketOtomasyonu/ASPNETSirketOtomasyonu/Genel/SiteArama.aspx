<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SiteArama.aspx.cs" Inherits="ASPNETSirketOtomasyonu.Genel.SiteArama" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <%# Eval("Adi") %> <%# Eval("Soyadi") %><br />
        </ItemTemplate>
    </asp:Repeater>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
</asp:Content>
