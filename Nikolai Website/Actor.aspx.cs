using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nikolai_Website
{
    public partial class Actor1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ActorButton_Click(object sender, EventArgs e)
        {
            List<Actor> Actors = MovieNight.GetActors();

            foreach (var item in Actors)
            {
                //Create a Row
                TableRow row = new TableRow();

                //create cells
                TableCell SID = new TableCell();
                TableCell Firstname = new TableCell();
                TableCell Lastname = new TableCell();
                TableCell Fullname = new TableCell();

                //Add text to cells
                SID.Text = item.Actor_SID.ToString();
                Firstname.Text = item.Actor_Firstname;
                Lastname.Text = item.Actor_Lastname;
                Fullname.Text = $"{item.Actor_Firstname} {item.Actor_Lastname}";

                //add cells to current row
                row.Cells.Add(SID);
                row.Cells.Add(Firstname);
                row.Cells.Add(Lastname);
                row.Cells.Add(Fullname);

                //add row to table
                ActorsTable.Rows.Add(row);
            }
        }
        protected void SearchActorButton_Click(object sender, EventArgs e)
        {

        }
    }
}