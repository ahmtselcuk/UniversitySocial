<%@ Page Title="" Language="C#" MasterPageFile="~/HomeScreen.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="UniversitySocial.Default" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class=" col-md-12 well ">
        <div class="panel-body">
            <div class=" col-md-2">
                 <span class=" glyphicon glyphicon-asterisk"></span>
            </div>
            <div class=" col-md-7">
                <asp:TextBox ID="txt_durum" placeholder="bir durum yazın.." CssClass=" form-control" TextMode="MultiLine" runat="server" Columns="10" Rows="5"></asp:TextBox>
            </div>
            <div class="col-md-3 ">
                <h4>bir resim bırakabilirsiniz.</h4>
                <asp:FileUpload ID="file_resim" CssClass="form-control"  runat="server" />
                <br />
                <asp:Label ID="lbl_id" runat="server" Text="Label"></asp:Label>
                 <asp:Button ID="btn_durum" CssClass="btn-success form-control" runat="server" Text="Paylaş" OnClick="btn_durum_Click" />
            </div>
            <<asp:Panel ID="panel_durum" runat="server">
                  <div class="alert alert-success" role="alert">
                                        
			<button  type="button" class="close" data-dismiss="alert"><span>&times;</span></button>

			durumunuz paylaşıldı  !</div>

             </asp:Panel>
        </div>


        <div class="col-md-12">
            <div class="well-lg">
                <div class="panel-heading">
                    <h5>Son durumlar</h5>
                    <asp:DataList ID="DataList1" runat="server">
                        <ItemTemplate>
                            <div class="col-md-12 well-lg">
                                <div class="panel-heading">
                                    <h4>Son Durumlar</h4>
                                </div>
                                <div class="col-md-12">

                                </div>
                            </div>
                        </ItemTemplate>

                    </asp:DataList>
                </div>
            </div>
        </div>
        

       </div>
</asp:Content>
