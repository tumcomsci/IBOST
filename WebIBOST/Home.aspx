﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Test.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebIBOST.Home1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header>
           <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                     <ol class="carousel-indicators">
                       <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                      <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                      <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    </ol>
           <div class="carousel-inner">
                 <div class="carousel-item active">
                      <img class="d-block w-100" src="/IMG/Export1.jpg/800x400?auto=yes&bg=777&fg=555&text=First slide" alt="First slide">
                    </div>
            <div class="carousel-item">
                    <img class="d-block w-100" src="/IMG/Export1.jpg/800x400?auto=yes&bg=666&fg=444&text=Second slide" alt="Second slide">
            </div>
             <div class="carousel-item">
                     <img class="d-block w-100" src="/IMG/Export1.jpg/800x400?auto=yes&bg=555&fg=333&text=Third slide" alt="Third slide">
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
    </header>

    


</asp:Content>