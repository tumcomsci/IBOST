<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="SummaryDashboard.aspx.cs" Inherits="WebIBOST1.SummaryDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <br />
    <br />
    <br />
    <br />

    
        <!--donut chart-->
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


        <script lang="text/javascript">
            window.onload = function () {

                var chart = new CanvasJS.Chart("chartContainer1", {
                    animationEnabled: true,
                    title: {
                        text: "Crude Oil Reserves vs Production, 2016"
                    },
                    axisY: {
                        title: "Billions of Barrels",
                        titleFontColor: "#4F81BC",
                        lineColor: "#4F81BC",
                        labelFontColor: "#4F81BC",
                        tickColor: "#4F81BC"
                    },
                    axisY2: {
                        title: "Millions of Barrels/day",
                        titleFontColor: "#C0504E",
                        lineColor: "#C0504E",
                        labelFontColor: "#C0504E",
                        tickColor: "#C0504E"
                    },
                    toolTip: {
                        shared: true
                    },
                    legend: {
                        cursor: "pointer",
                        itemclick: toggleDataSeries
                    },
                    data: [{
                        type: "column",
                        name: "Proven Oil Reserves (bn)",
                        legendText: "Proven Oil Reserves",
                        showInLegend: true,
                        dataPoints: [
                            { label: "Saudi", y: 266.21 },
                            { label: "Venezuela", y: 302.25 },
                            { label: "Iran", y: 157.20 },
                            { label: "Iraq", y: 148.77 },
                            { label: "Kuwait", y: 101.50 },
                            { label: "UAE", y: 97.8 }
                        ]
                    },
                    {
                        type: "column",
                        name: "Oil Production (million/day)",
                        legendText: "Oil Production",
                        axisYType: "secondary",
                        showInLegend: true,
                        dataPoints: [
                            { label: "Saudi", y: 10.46 },
                            { label: "Venezuela", y: 2.27 },
                            { label: "Iran", y: 3.99 },
                            { label: "Iraq", y: 4.45 },
                            { label: "Kuwait", y: 2.92 },
                            { label: "UAE", y: 3.1 }
                        ]
                    }]
                });
                chart.render();

                function toggleDataSeries(e) {
                    if (typeof (e.dataSeries.visible) === "undefined" || e.dataSeries.visible) {
                        e.dataSeries.visible = false;
                    }
                    else {
                        e.dataSeries.visible = true;
                    }
                    chart.render();
                }

            }
        </script>

        <div class="container-fulid">
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
                            <div id="chartContainer1" style="height: 300px; width: 100%;"></div>
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
    

</asp:Content>
