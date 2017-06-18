<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddActivities.aspx.cs" Inherits="UniversitySocial.admin.AddActivities" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <div class="form-group row">
  <label for="example-text-input" class="col-2 col-form-label">Başlık :</label>
  <div class="col-10">
      <asp:TextBox ID="txt_name" Width="500" CssClass="form-control" placeholder="aktivite başlığı " runat="server"></asp:TextBox>
  </div>
</div>
<div class="form-group row">
  <label for="example-search-input" class="col-2 col-form-label">İçerik</label>
  <div class="col-10">
      <asp:TextBox ID="txt_ozet" Width="500"  CssClass="form-control" placeholder="aktivite içerik" TextMode="MultiLine" runat="server"></asp:TextBox>
  </div>
</div>
    <div class="form-group row">
  <label for="example-email-input" class="col-2 col-form-label">Tarih</label>
  <div class="col-10">
     <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </cc1:ToolkitScriptManager>
    <asp:TextBox ID="txtDate" runat="server" ReadOnly="true"></asp:TextBox>
    <asp:ImageButton ID="imgPopup" ImageUrl="assets/img/calendar.png" ImageAlign="Bottom"
        runat="server" />
    <cc1:CalendarExtender ID="Calendar1" PopupButtonID="imgPopup" runat="server" TargetControlID="txtDate"
        Format="dd/MM/yyyy">
    </cc1:CalendarExtender>

      
  </div>
</div>
<div class="form-group row">
  <label for="example-search-input" class="col-2 col-form-label">Saat</label>
  <div class="col-10">
      <asp:TextBox ID="txt_time" CssClass="form-control" placeholder="saat" runat="server"></asp:TextBox>
  </div>

    <asp:Button ID="btn_kaydet" CssClass="btn btn-success" runat="server" Text="Oluştur" OnClick="btn_kaydet_Click" />
</div>
</asp:Content>
