//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebIBOST1
{
    using System;
    using System.Collections.Generic;
    
    public partial class SOHeader
    {
        public string SalesORG { get; set; }
        public Nullable<System.DateTime> LoadingDate { get; set; }
        public string OrderType { get; set; }
        public Nullable<System.DateTime> OrderDate { get; set; }
        public string PO { get; set; }
        public string PODate { get; set; }
        public string INV { get; set; }
        public string SO { get; set; }
        public Nullable<double> TotalFCLS { get; set; }
        public string SoldTo { get; set; }
        public string SoldToName { get; set; }
        public string ShipTo { get; set; }
        public string ShipToName { get; set; }
        public string DestinationPort { get; set; }
        public Nullable<int> TotalCartons { get; set; }
        public string PaymentTerm { get; set; }
        public string Incoterm { get; set; }
        public string Currency { get; set; }
        public Nullable<double> EXRate { get; set; }
        public Nullable<double> TotalFOBSO { get; set; }
        public Nullable<System.DateTime> TTSlip { get; set; }
        public Nullable<System.DateTime> LCSlip { get; set; }
        public Nullable<System.DateTime> SpecialApprove { get; set; }
        public Nullable<System.DateTime> LC { get; set; }
        public Nullable<System.DateTime> TT { get; set; }
        public Nullable<System.DateTime> ETD { get; set; }
        public Nullable<System.DateTime> ETA { get; set; }
        public string CfmUncfm { get; set; }
        public Nullable<System.DateTime> DocDate { get; set; }
        public string DocAWB { get; set; }
    }
}
