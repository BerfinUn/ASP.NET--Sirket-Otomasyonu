<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="duyurular.aspx.cs" Inherits="ASPNETSirketOtomasyonu.Genel.duyurular" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <h2>Duyurular Sayfası</h2>
  
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <div class="cerceve">
                <div>
                  Başlık:   <%# Eval("Baslik") %>   
                </div>
                <div>
                  Duyuru:   <%# Eval("Duyuru") %>   
                </div>
                <div>
                   Açıklama:  <%# Eval("Aciklama") %>   
                </div>
                <div>
                   Tarih:  <%# Eval("Tarih") %>   
                </div>
                
            </div>
            <br />
        </ItemTemplate>
        
    </asp:Repeater>

    <style>
        .cerceve{
            width:100%;
            border:1px solid red;
            padding:5px;
        }
    </style>
</asp:Content>
