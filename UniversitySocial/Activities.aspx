<%@ Page Title="" Language="C#" MasterPageFile="~/HomeScreen.Master" AutoEventWireup="true" CodeBehind="Activities.aspx.cs" Inherits="UniversitySocial.Activities" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HaberDBConnectionString %>" SelectCommand="SELECT * FROM [Activities]"></asp:SqlDataSource>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>

      
  <div class="col-md-12" style="padding:10px;">
              <div class="media-left">
                  <asp:Label ID="Label3" runat="server" Text='<%#Eval("activities_Date") %>'></asp:Label><br />
                    <asp:Label ID="Label2" runat="server" Text='<%#Eval("activities_Time") %>'></asp:Label>
              </div>
             <div class="media-right">
                
                 <asp:Label ID="Label1" runat="server" Text='<%#Eval("activities_Content") %>'></asp:Label><br />
               
             </div>
              <div>
                 
              </div>
              
              
          </div>
              </ItemTemplate>
    </asp:ListView>
</asp:Content>
