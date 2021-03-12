<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Movie.aspx.cs" Inherits="Nikolai_Website.Movie1" MasterPageFile="~/Site.Master" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Get All Movies (Start) -->
    <div class="box noselect">
        <div class="box-title">
            <p>Get all movies</p>
        </div>

        <div class="box-description">
            <p>Get all movies from database table</p>
        </div>

        <form method="POST" action="">
            <asp:Button ID="MoviesButton" runat="server" CssClass="box-button box-item" OnClick="MoviesButton_Click" Text="Get Movies" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" CssClass="box-description box-item" Text="Results:"></asp:Label>
            <asp:Table ID="MoviesTable" runat="server" CssClass="box-table box-item-last">
                <asp:TableRow class="box-table box-item-last" runat="server" CssClass="box-table-header">
                    <asp:TableCell runat="server">ID</asp:TableCell>
                    <asp:TableCell runat="server">Title</asp:TableCell>
                    <asp:TableCell runat="server">Year</asp:TableCell>
                    <asp:TableCell runat="server">Genre</asp:TableCell>
                    <asp:TableCell runat="server">IMDB</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </form>
    </div>
    <!-- Get All Movies (End) -->

    <!-- Search Movie (Start) -->
    <div class="box noselect">
        <div class="box-title">
            <p>Search for a specific movie</p>
        </div>

        <div class="box-description">
            <p>Search for a specific movie title and get the movie (or movies) from the database</p>
        </div>

        <form method="POST" action=""></form>

        <asp:TextBox ID="SearchTextBox" runat="server" CssClass="box-input box-item" Style="margin-left: 0" placeholder="Movie title"></asp:TextBox><br />

        <asp:Button ID="SearchMovieButton" runat="server" CssClass="box-button box-item" OnClick="SearchMovieButton_Click" Text="Search movie" />
    </div>
    <!-- Search Movie (End) -->

    <!-- Add Movie (Start) -->
    <div class="box noselect">
        <div class="box-title">
            <p>Add movie</p>
        </div>

        <div class="box-description">
            <p>Add a movie to the database</p>
        </div>

        <form method="POST" action=""></form>

        <asp:TextBox ID="AM_Title" runat="server" CssClass="box-input box-item" Style="margin-left: 0" placeholder="Movie title"></asp:TextBox><br />
        <asp:TextBox ID="AM_Year" runat="server" CssClass="box-input box-item" Style="margin-left: 0" placeholder="Movie year"></asp:TextBox><br />
        <asp:TextBox ID="AM_Genre" runat="server" CssClass="box-input box-item" Style="margin-left: 0" placeholder="Movie genre"></asp:TextBox><br />
        <asp:TextBox ID="AM_Review" runat="server" CssClass="box-input box-item" Style="margin-left: 0" placeholder="IMDB Review"></asp:TextBox><br />

        <asp:Button ID="AddMovieButton" runat="server" CssClass="box-button box-item" Text="Add movie" OnClick="AddMovieButton_Click" /><br />

        <asp:Label ID="AlertBox" runat="server"></asp:Label>
    </div>

</asp:Content>
