<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="SoForm.aspx.cs" Inherits="WebIBOST1.SoForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="panel-group">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h4>Sale Order Information</h4>
                </div>
                <div class="panel-body">
                    <div class="form-group">
                        <label>PO Number</label>
                        <input id="txtPO" runat="server" class="form-control" readonly="readonly" />
                        <label>SO Number</label>
                        <input id="txtSO" runat="server" class="form-control" />
                    </div>
                    <div class="form-group">
                   
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</asp:Content>
