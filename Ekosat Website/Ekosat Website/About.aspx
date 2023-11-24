<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Ekosat_Website.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        p{
            font-family: 'Times New Roman', Times, serif;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Ekosat - Araç tutkunlarının buluşma noktası
    </p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Araç Tutkunları İçin Kaliteli ve Güvenilir Çözümler Sunuyoruz  Araçların ötesinde tutku var - biz, bu tutkunun bir parçasıyız. Ekosat, araç dünyasına olan sevgimizi ve uzmanlığımızı sizlere sunmak için buradayız. Biz, 2023 tarihinde kurulan bir aile şirketiyiz ve araçlarla ilgili her şeyi severiz."></asp:Label>
    </p>
</asp:Content>
