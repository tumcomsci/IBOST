<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="SoForm.aspx.cs" Inherits="WebIBOST1.SoForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <br />
            <br />
            <br />
            <div class="container-fluid">
                <div class="panel-group">
                    <div class="panel panel-primary">
                        <div class="panel-heading" style="height: 30px;">
                            <p>Sale Order Information</p>
                        </div>

                        <ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link bg-success active" id="SOHeader-tab" data-toggle="tab" href="#SOHEADER" role="tab" aria-controls="SOHEADER" aria-selected="true">HEADER INPUT</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link " id="SODetail-tab" data-toggle="tab" href="#SODETAIL" role="tab" aria-controls="SODETAIL" aria-selected="false">DEATIL INPUT</a>
                            </li>

                        </ul>
                        <div class="tab-content" id="myTabContent">

                            <!--/. SOHEADER -->
                            <div class="tab-pane fade" id="SOHEADER" role="tabpanel" aria-labelledby="SOHeader-tab">

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
                                                    <div id="datepicker" >
                                                    <input id="txtTTSlip" runat="server" class="form-control" />
                                                    </div>
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
                                </div>

                            </div>

                            <!-- /. SODetails-->
                            <div class="tab-pane fade" id="SODETAIL" role="tabpanel" aria-labelledby="SODetail-tab">

                                <div id="page-wrapper">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <h1 class="page-header">Tables</h1>
                                            </div>
                                            <!-- /.col-lg-12 -->
                                        </div>
                                        <!-- /.row -->
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        DataTables Advanced Tables
                       
                                                    </div>
                                                    <!-- /.panel-heading -->
                                                    <div class="panel-body">
                                                        <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                                            <thead>
                                                                <tr>
                                                                    <th>Rendering engine</th>
                                                                    <th>Browser</th>
                                                                    <th>Platform(s)</th>
                                                                    <th>Engine version</th>
                                                                    <th>CSS grade</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr class="odd gradeX">
                                                                    <td>Trident</td>
                                                                    <td>Internet Explorer 4.0</td>
                                                                    <td>Win 95+</td>
                                                                    <td class="center">4</td>
                                                                    <td class="center">X</td>
                                                                </tr>
                                                                <tr class="even gradeC">
                                                                    <td>Trident</td>
                                                                    <td>Internet Explorer 5.0</td>
                                                                    <td>Win 95+</td>
                                                                    <td class="center">5</td>
                                                                    <td class="center">C</td>
                                                                </tr>
                                                                <tr class="odd gradeA">
                                                                    <td>Trident</td>
                                                                    <td>Internet Explorer 5.5</td>
                                                                    <td>Win 95+</td>
                                                                    <td class="center">5.5</td>
                                                                    <td class="center">A</td>
                                                                </tr>
                                                                <tr class="even gradeA">
                                                                    <td>Trident</td>
                                                                    <td>Internet Explorer 6</td>
                                                                    <td>Win 98+</td>
                                                                    <td class="center">6</td>
                                                                    <td class="center">A</td>
                                                                </tr>
                                                                <tr class="odd gradeA">
                                                                    <td>Trident</td>
                                                                    <td>Internet Explorer 7</td>
                                                                    <td>Win XP SP2+</td>
                                                                    <td class="center">7</td>
                                                                    <td class="center">A</td>
                                                                </tr>
                                                                <tr class="even gradeA">
                                                                    <td>Trident</td>
                                                                    <td>AOL browser (AOL desktop)</td>
                                                                    <td>Win XP</td>
                                                                    <td class="center">6</td>
                                                                    <td class="center">A</td>
                                                                </tr>
                                                                <tr class="gradeA">
                                                                    <td>Gecko</td>
                                                                    <td>Firefox 1.0</td>
                                                                    <td>Win 98+ / OSX.2+</td>
                                                                    <td class="center">1.7</td>
                                                                    <td class="center">A</td>
                                                                </tr>
                                                                <tr class="gradeA">
                                                                    <td>Gecko</td>
                                                                    <td>Firefox 1.5</td>
                                                                    <td>Win 98+ / OSX.2+</td>
                                                                    <td class="center">1.8</td>
                                                                    <td class="center">A</td>
                                                                </tr>
                                                                <tr class="gradeA">
                                                                    <td>Gecko</td>
                                                                    <td>Firefox 2.0</td>
                                                                    <td>Win 98+ / OSX.2+</td>
                                                                    <td class="center">1.8</td>
                                                                    <td class="center">A</td>
                                                                </tr>
                                                                <tr class="gradeA">
                                                                    <td>Gecko</td>
                                                                    <td>Firefox 3.0</td>
                                                                    <td>Win 2k+ / OSX.3+</td>
                                                                    <td class="center">1.9</td>
                                                                    <td class="center">A</td>
                                                                </tr>
                                                                <tr class="gradeA">
                                                                    <td>Gecko</td>
                                                                    <td>Camino 1.0</td>
                                                                    <td>OSX.2+</td>
                                                                    <td class="center">1.8</td>
                                                                    <td class="center">A</td>
                                                                </tr>
                                                                <tr class="gradeA">
                                                                    <td>Gecko</td>
                                                                    <td>Camino 1.5</td>
                                                                    <td>OSX.3+</td>
                                                                    <td class="center">1.8</td>
                                                                    <td class="center">A</td>
                                                                </tr>
                                                                <tr class="gradeA">
                                                                    <td>Gecko</td>
                                                                    <td>Netscape 7.2</td>
                                                                    <td>Win 95+ / Mac OS 8.6-9.2</td>
                                                                    <td class="center">1.7</td>
                                                                    <td class="center">A</td>
                                                                </tr>
                                                                <tr class="gradeA">
                                                                    <td>Gecko</td>
                                                                    <td>Netscape Browser 8</td>
                                                                    <td>Win 98SE+</td>
                                                                    <td class="center">1.7</td>
                                                                    <td class="center">A</td>
                                                                </tr>
                                                                <tr class="gradeA">
                                                                    <td>Gecko</td>
                                                                    <td>Netscape Navigator 9</td>
                                                                    <td>Win 98+ / OSX.2+</td>
                                                                    <td class="center">1.8</td>
                                                                    <td class="center">A</td>
                                                                </tr>
                                                                <tr class="gradeA">
                                                                    <td>Gecko</td>
                                                                    <td>Mozilla 1.0</td>
                                                                    <td>Win 95+ / OSX.1+</td>
                                                                    <td class="center">1</td>
                                                                    <td class="center">A</td>
                                                                </tr>
                                                                <tr class="gradeA">
                                                                    <td>Gecko</td>
                                                                    <td>Mozilla 1.1</td>
                                                                    <td>Win 95+ / OSX.1+</td>
                                                                    <td class="center">1.1</td>
                                                                    <td class="center">A</td>
                                                                </tr>
                                                                <tr class="gradeA">
                                                                    <td>Gecko</td>
                                                                    <td>Mozilla 1.2</td>
                                                                    <td>Win 95+ / OSX.1+</td>
                                                                    <td class="center">1.2</td>
                                                                    <td class="center">A</td>
                                                                </tr>
                                                                <tr class="gradeA">
                                                                    <td>Gecko</td>
                                                                    <td>Mozilla 1.3</td>
                                                                    <td>Win 95+ / OSX.1+</td>
                                                                    <td class="center">1.3</td>
                                                                    <td class="center">A</td>
                                                                </tr>
                                                                <tr class="gradeA">
                                                                    <td>Gecko</td>
                                                                    <td>Mozilla 1.4</td>
                                                                    <td>Win 95+ / OSX.1+</td>
                                                                    <td class="center">1.4</td>
                                                                    <td class="center">A</td>
                                                                </tr>
                                                                <tr class="gradeA">
                                                                    <td>Gecko</td>
                                                                    <td>Mozilla 1.5</td>
                                                                    <td>Win 95+ / OSX.1+</td>
                                                                    <td class="center">1.5</td>
                                                                    <td class="center">A</td>
                                                                </tr>
                                                                <tr class="gradeA">
                                                                    <td>Gecko</td>
                                                                    <td>Mozilla 1.6</td>
                                                                    <td>Win 95+ / OSX.1+</td>
                                                                    <td class="center">1.6</td>
                                                                    <td class="center">A</td>
                                                                </tr>
                                                                <tr class="gradeA">
                                                                    <td>Gecko</td>
                                                                    <td>Mozilla 1.7</td>
                                                                    <td>Win 98+ / OSX.1+</td>
                                                                    <td class="center">1.7</td>
                                                                    <td class="center">A</td>
                                                                </tr>
                                                                <tr class="gradeA">
                                                                    <td>Gecko</td>
                                                                    <td>Mozilla 1.8</td>
                                                                    <td>Win 98+ / OSX.1+</td>
                                                                    <td class="center">1.8</td>
                                                                    <td class="center">A</td>
                                                                </tr>
                                                                <tr class="gradeA">
                                                                    <td>Gecko</td>
                                                                    <td>Seamonkey 1.1</td>
                                                                    <td>Win 98+ / OSX.2+</td>
                                                                    <td class="center">1.8</td>
                                                                    <td class="center">A</td>
                                                                </tr>
                                                                <tr class="gradeA">
                                                                    <td>Gecko</td>
                                                                    <td>Epiphany 2.20</td>
                                                                    <td>Gnome</td>
                                                                    <td class="center">1.8</td>
                                                                    <td class="center">A</td>
                                                                </tr>
                                                                <tr class="gradeA">
                                                                    <td>Webkit</td>
                                                                    <td>Safari 1.2</td>
                                                                    <td>OSX.3</td>
                                                                    <td class="center">125.5</td>
                                                                    <td class="center">A</td>
                                                                </tr>
                                                                <tr class="gradeA">
                                                                    <td>Webkit</td>
                                                                    <td>Safari 1.3</td>
                                                                    <td>OSX.3</td>
                                                                    <td class="center">312.8</td>
                                                                    <td class="center">A</td>
                                                                </tr>
                                                                <tr class="gradeA">
                                                                    <td>Webkit</td>
                                                                    <td>Safari 2.0</td>
                                                                    <td>OSX.4+</td>
                                                                    <td class="center">419.3</td>
                                                                    <td class="center">A</td>
                                                                </tr>
                                                                <tr class="gradeA">
                                                                    <td>Webkit</td>
                                                                    <td>Safari 3.0</td>
                                                                    <td>OSX.4+</td>
                                                                    <td class="center">522.1</td>
                                                                    <td class="center">A</td>
                                                                </tr>
                                                                <tr class="gradeA">
                                                                    <td>Webkit</td>
                                                                    <td>OmniWeb 5.5</td>
                                                                    <td>OSX.4+</td>
                                                                    <td class="center">420</td>
                                                                    <td class="center">A</td>
                                                                </tr>
                                                                <tr class="gradeA">
                                                                    <td>Webkit</td>
                                                                    <td>iPod Touch / iPhone</td>
                                                                    <td>iPod</td>
                                                                    <td class="center">420.1</td>
                                                                    <td class="center">A</td>
                                                                </tr>
                                                                <tr class="gradeA">
                                                                    <td>Webkit</td>
                                                                    <td>S60</td>
                                                                    <td>S60</td>
                                                                    <td class="center">413</td>
                                                                    <td class="center">A</td>
                                                                </tr>
                                                                <tr class="gradeA">
                                                                    <td>Presto</td>
                                                                    <td>Opera 7.0</td>
                                                                    <td>Win 95+ / OSX.1+</td>
                                                                    <td class="center">-</td>
                                                                    <td class="center">A</td>
                                                                </tr>
                                                                <tr class="gradeA">
                                                                    <td>Presto</td>
                                                                    <td>Opera 7.5</td>
                                                                    <td>Win 95+ / OSX.2+</td>
                                                                    <td class="center">-</td>
                                                                    <td class="center">A</td>
                                                                </tr>
                                                                <tr class="gradeA">
                                                                    <td>Presto</td>
                                                                    <td>Opera 8.0</td>
                                                                    <td>Win 95+ / OSX.2+</td>
                                                                    <td class="center">-</td>
                                                                    <td class="center">A</td>
                                                                </tr>
                                                                <tr class="gradeA">
                                                                    <td>Presto</td>
                                                                    <td>Opera 8.5</td>
                                                                    <td>Win 95+ / OSX.2+</td>
                                                                    <td class="center">-</td>
                                                                    <td class="center">A</td>
                                                                </tr>
                                                                <tr class="gradeA">
                                                                    <td>Presto</td>
                                                                    <td>Opera 9.0</td>
                                                                    <td>Win 95+ / OSX.3+</td>
                                                                    <td class="center">-</td>
                                                                    <td class="center">A</td>
                                                                </tr>
                                                                <tr class="gradeA">
                                                                    <td>Presto</td>
                                                                    <td>Opera 9.2</td>
                                                                    <td>Win 88+ / OSX.3+</td>
                                                                    <td class="center">-</td>
                                                                    <td class="center">A</td>
                                                                </tr>
                                                                <tr class="gradeA">
                                                                    <td>Presto</td>
                                                                    <td>Opera 9.5</td>
                                                                    <td>Win 88+ / OSX.3+</td>
                                                                    <td class="center">-</td>
                                                                    <td class="center">A</td>
                                                                </tr>
                                                                <tr class="gradeA">
                                                                    <td>Presto</td>
                                                                    <td>Opera for Wii</td>
                                                                    <td>Wii</td>
                                                                    <td class="center">-</td>
                                                                    <td class="center">A</td>
                                                                </tr>
                                                                <tr class="gradeA">
                                                                    <td>Presto</td>
                                                                    <td>Nokia N800</td>
                                                                    <td>N800</td>
                                                                    <td class="center">-</td>
                                                                    <td class="center">A</td>
                                                                </tr>
                                                                <tr class="gradeA">
                                                                    <td>Presto</td>
                                                                    <td>Nintendo DS browser</td>
                                                                    <td>Nintendo DS</td>
                                                                    <td class="center">8.5</td>
                                                                    <td class="center">C/A<sup>1</sup>
                                                                    </td>
                                                                </tr>
                                                                <tr class="gradeC">
                                                                    <td>KHTML</td>
                                                                    <td>Konqureror 3.1</td>
                                                                    <td>KDE 3.1</td>
                                                                    <td class="center">3.1</td>
                                                                    <td class="center">C</td>
                                                                </tr>
                                                                <tr class="gradeA">
                                                                    <td>KHTML</td>
                                                                    <td>Konqureror 3.3</td>
                                                                    <td>KDE 3.3</td>
                                                                    <td class="center">3.3</td>
                                                                    <td class="center">A</td>
                                                                </tr>
                                                                <tr class="gradeA">
                                                                    <td>KHTML</td>
                                                                    <td>Konqureror 3.5</td>
                                                                    <td>KDE 3.5</td>
                                                                    <td class="center">3.5</td>
                                                                    <td class="center">A</td>
                                                                </tr>
                                                                <tr class="gradeX">
                                                                    <td>Tasman</td>
                                                                    <td>Internet Explorer 4.5</td>
                                                                    <td>Mac OS 8-9</td>
                                                                    <td class="center">-</td>
                                                                    <td class="center">X</td>
                                                                </tr>
                                                                <tr class="gradeC">
                                                                    <td>Tasman</td>
                                                                    <td>Internet Explorer 5.1</td>
                                                                    <td>Mac OS 7.6-9</td>
                                                                    <td class="center">1</td>
                                                                    <td class="center">C</td>
                                                                </tr>
                                                                <tr class="gradeC">
                                                                    <td>Tasman</td>
                                                                    <td>Internet Explorer 5.2</td>
                                                                    <td>Mac OS 8-X</td>
                                                                    <td class="center">1</td>
                                                                    <td class="center">C</td>
                                                                </tr>
                                                                <tr class="gradeA">
                                                                    <td>Misc</td>
                                                                    <td>NetFront 3.1</td>
                                                                    <td>Embedded devices</td>
                                                                    <td class="center">-</td>
                                                                    <td class="center">C</td>
                                                                </tr>
                                                                <tr class="gradeA">
                                                                    <td>Misc</td>
                                                                    <td>NetFront 3.4</td>
                                                                    <td>Embedded devices</td>
                                                                    <td class="center">-</td>
                                                                    <td class="center">A</td>
                                                                </tr>
                                                                <tr class="gradeX">
                                                                    <td>Misc</td>
                                                                    <td>Dillo 0.8</td>
                                                                    <td>Embedded devices</td>
                                                                    <td class="center">-</td>
                                                                    <td class="center">X</td>
                                                                </tr>
                                                                <tr class="gradeX">
                                                                    <td>Misc</td>
                                                                    <td>Links</td>
                                                                    <td>Text only</td>
                                                                    <td class="center">-</td>
                                                                    <td class="center">X</td>
                                                                </tr>
                                                                <tr class="gradeX">
                                                                    <td>Misc</td>
                                                                    <td>Lynx</td>
                                                                    <td>Text only</td>
                                                                    <td class="center">-</td>
                                                                    <td class="center">X</td>
                                                                </tr>
                                                                <tr class="gradeC">
                                                                    <td>Misc</td>
                                                                    <td>IE Mobile</td>
                                                                    <td>Windows Mobile 6</td>
                                                                    <td class="center">-</td>
                                                                    <td class="center">C</td>
                                                                </tr>
                                                                <tr class="gradeC">
                                                                    <td>Misc</td>
                                                                    <td>PSP browser</td>
                                                                    <td>PSP</td>
                                                                    <td class="center">-</td>
                                                                    <td class="center">C</td>
                                                                </tr>
                                                                <tr class="gradeU">
                                                                    <td>Other browsers</td>
                                                                    <td>All others</td>
                                                                    <td>-</td>
                                                                    <td class="center">-</td>
                                                                    <td class="center">U</td>
                                                                </tr>
                                                            </tbody>
                                                        </table>


                                                    </div>
                                                    <!-- /.panel-body -->
                                                </div>
                                                <!-- /.panel -->
                                            </div>
                                            <!-- /.col-lg-12 -->
                                        </div>
                                        <!-- /.row -->

                                        <!-- Button trigger modal -->
                                        <div class="col-md-12 text-center">
                                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                                                OPEN CHANGE
                                            </button>

                                            <!-- Modal -->
                                            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                <div class="modal-dialog" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <div class="modal-body">
                                                            ...                  
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                            <button type="button" class="btn btn-primary">Save changes</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!--/. button modal -->

                                    </div>
                                </div>
                                <!-- /#page-wrapper -->

                            </div>

                            <br />

                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-12 text-center">
                <div class="form-group">
                    <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save" CssClass="btn btn-primary" />
                </div>


                <script>
                    $('#datepicker').datepicker({
                        uiLibrary: 'bootstrap'
                    });
                </script>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
