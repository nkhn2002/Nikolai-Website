<%@ Page Title="Movie Night | " Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Nikolai_Website._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <head>
        <link href="~/Content/Home.css" rel="stylesheet" type="text/css" />
        <link href="~/Content/Site.css" rel="stylesheet" type="text/css" />
        <link href="~/Content/Box.css" rel="stylesheet" type="text/css" />
    </head>
    <!-- Information Start -->
    <center>
    <div class="home-box noselect center">
        <div class="box-title">
            <p>Velkommen til min website :-D</p>
        </div>

        <div class="box-description">
            <p>Denne hjemmeside handler om Movie Night opgaven som jeg havde lavet i OOP faget, på denne hjemmeside kan man:</p>
            <ul>
              <li>Få alle film i en tabel</li>
              <li>Søg efter specifikke film</li>
              <li>Tilføje film til database</li><br />
              <li>Få alle skuespillere i en tabel</li>
              <li>Søg efter specifikke skuespillere</li><br />
              <li style="display:inline;"><strong>Mangler:</strong></li>
              <li>Tilføje skuespillere til database</li>
              <li>Fjern alle skuespillere</li>
              <li>Fjern alle film</li>
            </ul>
        </div>
    </div>
    </center>
    <!-- Information End -->

    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
            <li data-target="#myCarousel" data-slide-to="4"></li>
            <li data-target="#myCarousel" data-slide-to="5"></li>
            <li data-target="#myCarousel" data-slide-to="6"></li>
            <li data-target="#myCarousel" data-slide-to="7"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <img class="center" src="http://www.kultunaut.dk/images/film/7086093/plakat.jpg" alt="Harry Potter 1" style="width: 400px; height: 520px;">
            </div>

            <div class="item">
                <img src="http://www.kultunaut.dk/images/film/2076940/plakat.jpg" alt="Harry Potter 2" style="width: 400px; height: 520px;">
            </div>

            <div class="item">
                <img src="http://www.kultunaut.dk/images/film/1802823/plakat.jpg" alt="Harry Potter 3" style="width: 400px; height: 520px;">
            </div>

            <div class="item">
                <img src="http://www.kultunaut.dk/images/film/2732487/plakat.jpg" alt="Harry Potter 4" style="width: 400px; height: 520px;">
            </div>

            <div class="item">
                <img src="http://www.kultunaut.dk/images/film/7086276/plakat.jpg" alt="Harry Potter 5" style="width: 400px; height: 520px;">
            </div>

            <div class="item">
                <img src="http://www.kultunaut.dk/images/film/7087467/plakat.jpg" alt="Harry Potter 6" style="width: 400px; height: 520px;">
            </div>

            <div class="item">
                <img src="http://www.kultunaut.dk/images/film/7088832/plakat.jpg" alt="Harry Potter 7 Part 1" style="width: 400px; height: 520px;">
            </div>

            <div class="item">
                <img src="http://www.kultunaut.dk/images/film/7089294/plakat.jpg" alt="Harry Potter 7 Part 2" style="width: 400px; height: 520px;">
            </div>
        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

</asp:Content>
