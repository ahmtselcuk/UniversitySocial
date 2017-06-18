<%@ Page Title="" Language="C#" MasterPageFile="~/HomeScreen.Master" AutoEventWireup="true" CodeBehind="ArticleList.aspx.cs" Inherits="UniversitySocial.ArticleList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HaberDBConnectionString %>" SelectCommand="SELECT Article.article_ID AS Expr1, Article.article_Title, Article.article_Summary, Article.article_Content, Article.article_Date, Article.article_NumberOfLikes, Article.article_NumberOfReadings, Article.users_ID, Users.users_ID AS Expr2, Users.users_Name, Users.users_Surname, Users.users_Photo FROM Users CROSS JOIN Article"></asp:SqlDataSource>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">

        <ItemTemplate>
          <div class="col-md-12" style="padding:10px;">
              <div class="media-left">
                   <img src='<%#Eval("users_Photo") %>' style="height:100px;"  class=" img-responsive"  />
              </div>
             <div class="media-right">
                  <asp:Label ID="Label2" runat="server" Text='<%#Eval("article_Date") %>'></asp:Label><br />
                 <asp:Label ID="Label1" runat="server" Text='<%#Eval("article_Title") %>'></asp:Label><br />
                 <a href="Article_Detail.aspx?articleID>Detaylı Göster</a>
             </div>
              <div>
                 
              </div>
              
              
          </div>
        </ItemTemplate>

    </asp:ListView>
</asp:Content>
