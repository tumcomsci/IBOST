using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebIBOST1
{
    public partial class SoForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strSO = Request.QueryString["SO"];
            if(!string.IsNullOrEmpty(strSO))
            {
                GetSOHeaderByID(strSO);
            }
            SetDefaultObject();
        }

        protected void GetSOHeaderByID(string strSO)
        {
            IBOrderTrackingEntities oConnect = new IBOrderTrackingEntities();

            SOHeader oHeader = oConnect.SOHeaders.SingleOrDefault(x => x.SO.Equals(strSO));
            if(oHeader != null)
            {
                SetObjectValue(oHeader);
            }
        }

        protected void SetDefaultObject()
        {
            if (txtPO.Value != "")
            {
                txtPO.Attributes.Add("readonly", "readonly");
            }
            else
            {
                txtPO.Attributes.Remove("readonly");
            }

            if(txtSO.Value != String.Empty)
            {
                txtSO.Attributes.Add("readonly", "readonly");
            }
            else
            {
                txtSO.Attributes.Remove("readonly");
            }
        }

        protected void SetObjectValue(SOHeader oHeader)
        {
            txtPO.Value = oHeader.PO;
            txtSO.Value = oHeader.SO;

        }
    }
}