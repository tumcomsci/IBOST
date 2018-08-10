<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ManageUserAuthorize.aspx.cs" Inherits="WebIBOST1.ManageUserAuthorize" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <br />
    <br />
    <br />
    <div class="container-fluid">

        <ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">

            <li class="nav-item">
                <a class="nav-link" id="nav-UserGroup-tab" data-toggle="tab" href="#usergroup" role="tab" aria-controls="usergroup" aria-selected="false">Manage User Group</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="nav-role-tab" data-toggle="tab" href="#role" role="tab" aria-controls="role" aria-selected="false">Manage Role</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="nav-groupRole-tab" data-toggle="tab" href="#grouprole" role="tab" aria-controls="grouprole" aria-selected="false">Manage Group Role</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="nav-right-tab" data-toggle="tab" href="#right" role="tab" aria-controls="right" aria-selected="false">Manage Right</a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" id="nav-home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Manage User</a>
            </li>

        </ul>
        <div class="tab-content" id="myTabContent">

            <div class="tab-pane fade" id="usergroup" role="tabpanel" aria-labelledby="nav-UserGroup-tab">
                 <asp:Table ID="tblData_UserGroup" runat="server"></asp:Table>
            </div>
            <div class="tab-pane fade" id="role" role="tabpanel" aria-labelledby="nav-role-tab">
                 <asp:Table ID="tblData_Role" runat="server"></asp:Table>
            </div>
            <div class="tab-pane fade" id="grouprole" role="tabpanel" aria-labelledby="nav-groupRole-tab">
                 <asp:Table ID="tblData_GroupRole" runat="server"></asp:Table>
            </div>
            <div class="tab-pane fade" id="right" role="tabpanel" aria-labelledby="nav-right-tab">
                 <asp:Table ID="tblData_Right" runat="server"></asp:Table>
            </div>
            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="nav-home-tab">
                <asp:Table ID="tblData_User" runat="server"></asp:Table>
            </div>
        </div>

    </div>




</asp:Content>
