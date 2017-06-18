<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="UsersEdit.aspx.cs" Inherits="UniversitySocial.admin.UsersEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HaberDBConnectionString %>" SelectCommand="SELECT [users_Name], [users_Surname], [users_Email], [users_Department], [users_Faculty], [users_Homeland] FROM [Users]"></asp:SqlDataSource>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">

        <AlternatingItemTemplate>
            <tr style="background-color:#FFF8DC;">
                <td>
                    <asp:Label ID="users_NameLabel" runat="server" Text='<%# Eval("users_Name") %>' />
                </td>
                <td>
                    <asp:Label ID="users_SurnameLabel" runat="server" Text='<%# Eval("users_Surname") %>' />
                </td>
                <td>
                    <asp:Label ID="users_EmailLabel" runat="server" Text='<%# Eval("users_Email") %>' />
                </td>
                <td>
                    <asp:Label ID="users_DepartmentLabel" runat="server" Text='<%# Eval("users_Department") %>' />
                </td>
                <td>
                    <asp:Label ID="users_FacultyLabel" runat="server" Text='<%# Eval("users_Faculty") %>' />
                </td>
                <td>
                    <asp:Label ID="users_HomelandLabel" runat="server" Text='<%# Eval("users_Homeland") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color:#008A8C;color: #FFFFFF;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
                <td>
                    <asp:TextBox ID="users_NameTextBox" runat="server" Text='<%# Bind("users_Name") %>' />
                </td>
                <td>
                    <asp:TextBox ID="users_SurnameTextBox" runat="server" Text='<%# Bind("users_Surname") %>' />
                </td>
                <td>
                    <asp:TextBox ID="users_EmailTextBox" runat="server" Text='<%# Bind("users_Email") %>' />
                </td>
                <td>
                    <asp:TextBox ID="users_DepartmentTextBox" runat="server" Text='<%# Bind("users_Department") %>' />
                </td>
                <td>
                    <asp:TextBox ID="users_FacultyTextBox" runat="server" Text='<%# Bind("users_Faculty") %>' />
                </td>
                <td>
                    <asp:TextBox ID="users_HomelandTextBox" runat="server" Text='<%# Bind("users_Homeland") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </td>
                <td>
                    <asp:TextBox ID="users_NameTextBox" runat="server" Text='<%# Bind("users_Name") %>' />
                </td>
                <td>
                    <asp:TextBox ID="users_SurnameTextBox" runat="server" Text='<%# Bind("users_Surname") %>' />
                </td>
                <td>
                    <asp:TextBox ID="users_EmailTextBox" runat="server" Text='<%# Bind("users_Email") %>' />
                </td>
                <td>
                    <asp:TextBox ID="users_DepartmentTextBox" runat="server" Text='<%# Bind("users_Department") %>' />
                </td>
                <td>
                    <asp:TextBox ID="users_FacultyTextBox" runat="server" Text='<%# Bind("users_Faculty") %>' />
                </td>
                <td>
                    <asp:TextBox ID="users_HomelandTextBox" runat="server" Text='<%# Bind("users_Homeland") %>' />
                </td>
            </tr>
        </InsertItemTemplate>

        <ItemTemplate>
            <tr style="background-color:#DCDCDC;color: #000000;">
                <td>
                    <asp:Label ID="users_NameLabel" runat="server" Text='<%# Eval("users_Name") %>' />
                </td>
                <td>
                    <asp:Label ID="users_SurnameLabel" runat="server" Text='<%# Eval("users_Surname") %>' />
                </td>
                <td>
                    <asp:Label ID="users_EmailLabel" runat="server" Text='<%# Eval("users_Email") %>' />
                </td>
                <td>
                    <asp:Label ID="users_DepartmentLabel" runat="server" Text='<%# Eval("users_Department") %>' />
                </td>
                <td>
                    <asp:Label ID="users_FacultyLabel" runat="server" Text='<%# Eval("users_Faculty") %>' />
                </td>
                <td>
                    <asp:Label ID="users_HomelandLabel" runat="server" Text='<%# Eval("users_Homeland") %>' />
                </td>
            </tr>
        </ItemTemplate>

        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                <th runat="server">users_Name</th>
                                <th runat="server">users_Surname</th>
                                <th runat="server">users_Email</th>
                                <th runat="server">users_Department</th>
                                <th runat="server">users_Faculty</th>
                                <th runat="server">users_Homeland</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                <td>
                    <asp:Label ID="users_NameLabel" runat="server" Text='<%# Eval("users_Name") %>' />
                </td>
                <td>
                    <asp:Label ID="users_SurnameLabel" runat="server" Text='<%# Eval("users_Surname") %>' />
                </td>
                <td>
                    <asp:Label ID="users_EmailLabel" runat="server" Text='<%# Eval("users_Email") %>' />
                </td>
                <td>
                    <asp:Label ID="users_DepartmentLabel" runat="server" Text='<%# Eval("users_Department") %>' />
                </td>
                <td>
                    <asp:Label ID="users_FacultyLabel" runat="server" Text='<%# Eval("users_Faculty") %>' />
                </td>
                <td>
                    <asp:Label ID="users_HomelandLabel" runat="server" Text='<%# Eval("users_Homeland") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>

    </asp:ListView>

</asp:Content>
