using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection;
namespace WebIBOST1
{
    public partial class SummaryDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GenerateTable();
            //IBOrderTrackingEntities oConnect = new IBOrderTrackingEntities();
            //grdworking.DataSource = oConnect.SOHeaders.ToList();
            //grdworking.DataBind();
        }

        private void GenerateTable()
        {
            //Header
            //Add header to table
            TableRow oRow = new TableRow();
            oRow.TableSection = TableRowSection.TableHeader;

            int noCol = 0;
            foreach (var item in getSOHeader())
            {
                if (noCol < 9)
                {
                    TableCell oH1 = new TableCell();
                    oH1.Text = item;
                    oRow.Cells.Add(oH1);
                }
                noCol++;
            }
            //Finish Header
            tblData.Rows.Add(oRow);

            //Rows
            WebIBOST1.IBOrderTrackingEntities oConnect = new IBOrderTrackingEntities();
            if(oConnect.SOHeaders.Count() > 0)
            {
                var soItem = oConnect.SOHeaders.ToList();

                foreach (var row in soItem)
                {
                    noCol = 0;
                    //Add Detail to table
                    TableRow oDetail = new TableRow();
                    oDetail.TableSection = TableRowSection.TableBody;

                    Type oType = row.GetType();
                    PropertyInfo[] props = oType.GetProperties();
                    foreach (var prop in props)
                    {
                        //Row 1 Col 1
                        if (noCol < 9)
                        {
                            TableCell oR1 = new TableCell();
                            oR1.Text = prop.GetValue(row) != null ? prop.GetValue(row).ToString() : "";
                            oDetail.Cells.Add(oR1);
                        }
                        noCol++;
                    }
                    // Finish 1 Row
                    tblData.Rows.Add(oDetail);
                }


                // Add class
                tblData.Attributes.Add("class", "table table-striped table-bordered table-hover");

            }

        }

        private List<String> getSOHeader()
        {
            List<String> oResult = new List<string>();

            Type soType = typeof(SOHeader);

            foreach (var item in soType.GetProperties())
            {
                oResult.Add(item.Name);
            }
            return oResult;
        }
    }
}