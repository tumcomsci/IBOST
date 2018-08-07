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
            if (!Page.IsPostBack) {
                divSave.Attributes.Add("hidden","hidden");
                string strSO = Request.QueryString["SO"] ;
                Session["SO"] = strSO;
                if (!string.IsNullOrEmpty(strSO))
                {
                    GetSOHeaderByID(strSO);
                }
                string strPO = Request.QueryString["PO"];
                Session["PO"] = strPO;
                if (!string.IsNullOrEmpty(strPO))
                {
                    GetPOHeaderByID(strPO);
                }
                SetDefaultObject();
            }
            
        }

        protected void GetPOHeaderByID(string strPO)
        {
            IBOrderTrackingEntities oConnect = new IBOrderTrackingEntities();

            SOHeader oHeader = oConnect.SOHeaders.SingleOrDefault(x => x.PO.Equals(strPO));
            if (oHeader != null)
            {
                SetObjectValue(oHeader);
            }
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
            //txtloadingDate
            if (txtLoadingDate.Value != "")
            {
                txtLoadingDate.Attributes.Add("readonly", "readonly");
            }
            else
            {
                txtLoadingDate.Attributes.Remove("readonly");
            }
            //txtOrdertype
            if (txtOrderType.Value != "")
            {
                txtOrderType.Attributes.Add("readonly", "readonly");
            }
            else
            {
                txtOrderType.Attributes.Remove("readonly");
            }
            //OrderDate
            if (txtOrderDate.Value != String.Empty)
            {
                txtOrderDate.Attributes.Add("readonly", "readonly");
            }
            else
            {
                txtOrderDate.Attributes.Remove("readonly");
            }
            //PO
            if (txtPO.Value != "")
            {
                txtPO.Attributes.Add("readonly", "readonly");
            }
            else
            {
                txtPO.Attributes.Remove("readonly");
            }
            //INV
            if (txtINV.Value != String.Empty)
            {
                txtINV.Attributes.Add("readonly", "readonly");
            }
            else
            {
                txtINV.Attributes.Remove("readonly");
            }
            //SO
            if (txtSO.Value != String.Empty)
            {
                txtSO.Attributes.Add("readonly", "readonly");
            }
            else
            {
                txtSO.Attributes.Remove("readonly");
            }
            //TotalFCLS
            if (txtTotalFCLS.Value != String.Empty)
            {
                txtTotalFCLS.Attributes.Add("readonly", "readonly");
            }
            else
            {
                txtTotalFCLS.Attributes.Remove("readonly");
            }
            //SoldTO
            if (txtSoldTo.Value != String.Empty)
            {
                txtSoldTo.Attributes.Add("readonly", "readonly");
            }
            else
            {
                txtSoldTo.Attributes.Remove("readonly");
            }
            //SoldtoName
            if (txtSoldToName.Value != String.Empty)
            {
                txtSoldToName.Attributes.Add("readonly", "readonly");
            }
            else
            {
                txtSoldToName.Attributes.Remove("readonly");
            }
            //shipto
            if (txtShipTo.Value != String.Empty)
            {
                txtShipTo.Attributes.Add("readonly", "readonly");
            }
            else
            {
                txtShipTo.Attributes.Remove("readonly");
            }
            //shiptoname
            if (txtShipToName.Value != String.Empty)
            {
                txtShipToName.Attributes.Add("readonly", "readonly");
            }
            else
            {
                txtShipToName.Attributes.Remove("readonly");
            }
            //Destination
            if (txtDestinationPort.Value != String.Empty)
            {
                txtDestinationPort.Attributes.Add("readonly", "readonly");
            }
            else
            {
                txtDestinationPort.Attributes.Remove("readonly");
            }
            //totalCarton
            if (txtTotalCartons.Value != String.Empty)
            {
                txtTotalCartons.Attributes.Add("readonly", "readonly");
            }
            else
            {
                txtTotalCartons.Attributes.Remove("readonly");
            }
            //Payment
            if (txtPaymentTerm.Value != String.Empty)
            {
                txtPaymentTerm.Attributes.Add("readonly", "readonly");
            }
            else
            {
                txtPaymentTerm.Attributes.Remove("readonly");
            }
            //Incoterm
            if (txtIncoterm.Value != String.Empty)
            {
                txtIncoterm.Attributes.Add("readonly", "readonly");
            }
            else
            {
                txtIncoterm.Attributes.Remove("readonly");
            }
            //curreny
            if (txtCurrency.Value != String.Empty)
            {
                txtCurrency.Attributes.Add("readonly", "readonly");
            }
            else
            {
                txtCurrency.Attributes.Remove("readonly");
            }
            //TotalFOBSO
            if (txtTotalFOBSO.Value != String.Empty)
            {
                txtTotalFOBSO.Attributes.Add("readonly", "readonly");
            }
            else
            {
                txtTotalFOBSO.Attributes.Remove("readonly");
            }
            //cfmUncfm
            if (txtCfmUncfm.Value != String.Empty)
            {
                txtCfmUncfm.Attributes.Add("readonly", "readonly");
            }
            else
            {
                txtCfmUncfm.Attributes.Remove("readonly");
            }


        }

        protected void SetObjectValue(SOHeader oHeader)
        {
            txtLoadingDate.Value = !oHeader.LoadingDate.HasValue?string.Empty: oHeader.LoadingDate.Value.ToString("dd MMM yyyy");
            txtOrderType.Value = oHeader.OrderType;
            txtOrderDate.Value = !oHeader.OrderDate.HasValue ? "" : oHeader.OrderDate.Value.ToString("dd MMM yyyy");
            txtPO.Value = oHeader.PO;
            txtINV.Value = oHeader.INV;
            txtSO.Value = oHeader.SO;
            txtTotalFCLS.Value = oHeader.TotalFCLS.HasValue ? oHeader.TotalFCLS.Value.ToString("#,##0.00") : "";
            txtSoldTo.Value = oHeader.SoldTo;
            txtSoldToName.Value = oHeader.SoldToName;
            txtShipTo.Value = oHeader.ShipTo;
            txtShipToName.Value = oHeader.ShipToName;
            txtDestinationPort.Value = oHeader.DestinationPort;
            txtTotalCartons.Value = !oHeader.TotalCartons.HasValue ? string.Empty : oHeader.TotalCartons.Value.ToString("#,##0");
            txtPaymentTerm.Value = oHeader.PaymentTerm;
            txtIncoterm.Value = oHeader.Incoterm;
            txtCurrency.Value = oHeader.Currency;
            txtTotalFOBSO.Value = !oHeader.TotalFOBSO.HasValue ? "" : oHeader.TotalFOBSO.Value.ToString("#,##0.00");
            txtTTSlip.Value = !oHeader.TTSlip.HasValue ? "" : oHeader.TTSlip.Value.ToString("dd MMM yyyy");
            txtLCSlip.Value = !oHeader.LCSlip.HasValue ? "" : oHeader.LCSlip.Value.ToString("dd MMM yyyy");
            txtSpecialApporove.Value = !oHeader.SpecialApprove.HasValue ? string.Empty : oHeader.SpecialApprove.Value.ToString("dd MMM yyyy");
            txtLC.Value = !oHeader.LC.HasValue ? "" : oHeader.LC.Value.ToString("dd MMM yyyy");
            txtTT.Value = !oHeader.TT.HasValue ? "" : oHeader.TT.Value.ToString("dd MMM yyyy");
            txtETD.Value = !oHeader.ETD.HasValue ? "" : oHeader.ETD.Value.ToString("dd MMM yyyy");
            txtETA.Value = !oHeader.ETA.HasValue ? "" : oHeader.ETA.Value.ToString("dd MMM yyyy");
            txtCfmUncfm.Value = oHeader.CfmUncfm;
            txtDocDate.Value = !oHeader.DocDate.HasValue ? "" : oHeader.DocDate.Value.ToString("dd MMM yyyy");
            txtDocAWB.Value = oHeader.DocAWB;


        }

        protected void btnSave_Click(object sender,EventArgs e)
        {
            IBOrderTrackingEntities oConection = new IBOrderTrackingEntities();

            if (Session["SO"] != null)
            {
                string mSO = Session["SO"].ToString();
                SOHeader oHeader = oConection.SOHeaders.SingleOrDefault(x => x.SO.Equals(mSO));

               
                oHeader.PO = txtPO.Value;
                oHeader.DocAWB = txtDocAWB.Value;
                //oHeader.TTSlip = txtTTSlip.
                //if (!String.IsNullOrEmpty(txtTTSlip.Value))
                //{
                //    var oDate = Nullable<DateTime>.Parse(txtTTSlip.Value);

                //}

                //if (!string.IsNullOrEmpty(txtTTSlip.Value))
                    
                //{
                //    DateTime?.Parse.txtTTSlip(); 
                //} 

                oConection.SaveChanges();

               
                divSave.Attributes.Remove("hidden");
                divSave.InnerText = "Save Success";
            }
        }
    }
}