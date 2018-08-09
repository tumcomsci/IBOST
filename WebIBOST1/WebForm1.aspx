<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebIBOST1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

    <input id="datepicker" width="200px" />
    <script>
                    $('#datepicker').datepicker({
                        uiLibrary: 'bootstrap'
                    });
                </script>
  
</asp:Content>
