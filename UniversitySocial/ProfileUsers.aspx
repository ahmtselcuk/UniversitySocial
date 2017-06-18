<%@ Page Title="" Language="C#" MasterPageFile="~/UsersProfile.Master" AutoEventWireup="true" CodeBehind="ProfileUsers.aspx.cs" Inherits="UniversitySocial.ProfileUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HaberDBConnectionString %>" SelectCommand="SELECT * FROM [Status] WHERE ([users_ID] = @users_ID)">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="" Name="users_ID" SessionField="users_ID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
      <asp:ListView ID="ListView1"    runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
    <div class=" col-md-12" style="  height:auto; ">
      

          
       <span class=" glyphicon glyphicon-calendar"></span> <asp:Label ID="lbl_tarih" runat="server" Text="Label"></asp:Label>
       <span class="glyphicon glyphicon-heart"></span>
        <asp:Label ID="lbl_likenumber" runat="server" Text='<%#Eval("status_LikeNumber") %>'></asp:Label>
    </div>
    <div class=" col-sm-12">
        <img alt="" src='<%#Eval("status_Photo") %>' class=" img-responsive" />
        <asp:Label ID="lbl_yazi"  runat="server" Text='<%#Eval("status_Content") %>'></asp:Label>
    </div>
      </ItemTemplate>
        </asp:ListView>
    <div class=" col-md-12">
        <asp:Button ID="btn_like" CssClass=" glyphicon glyphicon-heart" runat="server" Text="Button" />
        
    </div>
        </div>
</asp:Content>
