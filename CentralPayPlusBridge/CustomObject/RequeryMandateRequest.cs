using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CentralPayPlusBridge.CustomObject
{
    public class RequeryMandateRequest
    {
        public string MandateCode { get; set; }
        public string BillerID { get; set; }
        public string HashValue { get; set; }

    }
}