using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Nikolai_Website
{
    class Actor
    {
        private int actor_sid;
        private string actor_firstname;
        private string actor_lastname;

        public int Actor_SID
        {
            get { return actor_sid; }
            set { actor_sid = value; }
        }

        public string Actor_Firstname
        {
            get { return actor_firstname; }
            set { actor_firstname = value; }
        }

        public string Actor_Lastname
        {
            get { return actor_lastname; }
            set { actor_lastname = value; }
        }

        public Actor(int _id, string _firstname, string _lastname)
        {
            Actor_SID = _id;
            Actor_Firstname = _firstname;
            Actor_Lastname = _lastname;
        }
    }
}