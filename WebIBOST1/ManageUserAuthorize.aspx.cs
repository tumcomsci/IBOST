using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebIBOST1
{
    public partial class ManageUserAuthorize : System.Web.UI.Page
    {
        CentralContactEntities oContactConnect = new CentralContactEntities();
        IBOrderTrackingEntities oIBConnect = new IBOrderTrackingEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            GenerateUserTable();
            GenerateUserGroupTable();
        }

        private void GenerateUserTable()
        {
            TableRow tbRow = new TableRow();
            tbRow.TableSection = TableRowSection.TableHeader;

            ////Pic User
            //TableCell tbPic = new TableCell();
            //tbPic.Text = "Profile";
            //tbRow.Cells.Add(tbPic);

            //DisplayName
            TableCell tbCName = new TableCell();
            tbCName.Text = "DisplayName";
            tbRow.Cells.Add(tbCName);

            //Department
            TableCell tbCDep = new TableCell();
            tbCDep.Text = "Department";
            tbRow.Cells.Add(tbCDep);

            //EmailAddress
            TableCell tbEmail = new TableCell();
            tbEmail.Text = "EmailAddress";
            tbRow.Cells.Add(tbEmail);

            //add table header
            tblData_User.Rows.Add(tbRow);

            //Get User Records
        
            var oUsers = oContactConnect.Users.OrderBy(x=>x.Department).ToList();

            foreach(var uitem in oUsers)
            {
                tbRow = new TableRow();
                tbRow.TableSection = TableRowSection.TableBody;


                //TableCell tbRPic = new TableCell();
                //tbRPic.Text = " <img  src=\"" + uitem.Photo + "\" style=\"width: 30px; height: 30px; \" />";
                //tbRow.Cells.Add(tbRPic);

                TableCell tbRName = new TableCell
                {
                    Text = uitem.DisplayName
                };
                tbRow.Cells.Add(tbRName);

                TableCell tbRDep = new TableCell();
                tbRDep.Text = uitem.Department;
                tbRow.Cells.Add(tbRDep);

                TableCell tbREmail = new TableCell();
                tbREmail.Text = uitem.EmailAddress;
                tbRow.Cells.Add(tbREmail);

                //add Table row
                tblData_User.Rows.Add(tbRow);
            }
            // Add class
            tblData_User.Attributes.Add("class", "table table-striped table-bordered table-hover");
        }

        private void GenerateUserGroupTable()
        {
            //Header 
            TableRow tbRow = new TableRow();
            tbRow.TableSection = TableRowSection.TableHeader;

            TableCell tbCId = new TableCell();
            tbCId.Text = "ID";
            tbRow.Cells.Add(tbCId);

            TableCell tbCName = new TableCell();
            tbCName.Text = "GroupName";
            tbRow.Cells.Add(tbCName);
            //Add Header
            tblData_UserGroup.Rows.Add(tbRow);

            //Get Data

            var oUserGroup = oIBConnect.UserGroups.ToList();
            foreach (var item in oUserGroup)
            {
                tbRow = new TableRow();
                tbRow.TableSection = TableRowSection.TableBody;

                TableCell tbRId = new TableCell();
                tbRId.Text = item.UserGroupID;
                tbRow.Cells.Add(tbRId);

                TableCell tbRName = new TableCell();
                tbRName.Text = item.UserGroupID;
                tbRow.Cells.Add(tbRName);
                //Add Header
                tblData_UserGroup.Rows.Add(tbRow);
            }
            // Add class
            tblData_UserGroup.Attributes.Add("class", "table table-striped table-bordered table-hover");

        }
    }
}