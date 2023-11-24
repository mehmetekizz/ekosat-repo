<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLayout.Master" AutoEventWireup="true" CodeBehind="AdminMessages.aspx.cs" Inherits="Ekosat_Website.Messages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 24px;
        }
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        .auto-style2 {
            height: 36px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td>MESAJLAR</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server">
                    <ItemTemplate>
                        <table class="w-100">
                            <tr>
                                <td>Gönderen:
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("ContactName") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">Mail adresi:
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("ContactMail") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Mesaj: </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="tboxMessage" runat="server" Height="173px" ReadOnly="True" Text='<%# Eval("ContactMessage") %>' TextMode="MultiLine" Width="491px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                 <a style="width:200px;" href="MessageDelete.aspx?id=<%# Eval("ContactID") %>"> <div class="btn btn-primary"> Sil </div> </a>  
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
