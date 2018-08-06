<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="SummaryDashboard.aspx.cs" Inherits="WebIBOST1.SummaryDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <br />
    <br />
    <br />
    <br />

    <div>
        <%--  <script>
            window.onload = function () {

                var chart = new CanvasJS.Chart("chartContainer", {
                    theme: "light2",
                    animationEnabled: true,
                    title: {
                        text: "IB ORDER & SHIPMENT TRACKING "
                    },
                    subtitles: [{
                        text: "Working ",
                        fontSize: 16
                    }],
                    data: [{
                        type: "pie",
                        
                        indexLabelFontSize: 18,
                        radius: 80,
                        indexLabel: "{label} - {y}",
                        yValueFormatString: "###0.0\"%\"",
                        click: explodePie,
                        dataPoints: [
                            { y: 42, label: "IB" ,color: "red"},
                            { y: 21, label: "Pc" ,color: "yellow"},
                            { y: 24.5, label: "shipment" ,color: "green"},

                        ]
                    }]

                [{
            "type":"doughnut",
            "indexLabelFontSize":20,
            "indexLabelFontFamily":"Garamond",
            "indexLabelFontColor":"darkgrey",
            "indexLabelLineColor":"darkgrey",
            "indexLabelPlacement":"outside",
            "showInLegend":true,
            "dataPoints":[
            {"y":25,"legendText":"SALE","indexLabel":"SALE 25 %","color":"Red"}
            ]
            }]

                });
                chart.render();

                function explodePie(e) {
                    for (var i = 0; i < e.dataSeries.dataPoints.length; i++) {
                        if (i !== e.dataPointIndex)
                            e.dataSeries.dataPoints[i].exploded = false;
                    }
                }

            }
        </script>        
        <div id="chartContainer" style="height: 370px; width: 100%;">
            <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>

            \\donut chart \\\<script type="text/javascript" src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>

        </div>--%>

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
                        <div id="chartContainer" style="height: 300px; width: 100%;">
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

    </div>
</asp:Content>
