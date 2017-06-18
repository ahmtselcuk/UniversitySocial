<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="Article_Edit.aspx.cs" Inherits="UniversitySocial.admin.Article_Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="ddl_mgetir" runat="server" Width="700px">
              
                <ItemTemplate>
                    <table class="datepicker-inline" style="text-align: left; width: 674px;">
                        <tr>
                            <td class="auto-style5">
                                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("article_Title") %>'></asp:Literal>
                            </td>
                           
                            <td class="auto-style4">
                             <a href="guncellehaber.aspx?haberID=<%#Eval("article_Summary") %>">  <img alt="" class="auto-style2" src="../temalar/edit.png" /></a> 
                            </td>
                            <td class="auto-style4">
                              <a href="duzenlehaber.aspx?haberID=<%#Eval("article_ID")%>&islem=sil %>"> <img alt="" class="auto-style3" src="assets/img/delete.png" /></a> 
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>

</asp:Content>
