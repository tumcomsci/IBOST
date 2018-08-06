using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebIBOST1.DataModel
{
    public class SOModel
    {
        public List<SOHeader> GetCountSO()
        {
            List<SOHeader> oReturn = null;

            IBOrderTrackingEntities oConnection = new IBOrderTrackingEntities();
            oReturn = oConnection.SOHeaders.ToList();


            return oReturn;
        }
    }

    public class SummaryModel
    {
        public List<ObjectData> GetObjectData(string type)
        {
            List<ObjectData> oReturn = new List<ObjectData>();

            ObjectData oItem = new ObjectData();
            oItem.type = type;
            oItem.indexLabelFontSize = 20;
            oItem.startAngle = 60;
            oItem.indexLabel = "{label} - {y}%";
            oItem.toolTipContent = "<b>{label}:</b>";
            oItem.dataPoints = new List<ObjectData.OdataPoints>();

            ObjectData.OdataPoints oOne = new ObjectData.OdataPoints();
            oOne.y = 25;
            oOne.label = "Sale Co";
            oItem.dataPoints.Add(oOne);

            ObjectData.OdataPoints oTwo = new ObjectData.OdataPoints();
            oTwo.y = 15;
            oTwo.label   = "Sale";
            oItem.dataPoints.Add(oTwo);

            ObjectData.OdataPoints oThree = new ObjectData.OdataPoints();
            oThree.y = 40;
            oThree.label = "PC";
            oItem.dataPoints.Add(oThree);

            ObjectData.OdataPoints o4 = new ObjectData.OdataPoints();
            o4.y = 20;
            o4.label = "Shipment";
            oItem.dataPoints.Add(o4);

            oReturn.Add(oItem);

            return oReturn;
        }
    }

    public class ObjectData
    {
        public string type { get; set; }
        public int startAngle { get; set; }
        public int indexLabelFontSize { get; set; }
        public string indexLabel { get; set; }
        public string toolTipContent { get; set; }
        public List<OdataPoints> dataPoints { get; set; }


        public class OdataPoints
        {
            public int y { get; set; }
            public string label { get; set; }
        }

    }
}