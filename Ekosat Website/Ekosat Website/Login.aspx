<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Ekosat_Website.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        Email:&nbsp;
    <asp:TextBox ID="tboxMail" runat="server" TextMode="Email"></asp:TextBox>
&nbsp;<br />
    <br />
    Şifre:&nbsp;&nbsp;
    <asp:TextBox ID="tboxPassword" runat="server" TextMode="Password"></asp:TextBox>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnLogin" runat="server" Height="40px" Text="Giriş Yap" Width="168px" OnClick="btnLogin_Click" />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
