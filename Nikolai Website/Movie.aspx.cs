using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nikolai_Website
{
    public partial class Movie1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void MoviesButton_Click(object sender, EventArgs e)
        {
            List<Movie> Movies = MovieNight.GetMovies();

            foreach (var item in Movies)
            {
                //Create a Row
                TableRow row = new TableRow();

                //create cells
                TableCell id = new TableCell();
                TableCell title = new TableCell();
                TableCell year = new TableCell();
                TableCell genre = new TableCell();
                TableCell imdb = new TableCell();

                //Add text to cells
                id.Text = item.Movie_ID.ToString();
                title.Text = item.Movie_Title;
                year.Text = item.Movie_Year.ToString();
                genre.Text = item.Movie_Genre;
                imdb.Text = item.Movie_IMDB;

                //add cells to current row
                row.Cells.Add(id);
                row.Cells.Add(title);
                row.Cells.Add(year);
                row.Cells.Add(genre);
                row.Cells.Add(imdb);

                //add row to table
                MoviesTable.Rows.Add(row);
            }
        }

        protected void SearchMovieButton_Click(object sender, EventArgs e)
        {
            List<Movie> Movies = MovieNight.SearchForMovies(SearchTextBox.Text);

            foreach (var item in Movies)
            {
                //Create a Row
                TableRow row = new TableRow();

                //create cells
                TableCell id = new TableCell();
                TableCell title = new TableCell();
                TableCell year = new TableCell();
                TableCell genre = new TableCell();
                TableCell imdb = new TableCell();

                //Add text to cells
                id.Text = item.Movie_ID.ToString();
                title.Text = item.Movie_Title;
                year.Text = item.Movie_Year.ToString();
                genre.Text = item.Movie_Genre;
                imdb.Text = item.Movie_IMDB;

                //add cells to current row
                row.Cells.Add(id);
                row.Cells.Add(title);
                row.Cells.Add(year);
                row.Cells.Add(genre);
                row.Cells.Add(imdb);

                //add row to table
                MoviesTable.Rows.Add(row);
            }
        }

        protected void AddMovieButton_Click(object sender, EventArgs e)
        {
            try
            {
                MovieNight.InsertMovie(new Movie(AM_Title.Text, int.Parse(AM_Year.Text), AM_Genre.Text, AM_Review.Text));
                AlertBox.CssClass = "alert alert-success";
                AlertBox.Text = "Successfully added movie!";

            }
            catch 
            {
                AlertBox.CssClass = "alert alert-warning";
                AlertBox.Text = "Something went wrong!";
            };
        }
    }
}