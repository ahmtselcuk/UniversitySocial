<%@ Page Title="" Language="C#" MasterPageFile="~/HomeScreen.Master" AutoEventWireup="true" CodeBehind="SocialClub.aspx.cs" Inherits="UniversitySocial.SocialClub" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HaberDBConnectionString %>" SelectCommand="SELECT * FROM [SocialClub]"></asp:SqlDataSource>
    <div class="col-md-12">
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>

          
        <div class="media-left">
            <img src='<%#Eval("socialClub_Logo") %>' style="height:150px;" />
        </div>
        <div class="media-right">
            <asp:Label ID="Label1" runat="server" Text='<%#Eval("socialClub_Name") %>'></asp:Label>
            <asp:Label ID="Label2" runat="server" Text='<%#Eval("socialClub_Summary") %>'></asp:Label>
        </div>
        <div class="col-md-12">
            <asp:Label ID="Label3" runat="server" Text='<%#Eval("socialClub_Information") %>'></asp:Label>

        </div>
        
        <br />

    </div>
                  </ItemTemplate>
        </asp:ListView>
</asp:Content>
