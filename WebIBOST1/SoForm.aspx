<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="SoForm.aspx.cs" Inherits="WebIBOST1.SoForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <br />



            <div class="container-fluid">                                 
                <div class="panel-group">
                    <div class="panel panel-primary">
                        <div class="panel-heading" style="height: 30px;">
                            <p>Sale Order Information</p>
                        </div>
                        <div class="panel-body">                            
                                <div id="divSave" runat="server" class="alert alert-success" role="alert"></div>
                                
                                <div class="panel panel-warning ">

                                    <div class="panel-heading" style="height: 40px;">
                                        <p>HEADER </p>
                                    </div>
                                   
                                    
                                    <%--<div class="panel-body">--%>
                                    <div class="row justify-content-md-center">
                                        
                                        
                                        <div class="col col-lg-2 col-sm-6">
                                            <div class="form-group">
                                                <label>LoadingDate</label>
                                                <input id="txtLoadingDate" runat="server" class="form-control" />
                                            </div>
                                        </div>

                                        <div class="col-md-2 col-sm-6">
                                            <div class="form-group">
                                                <label>OrderType</label>
                                                <input id="txtOrderType" runat="server" class="form-control" />
                                            </div>
                                        </div>

                                        <div class="col col-lg-2 col-sm-6">
                                            <div class="form-group">
                                                <label>OrderDate</label>
                                                <input id="txtOrderDate" runat="server" class="form-control" />
                                            </div>
                                        </div>

                                        <div class="col-md-2 col-sm-6">
                                            <div class="form-group">
                                                <label>PO Number</label>
                                                <input id="txtPO" runat="server" class="form-control" />
                                            </div>
                                        </div>

                                        <div class="col-md-2 col-sm-6">
                                            <div class="form-group">
                                                <label>INV</label>
                                                <input id="txtINV" runat="server" class="form-control" />
                                            </div>
                                        </div>

                                        <div class="col-md-2 col-sm-6">
                                            <div class="form-group">
                                                <label>SO Number</label>
                                                <input id="txtSO" runat="server" class="form-control" />
                                            </div>
                                        </div>
                                <%--    </div>
                                </div>
                       

                                <div class="panel panel-default">
                                    <div class="panel-heading" style="height: 40px;">
                                        <p>Ship key</p>
                                    </div>
                                  
                                    <div class="row justify-content-md-center">--%>
                                  
                                        <%-- <div class="panel-body">--%>        
                                    
                                       
                                        <div class="col-md-1 col-sm-6">
                                            <div class="form-group">
                                                <label>SoldTo</label>
                                                <input id="txtSoldTo" runat="server" class="form-control" />
                                            </div>
                                        </div>

                                        <div class="col-md-5 col-sm-6">
                                            <div class="form-group">
                                                <label>SoldToName</label>
                                                <input id="txtSoldToName" runat="server" class="form-control" />
                                            </div>
                                        </div>

                                        <div class="col-md-1 col-sm-6">
                                            <div class="form-group">
                                                <label>ShipTo</label>
                                                <input id="txtShipTo" runat="server" class="form-control" />
                                            </div>
                                        </div>

                                        <div class="col-md-5 col-sm-6">
                                            <div class="form-group">
                                                <label>ShipToName</label>
                                                <input id="txtShipToName" runat="server" class="form-control" />
                                            </div>
                                        </div>

                                        <div class="col-md-6 col-sm-6">
                                            <div class="form-group">
                                                <label>DestinationPort</label>
                                                <input id="txtDestinationPort" runat="server" class="form-control" />
                                            </div>
                                        </div>

                                        <div class="col-md-2 col-sm-6">
                                            <div class="form-group">
                                                <label>TotalFCLS</label>
                                                <input id="txtTotalFCLS" runat="server" class="form-control" />
                                            </div>
                                        </div>

                                        <div class="col-md-2 col-sm-6">
                                            <div class="form-group">
                                                <label>TotalCartons</label>
                                                <input id="txtTotalCartons" runat="server" class="form-control" />
                                            </div>
                                        </div>

                                        <div class="col-md-2 col-sm-6">
                                            <div class="form-group">
                                                <label>TotalFOBSO</label>
                                                <input id="txtTotalFOBSO" runat="server" class="form-control" />
                                            </div>
                                        </div>
                                            
                                        
                                    </div>
                                </div>
                                
                                
                                <div class="panel panel-warning ">
                                    <div class="panel-heading" style="height: 40px;">
                                       HEADER INPUT FORM
                                    </div>
                                  
                                    
                                    <div class="row justify-content-md-center">  
                                    <%--<div class="panel-body">--%>
                                        

                                        <div class="col-md-2 col-sm-6">
                                            <div class="form-group">
                                                <label>PaymentTerm</label>
                                                <input id="txtPaymentTerm" runat="server" class="form-control" />
                                            </div>
                                        </div>

                                        <div class="col-md-1 col-sm-6">
                                            <div class="form-group">
                                                <label>Incoterm</label>
                                                <input id="txtIncoterm" runat="server" class="form-control" />
                                            </div>
                                        </div>

                                        <div class="col-md-1 col-sm-6">
                                            <div class="form-group">
                                                <label>Currency</label>
                                                <input id="txtCurrency" runat="server" class="form-control" />
                                            </div>
                                        </div>

                                         <div class="col-md-2 col-sm-6">
                                            <div class="form-group">
                                                <label>TTSlip</label>
                                                <input id="txtTTSlip" runat="server" class="form-control" />
                                            </div>
                                        </div>

                                        <div class="col-md-2 col-sm-6">
                                            <div class="form-group">
                                                <label>LCSlip</label>
                                                <input id="txtLCSlip" runat="server" class="form-control" />
                                            </div>
                                        </div>

                                        <div class="col-md-2 col-sm-6">
                                            <div class="form-group">
                                                <label>SpecialApporove</label>
                                                <input id="txtSpecialApporove" runat="server" class="form-control" />
                                            </div>
                                        </div>

                                        <div class="col-md-2 col-sm-6">
                                            <div class="form-group">
                                                <label>LC</label>
                                                <input id="txtLC" runat="server" class="form-control" />
                                            </div>
                                        </div>

                                        <div class="col-md-2 col-sm-6">
                                            <div class="form-group">
                                                <label>TT</label>
                                                <input id="txtTT" runat="server" class="form-control" />
                                            </div>
                                        </div>

                                        <div class="col-md-2 col-sm-6">
                                            <div class="form-group">
                                                <label>ETD</label>
                                                <input id="txtETD" runat="server" class="form-control" />
                                            </div>
                                        </div>

                                        <div class="col-md-2 col-sm-6">
                                            <div class="form-group">
                                                <label>ETA</label>
                                                <input id="txtETA" runat="server" class="form-control" />
                                            </div>
                                        </div>

                                        <div class="col-md-2 col-sm-6">
                                            <div class="form-group">
                                                <label>CfmUncfm</label>
                                                <input id="txtCfmUncfm" runat="server" class="form-control" />
                                            </div>
                                        </div>

                                        <div class="col-md-2 col-sm-6">
                                            <div class="form-group">
                                                <label>DocDate</label>
                                                <input id="txtDocDate" runat="server" class="form-control" />
                                            </div>
                                        </div>

                                        <div class="col-md-2 col-sm-6">
                                            <div class="form-group">
                                                <label>DocAWB</label>
                                                <input id="txtDocAWB" runat="server" class="form-control" />
                                            </div>
                                        </div>
                                    
                                    </div>
                                </div>

                                <br />

                                <div class="form-group">
                                    <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save" CssClass="btn btn-primary" />
                                </div>
                            
                        </div>
                    </div>
                </div>
            </div>

          
            


        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
