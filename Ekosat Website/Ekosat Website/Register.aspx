<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Ekosat_Website.Register" %>
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
    Şehir:&nbsp;
    <asp:TextBox ID="tboxSehir" runat="server"></asp:TextBox>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnRegister" runat="server" Height="40px" OnClick="btnRegister_Click" Text="Kayıt Ol" Width="168px" />
    
</asp:Content>
