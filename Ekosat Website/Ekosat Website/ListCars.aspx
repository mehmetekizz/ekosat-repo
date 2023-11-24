<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ListCars.aspx.cs" Inherits="Ekosat_Website.ListCars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <table class="w-100">
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("BrandName") %>'></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("CarModel") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="214px" ImageUrl='<%# Eval("CarPhoto") %>' Width="462px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("CarFuel") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("CarDescription") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("CarSeller") %>'></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("CarContact") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("CarPrice") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
