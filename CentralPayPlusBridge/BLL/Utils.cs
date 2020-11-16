using NLog;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Security;
using System.Security.Cryptography.X509Certificates;
using System.Web;

namespace CentralPayPlusBridge.BLL
{
  
    public class Utils
    {
        private static Logger logger = LogManager.GetCurrentClassLogger();
        public static void BypassCertificateError()
        {
            ServicePointManager.ServerCertificateValidationCallback +=

                delegate (
                    Object sender1,
                    X509Certificate certificate,
                    X509Chain chain,
                    SslPolicyErrors sslPolicyErrors)
                {
                    return true;
                };

            System.Net.ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls | SecurityProtocolType.Tls11 | SecurityProtocolType.Tls12;
        }

      

        public static void LogError(Exception e, string message)
        {
            logger.Error(e, "1" + message);
            logger.Error(e, string.Format("message : {0}  ; exception message : {1} ; exception source : {2} ; exception stack trace : {3}  ", message , e.Message , e.Source, e.StackTrace  ));
            logger.ErrorException(message,  e);
        }

        public static void LogInfo(string message)
        {
            logger.Info(message);
        }

        public static string GenerateNewOtp()
        {
            Random generator = new Random();
            String r = generator.Next(0, 1000000).ToString("D6");
            if (r.Distinct().Count() == 1)
            {
                r = GenerateNewOtp();
            }
            return r;
        }
        public static string GenerateReferenceNumber()
        {
            return DateTime.Now.ToString("yyyyMMddHHmmssffffff");
        }
    }
}