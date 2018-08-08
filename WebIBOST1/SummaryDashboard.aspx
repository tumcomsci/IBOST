﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="SummaryDashboard.aspx.cs" Inherits="WebIBOST1.SummaryDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <br />
    <br />
    <br />
    <br />

    <div>

        <script lang="text/javascript">
            window.onload = function () {

                var oResult;
                var oData = getSummary('http://localhost:62239').then(function (res) {
                    oResult = res;
                    console.log($.parseJSON(res));
                    var chart = new CanvasJS.Chart("chartContainer",
                        {
                            title: {
                                text: "IB ORDER & SHIPMENT TRACKING",
                                fontFamily: "Impact",
                                fontWeight: "normal"
                            },

                            legend: {
                                verticalAlign: "bottom",
                                horizontalAlign: "center"
                            },
                            data: $.parseJSON(res)
                        });
                    chart.render();
                });


            }

            let getSummary = function (strUrl) {
                strUrl = strUrl + '/api/SO';

                return new Promise(function (resolve, reject) {
                    resolve($.getJSON(strUrl));
                })
            }

        </script>


        <div class="container">
            <div class="panel-group">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3>SummaryDashboard</h3>
                    </div>
                    <div class="panel-body">
                        <div class="col-md-6">
                        <div id="chartContainer" style="height: 300px; width: 100%;"></div>
                        </div>
                        <div class="col-md-6">

                        </div>
                    </div>
            </div>

            <script src="source/canvasjs.js"></script>
            </div>      
         
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h2>SO Header Data</h2>
                </div>
                <div class="panel-body">
                    <asp:Table ID="tblData" runat="server"></asp:Table>
                </div>
            </div>

            <!-- Button trigger modal -->
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
    </div>

</asp:Content>
