using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CentralPayPlusBridge.CustomObject
{
    public class ValidateOTPRequestEx
    {
        public string AcctNumber { get; set; }
        public string AcctName { get; set; }
        public string MandateCode { get; set; }
        public string OTP { get; set; }
        public string TransType { get; set; }
        public string BankCode { get; set; }
        public string BillerID { get; set; }
        public string BillerName { get; set; }
        public string BillerTransId { get; set; }
        public string Amount { get; set; }
        public string HashValue { get; set; }

    }
}