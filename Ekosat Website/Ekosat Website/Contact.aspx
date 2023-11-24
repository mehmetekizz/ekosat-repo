<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Ekosat_Website.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    İsim:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tboxName" runat="server" ToolTip="isminizi giriniz"></asp:TextBox>
    <br />
    <br />
    Mail Adresi:&nbsp;
    <asp:TextBox ID="tboxMail" runat="server" ToolTip="mail adresinizi giriniz" TextMode="Email"></asp:TextBox>
    <br />
    <br />
    Mesaj:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tboxMessage" runat="server" Height="210px" TextMode="MultiLine" ToolTip="mesajınızı yazınız" Width="854px"></asp:TextBox>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnSend" runat="server" Height="75px" OnClick="btnSend_Click" Text="Gönder" Width="857px" />
</asp:Content>
