using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void lvFriends_Sorting(object sender, ListViewSortEventArgs e)
    {
        Image imgFirstName = (Image)lvFriends.FindControl("imgFirstName");
        Image imgLastName = (Image)lvFriends.FindControl("imgLastName");
        Image imgCreated = (Image)lvFriends.FindControl("imgCreated");
        String imageUrl = (e.SortDirection == SortDirection.Ascending) ? "~/images/asc.gif" : "~/images/desc.gif";

        imgFirstName.Visible = false;
        imgLastName.Visible = false;
        imgCreated.Visible = false;

        switch (e.SortExpression)
        {
            case "firstname":
                imgFirstName.ImageUrl = imageUrl;
                imgFirstName.Visible = true;
                break;
            case "lastname":
                imgLastName.ImageUrl = imageUrl;
                imgLastName.Visible = true;
                break;
            case "created":
                imgCreated.ImageUrl = imageUrl;
                imgCreated.Visible = true;
                break;
        }
    }
}
