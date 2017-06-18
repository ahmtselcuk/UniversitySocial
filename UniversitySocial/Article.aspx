<%@ Page Title="" Language="C#" MasterPageFile="~/UsersProfile.Master" AutoEventWireup="true" CodeBehind="Article.aspx.cs" Inherits="UniversitySocial.Article" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-group">
        Başlık :
        <asp:TextBox ID="txt_title" CssClass="form-control" runat="server"></asp:TextBox>
    </div>
    <div class="form-group">
        Özet :
        <asp:TextBox ID="txt_summary" CssClass="form-control" runat="server"></asp:TextBox>
    </div>
    <div class="form-group">
        İçerik :
        <CKEditor:CKEditorControl ID="CKEditorControl1" Width="700px" BasePath="ckeditor/" runat="server"></CKEditor:CKEditorControl>
    </div>
  
    <div class="form-group">
        <asp:DropDownList ID="dl_city" CssClass="form-control" runat="server">
            <asp:ListItem>Sevgi</asp:ListItem>
            <asp:ListItem>DAGADG</asp:ListItem>
            <asp:ListItem>Bursa</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
    </div>
    <div class="form-group">
        <asp:Button ID="Button1" CssClass="btn btn-success" runat="server" Text="Paylaş" OnClick="Button1_Click" />
        <asp:Panel ID="Panel1" Visible="false" runat="server">

            <asp:Label ID="lbl_id" runat="server" Text="Label"></asp:Label>
        </asp:Panel>

    </div>
</asp:Content>
