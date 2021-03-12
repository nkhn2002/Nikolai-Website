<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Actor.aspx.cs" Inherits="Nikolai_Website.Actor1" MasterPageFile="~/Site.Master" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Get All Actors (Start) -->
    <div class="box noselect">
        <div class="box-title">
            <p>Get all actors</p>
        </div>

        <div class="box-description">
            <p>Get all actors from database table</p>
        </div>

        <form method="POST" action="">
         </form>
        <asp:Button ID="ActorButton" runat="server" CssClass="box-button box-item" OnClick="ActorButton_Click" Text="Get Actors" />
        <asp:Table ID="ActorsTable" runat="server" CssClass="box-table box-item-last">
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">SID</asp:TableCell>
                <asp:TableCell runat="server">Firstname</asp:TableCell>
                <asp:TableCell runat="server">Lastname</asp:TableCell>
                <asp:TableCell runat="server">Full name</asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>
    <!-- Get All Actors (End) -->

    <!-- Add Actor (Start) -->
    <div class="box noselect">
        <div class="box-title">
            <p>Search for a specific actor</p>
        </div>

        <div class="box-description">
            <p>Search for a specific actor firstname and get the full name from the database</p>
        </div>

        <form method="POST" action=""></form>

        <asp:TextBox ID="TextBox1" runat="server" CssClass="box-input box-item" style="margin-left: 0" placeholder="Firstname"></asp:TextBox><br />

        <asp:Button ID="SearchActorButton" runat="server" CssClass="box-button box-item" OnClick="SearchActorButton_Click" Text="Search actor" />
    </div>
    <!-- Add Actor (Start) -->

</asp:Content>