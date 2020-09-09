using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoAspxgridviewTolbarButton
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Grid_ToolbarItemClick(object source, DevExpress.Web.Data.ASPxGridViewToolbarItemClickEventArgs e)
        {
            DevExpress.Web.ASPxGridView grid = (DevExpress.Web.ASPxGridView)source;
            switch (e.Item.Name)
            {
                case "CustomExportToXLS":
                    grid.ExportXlsToResponse(new DevExpress.XtraPrinting.XlsExportOptionsEx { ExportType = DevExpress.Export.ExportType.WYSIWYG });
                    break;
                case "CustomExportToXLSX":
                    grid.ExportXlsxToResponse(new DevExpress.XtraPrinting.XlsxExportOptionsEx { ExportType = DevExpress.Export.ExportType.WYSIWYG });
                    break;
                default:
                    break;
            }
        }
    }
}