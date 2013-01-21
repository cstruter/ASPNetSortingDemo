using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void gvFriends_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.Header)
        {
            LinkButton linkButton = (from headerCells in e.Row.Cells.OfType<DataControlFieldHeaderCell>()
                                     let lb = (headerCells.HasControls()) ? headerCells.Controls[0] as LinkButton : null
                                     where lb != null
                                         && ((GridView)sender).SortExpression == lb.CommandArgument
                                     select lb).SingleOrDefault();
            if (linkButton != null)
            {
                Image image = new Image();
                image.ImageUrl = (((GridView)sender).SortDirection == SortDirection.Ascending) ? "~/images/asc.gif" : "~/images/desc.gif";
                linkButton.Controls.Add(new LiteralControl(String.Concat(linkButton.Text, "&nbsp;")));
                linkButton.Controls.Add(image);
            }
        }
    }
}