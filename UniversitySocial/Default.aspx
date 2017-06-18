<%@ Page Title="" Language="C#" MasterPageFile="~/HomeScreen.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="UniversitySocial.Default" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        #file_photo{

            background-image:url("assets/logo.png")
        }
    </style>
 <div class="col-md-8 col-sm-12 pull-left posttimeline">
        <div class="panel panel-default">
          <div class="panel-body">
            <div class="status-upload nopaddingbtm">
              <form>
                  <asp:TextBox ID="txt_status" CssClass="form-control " TextMode="MultiLine" placeholder="What are you doing right now?"  runat="server"></asp:TextBox>
                <br>
                <ul class="nav nav-pills pull-left ">
                  <li><a title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Audio"><i class="glyphicon glyphicon-bullhorn"></i></a></li>
                  <li><a title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Video"><i class=" glyphicon glyphicon-facetime-video"></i></a></li>
                     <li><a title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Picture">
                  <asp:FileUpload ID="file_photo"  placeholder="dgdagda"  runat="server" /></a></li>
                </ul>
                  <asp:Button ID="btn_share" CssClass="btn btn-success" runat="server" Text="Paylaş" OnClick="btn_share_Click" />
                  <asp:Label ID="lbl_id" runat="server" Text="Label"></asp:Label>
              </form>
            </div>
            <!-- Status Upload  --> 
          </div>
        </div>
        <div class="panel panel-default">
          <div class="btn-group pull-right postbtn">
            <button type="button" class="dotbtn dropdown-toggle" data-toggle="dropdown" aria-expanded="false"> <span class="dots"></span> </button>
            <ul class="dropdown-menu pull-right" role="menu">
              <li><a href="javascript:void(0)">Hide this</a></li>
              <li><a href="javascript:void(0)">Report</a></li>
            </ul>
          </div>
          <div class="col-md-12">
            <div class="media">

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HaberDBConnectionString %>" SelectCommand="SELECT Status.status_ID, Status.status_Date, Status.status_LikeNumber, Status.status_Photo, Status.status_Content, Status.users_ID, Users.users_ID AS Expr1, Users.users_Name, Users.users_Surname, Users.users_Photo FROM Status INNER JOIN Users ON Status.users_ID = Users.users_ID"></asp:SqlDataSource>
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>

                  
              <div class="media-left"> <a href="javascript:void(0)"> <img height="50" src='<%#Eval("status_Photo") %>' alt="" class="media-object"> </a> &nbsp;&nbsp;&nbsp;</div>
              <div class="media-body">
                <h4 class="media-heading"><%#Eval("users_Name") %><br>
                  <small><i class="fa fa-clock-o"></i> <%#Eval("status_Date") %></small> </h4>
                <p><%#Eval("status_Content") %> </p>

                <ul class="nav nav-pills pull-left ">
                  <li><a href="" title=""><i class="glyphicon glyphicon-thumbs-up"></i> <%#Eval("status_LikeNumber") %></a></li>
          
                 
                </ul>
              </div>
  </ItemTemplate>

                </asp:DataList>
            </div>
          </div>
     
        </div>
        <div class="panel panel-default">
          <div class="btn-group pull-right postbtn">
            <button type="button" class="dotbtn dropdown-toggle" data-toggle="dropdown" aria-expanded="false"> <span class="dots"></span> </button>
            <ul class="dropdown-menu pull-right" role="menu">
              <li><a href="javascript:void(0)">Hide this</a></li>
              <li><a href="javascript:void(0)">Report</a></li>
            </ul>
          </div>
          <div class="col-md-12">
            <div class="media">
              <div class="media-left">  <img src='<%#Eval("users_Photo") %>' alt="" class="media-object"> </div>
              <div class="media-body">
                <h4 class="media-heading"> <%#Eval("users_Name" + "users_Surname") %> <br>
                  <small><i class="fa fa-clock-o"></i> <%#Eval("status_Date") %></small> </h4>
                <p><%#Eval("status_Content") %> </p>
                <ul class="nav nav-pills pull-left ">
                  <li><a href="" title=""><i class="glyphicon glyphicon-thumbs-up"></i> <%#Eval("status_LikeNumber") %></a></li>
                  <li><a href="" title=""><i class=" glyphicon glyphicon-comment"></i> <%#Eval("status_CommentNumber") %> </a></li>
                 
                </ul>
              </div>
            </div>
          </div>
  
     
</asp:Content>
