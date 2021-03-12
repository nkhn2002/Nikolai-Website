using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Nikolai_Website
{
    class Movie
    {
        private int movie_id;
        private string movie_title;
        private int movie_year;
        private string movie_genre;
        private string movie_imdb;

        public int Movie_ID
        {
            get { return movie_id; }
            set { movie_id = value; }
        }

        public string Movie_Title
        {
            get { return movie_title; }
            set { movie_title = value; }
        }

        public int Movie_Year
        {
            get { return movie_year; }
            set { movie_year = value; }
        }

        public string Movie_Genre
        {
            get { return movie_genre; }
            set { movie_genre = value; }
        }

        public string Movie_IMDB
        {
            get { return movie_imdb; }
            set { movie_imdb = value; }
        }

        public Movie(int _id, string _title, int _year, string _genre, string _imdb)
        {
            Movie_ID = _id;
            Movie_Title = _title;
            Movie_Year = _year;
            Movie_Genre = _genre;
            Movie_IMDB = _imdb;
        }

        public Movie(string _title, int _year, string _genre, string _imdb)
        {
            Movie_Title = _title;
            Movie_Year = _year;
            Movie_Genre = _genre;
            Movie_IMDB = _imdb;
        }
    }
}