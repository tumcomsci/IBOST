﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="SummaryDashboard.aspx.cs" Inherits="WebIBOST1.SummaryDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <%--<script>
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


        <script type="text/javascript">
            window.onload = function () {
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
                        data: [
                            {
                                //startAngle: 45,
                                indexLabelFontSize: 20,
                                indexLabelFontFamily: "Garamond",
                                indexLabelFontColor: "darkgrey",
                                indexLabelLineColor: "darkgrey",
                                indexLabelPlacement: "outside",
                                type: "doughnut",
                                showInLegend: true,
                                dataPoints: [
                                    { y: 25, legendText: "SALES", indexLabel: "SALES100%", color: "red" },
                                    { y: 25, legendText: "SALES CO ", indexLabel: "SALES CO 100%", color: "red" },
                                    { y: 25, legendText: "PC", indexLabel: "PC 100%", color: "yellow" },
                                    { y: 25, legendText: "STICKER", indexLabel: "STICKER 100%", color: "yellow" },
                                    { y: 25, legendText: "DOCMENT", indexLabel: "DOCMENT 100%", color: "#66FF33" }
                                ]
                            }
                        ]
                    });

                chart.render();
            }
        </script>
        <script src="source/canvasjs.js"></script>       
        <div id="chartContainer" style="height: 300px; width: 100%;">
        </div>

    </div>
   


    <div>
        <h1>SO Header Data</h1>
        <asp:GridView ID="grdworking" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
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

</asp:Content>