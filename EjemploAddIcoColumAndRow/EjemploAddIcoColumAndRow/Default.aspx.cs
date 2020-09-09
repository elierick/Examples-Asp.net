using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Aspxgridview1.DataSource = Enumerable.Range(0, 30).Select(i => new { ProductID = i, ProductName = "name" + i, Discontinued = i % 2 == 0 });
        //Aspxgridview1.DataBind();
    }
    protected void grid_CustomGroupDisplayText(object sender, DevExpress.Web.ASPxGridViewColumnDisplayTextEventArgs e)
    {
        if (e.Column.FieldName == "ProductID") {
            var s = "<img src='images.jpg' width='20px' height='20px' />";
          e.DisplayText = s + " " + e.DisplayText;
        }
    }
}