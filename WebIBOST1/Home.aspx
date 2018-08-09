<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebIBOST1.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1" class=""></li>
            <li data-target="#myCarousel" data-slide-to="2" class=""></li>
            <li data-target="#myCarousel" data-slide-to="3" class=""></li>
            <li data-target="#myCarousel" data-slide-to="4" class=""></li>
        </ol>
        <div class="carousel-inner" role="listbox" <%--style="height:800px"--%> >
            <div class="item active">
                <img  src="IMG/home01.jpg" alt="First slide" width="100%">
            </div>
            <div class="item">
                <img  src="IMG/home02.jpg" alt="Second slide" width="100%">
            </div>
            <div class="item">
                <img  src="IMG/home03.jpg" alt="Third slide" width="100%">
            </div>
             <div class="item">
                <img  src="IMG/home06.jpg" alt="Four slide" width="100%">
            </div>
             <div class="item">
                <img  src="IMG/home08.jpg" alt="five slide" width="100%">
            </div>
        </div>
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>


    <div class="container">
        <section class="row text-center">
            <div class="col-md-12"><br />
                <a class="display-4">IB ORDER & SHIPMENT TRACKING </a> 
            </div>
            <div class="col-md-12">
                <p></p>
            </div>
            <div class="col-md-12">
                <a type="button" class="btn btn-danger" href="SummaryDashboard.aspx">Starts Working  </a>

            </div>
        </section>


    </div>

</asp:Content>


<%--<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner " style="width:100%; height: 400px">
    <div class="carousel-item active">
      <img class="d-block w-100" src="IMG/Export1.jpg?auto=yes&bg=666&fg=444" alt="First slide" >
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="IMG/Export2.jpg?auto=yes&bg=666&fg=444" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="IMG/Export3.jpg?auto=yes&bg=555&fg=333" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
    
   
</div>--%>