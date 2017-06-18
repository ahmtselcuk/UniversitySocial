<%@ Page Title="" Language="C#" MasterPageFile="~/UsersProfile.Master" AutoEventWireup="true" CodeBehind="ProfileEdit.aspx.cs" Inherits="UniversitySocial.ProfileEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-group">
        Adınız :
        <asp:TextBox ID="txt_name" CssClass="form-control" runat="server"></asp:TextBox>
    </div>
    <div class="form-group">
        Soyad :
        <asp:TextBox ID="txt_surname" CssClass="form-control" runat="server"></asp:TextBox>
    </div>
    <div class="form-group">
        Email :
        <asp:TextBox ID="txt_Email" CssClass="form-control" runat="server"></asp:TextBox>
    </div>
    <div class="form-group">
        Şifreniz :
        <asp:TextBox ID="txt_password" CssClass="form-control" runat="server"></asp:TextBox>
    </div>
    <div class="form-group">
        Resim :

        <asp:FileUpload ID="file_resim" CssClass="form-control" runat="server" />
    </div>
     <div class="form-group">
        Kapak Fotografı :

        <asp:FileUpload ID="file_kapak" CssClass="form-control" runat="server" />
    </div>
    <div class="form-group">
        Facebook Adresiniz :
        <asp:TextBox ID="txt_facebook" CssClass="form-control" runat="server"></asp:TextBox>
    </div>
    <div class="form-group">
        İnstgram Adresiniz :
        <asp:TextBox ID="txt_instgram" CssClass="form-control" runat="server"></asp:TextBox>
    </div>
    <div class="form-group">
        Twitter Adresiniz:
        <asp:TextBox ID="txt_twitter" CssClass="form-control" runat="server"></asp:TextBox>
    </div>
    <div class="form-group">
        Biyografi
        <asp:TextBox ID="txt_biyo" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
    </div>
    <div class="form-group">
        Hobileri
        <asp:TextBox ID="txt_hobi" CssClass="form-control" runat="server"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:DropDownList ID="dl_city" CssClass="form-control" runat="server">
            <asp:ListItem>Adana</asp:ListItem>
            <asp:ListItem>Ankara</asp:ListItem>
            <asp:ListItem>Bursa</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
    </div>
    <div class="form-group">
                              <asp:Button ID="btn_update" runat="server" Text="Güncelle" CssClass="btn-success form-control" OnClick="btn_update_Click" />

    </div>


</asp:Content>
