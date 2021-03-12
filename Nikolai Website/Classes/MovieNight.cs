using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Nikolai_Website
{
    class MovieNight
    {
        public static string Conn = "Server=DESKTOP-T16HB6B;Database=MovieNight3;Trusted_Connection=True;";

        // Get all movie information
        public static List<Movie> GetMovies()
        {
            List<Movie> movies = new List<Movie>();

            string query = "SELECT * FROM movies";

            using (SqlConnection connection = new SqlConnection(Conn))
            {
                connection.Open();
                SqlCommand cmd = new SqlCommand(query, connection);
                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    int id = (int)reader["id"];
                    string title = (string)reader["title"];
                    int year = (int)reader["_year"];
                    string genre = (string)reader["genre"];
                    string imdb = (string)reader["imdb"];

                    Movie movie = new Movie(id, title, year, genre, imdb);
                    movies.Add(movie);
                }
                return movies;
            }
        }

        // Search for a specific movie title
        public static List<Movie> SearchForMovies(string search)
        {
            List<Movie> movies = new List<Movie>();

            string query = $"SELECT * FROM movies WHERE title LIKE '%{search}%'";
            using (SqlConnection connection = new SqlConnection(Conn))
            {
                connection.Open();
                SqlCommand cmd = new SqlCommand(query, connection);
                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    int id = (int)reader["id"];
                    string title = (string)reader["title"];
                    int year = (int)reader["_year"];
                    string genre = (string)reader["genre"];
                    string imdb = (string)reader["imdb"];

                    Movie movie = new Movie(id, title, year, genre, imdb);
                    movies.Add(movie);
                }
                return movies;
            }
        }

        // Insert Movie
        public static void InsertMovie(Movie movie)
        {
            string query = "INSERT INTO movies (title, _year, genre, imdb) VALUES (@title, @year, @genre, @review)";
            using (SqlConnection connection = new SqlConnection(Conn))
            {
                connection.Open();
                SqlCommand cmd = new SqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@title", movie.Movie_Title);
                cmd.Parameters.AddWithValue("@year", movie.Movie_Year);
                cmd.Parameters.AddWithValue("@genre", movie.Movie_Genre);
                cmd.Parameters.AddWithValue("@review", movie.Movie_IMDB);
                cmd.ExecuteNonQuery();
            }
        }

        // Get all actor information
        public static List<Actor> GetActors()
        {
            List<Actor> actors = new List<Actor>();

            string query = "SELECT * FROM actors";
            using (SqlConnection connection = new SqlConnection(Conn))
            {
                connection.Open();
                SqlCommand cmd = new SqlCommand(query, connection);
                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    int id = (int)reader["_sid"];
                    string actor_firstname = (string)reader["firstname"];
                    string actor_lastname = (string)reader["lastname"]; ;

                    Actor actor = new Actor(id, actor_firstname, actor_lastname);
                    actors.Add(actor);
                }
                return actors;
            }
        }
    }
}