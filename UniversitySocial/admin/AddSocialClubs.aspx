<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddSocialClubs.aspx.cs" Inherits="UniversitySocial.admin.AddSocialClubs" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="form-group row">
  <label for="example-text-input" class="col-2 col-form-label">Kulüp Adı :</label>
  <div class="col-10">
      <asp:TextBox ID="txt_name" Width="500" CssClass="form-control" placeholder="Kulüp Adı" runat="server"></asp:TextBox>
  </div>
</div>
<div class="form-group row">
  <label for="example-search-input" class="col-2 col-form-label">Kulüp Özet</label>
  <div class="col-10">
      <asp:TextBox ID="txt_ozet" Width="500"  CssClass="form-control" placeholder="Kulüp Özet" runat="server"></asp:TextBox>
  </div>
</div>
    <div class="form-group row">
  <label for="example-email-input" class="col-2 col-form-label">Logo</label>
  <div class="col-10">
      <asp:FileUpload ID="file_photo" Width="500"  CssClass="form-control" runat="server" />

      
  </div>
</div>
<div class="form-group row">
  <label for="example-email-input" class="col-2 col-form-label">Kulüp Bilgi</label>
  <div class="col-10">
     <CKEditor:CKEditorControl ID="ckeditor" Width="700px" BasePath="../ckeditor/" runat="server"></CKEditor:CKEditorControl>

      <asp:Button ID="btn_gonder" CssClass="btn btn-success" runat="server" Text="Kaydet" OnClick="btn_gonder_Click" />
  </div>
</div>









</asp:Content>
