using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebIBOST1
{
    public partial class SummaryDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            IBOrderTrackingEntities oConnect = new IBOrderTrackingEntities();
            grdworking.DataSource = oConnect.SOHeaders.ToList();
            grdworking.DataBind();
        }
        private void GenerateTable()
        {
            //Header
            TableRow oRow = new TableRow();
            oRow.TableSection = TableRowSection.TableHeader;

            TableCell oCell = new TableCell();
            oCell.Text = "SO";
            //add header to table
            oRow.Cells.Add(oCell);

            TableCell oCell1 = new TableCell();
            oCell1.Text = "SO";
            oRow.Cells.Add(oCell1);

            TableCell oCell2 = new TableCell();
            oCell2.Text = "SO";
            oRow.Cells.Add(oCell2);

            //finish 
            tblData.Rows.Add(oRow);
        }
    }
}