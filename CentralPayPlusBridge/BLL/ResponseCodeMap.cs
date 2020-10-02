using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CentralPayPlusBridge.BLL
{
    public class ResponseCodeMap
    {
        public static string Successful = "00";
        public static string UnknownError = "07";
        public static string InvalidXml = "19";
        public static string SystemMalfunction = "16";
        public static string USerNotSetUp = "09";
    }
}