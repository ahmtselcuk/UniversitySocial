<%@ Page Title="" Language="C#" MasterPageFile="~/HomeScreen.Master" AutoEventWireup="true" CodeBehind="Article_Detail.aspx.cs" Inherits="UniversitySocial.Article_Detail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-12">
       
        <asp:DataList ID="DataList1" runat="server" >
            <ItemTemplate>



            
         <asp:Label ID="Label4" runat="server" Text='<%#Eval("article_Date") %>'></asp:Label><br />
        <asp:Label ID="Label1" runat="server" Text='<%#Eval("article_Title") %>'></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" Text='<%#Eval("article_Summary") %>'></asp:Label><br />
        <asp:Label ID="Label3" runat="server" Text='<%#Eval("article_Content") %>'></asp:Label><br />

       </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
