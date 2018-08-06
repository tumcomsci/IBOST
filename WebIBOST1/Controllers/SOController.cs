using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Newtonsoft.Json;

namespace WebIBOST1.Controllers
{
    public class SOController : ApiController
    {
        public IHttpActionResult Get()
        {
            WebIBOST1.DataModel.SOModel oModel = new DataModel.SOModel();
            WebIBOST1.DataModel.SummaryModel oObject = new DataModel.SummaryModel();
            //Ok(oModel.GetCountSO().ToList());
            var oValue = oObject.GetObjectData("doughnut");
            var oJson = JsonConvert.SerializeObject(oValue);
            return Ok(oJson);

        }
    }
}
