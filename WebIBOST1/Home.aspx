<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebIBOST1.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
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
    
   
</div>
    <div class="container">
        <section class="row text-center">
            <div class="col-md-12">
                <a class="display-4"> IB ORDER & SHIPMENT TRACKING </a>
            </div>
                <div class="col-md-12">
                    <p></p>
                </div>
            <div class="col-md-12">
                <a type="button"  class="btn btn-danger" href="SummaryDashboard.aspx">Starts Working  </a>
                
            </div>
        </section>


    </div>
  
</asp:Content>
