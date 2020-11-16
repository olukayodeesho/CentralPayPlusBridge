using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using CentralPayPlusBridge.BLL;

namespace CentralPayPlusBridge
{
    /// <summary>
    /// Summary description for core
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class core : System.Web.Services.WebService
    {
        [WebMethod]
        public string CreateMandateRequest(string createMandateXmlStr)
        {
            return CentralPayLogic.DoMandateCreation(createMandateXmlStr); 
        }
        [WebMethod]
        public string CancelMandateRequest(string cancelMandateXmlStr)
        {
            return CentralPayLogic.DoMandateCancellation(cancelMandateXmlStr);
        }
        [WebMethod]
        public string GenerateOTPRequest(string generateOtpXmlStr)
        {
            return CentralPayLogic.DoOTPGeneration(generateOtpXmlStr);
        }
        [WebMethod]
        public string GenerateOTPWithoutCustomerValidationRequest(string generateOtpWithoutCustomerValidationXmlStr)
        {
            return CentralPayLogic.DoOTPGenerationWithoutCustomerRegistration(generateOtpWithoutCustomerValidationXmlStr);
        }

        [WebMethod]
        public string ValidateOTPRequest(string validateOtpXmlStr)
        {
            return CentralPayLogic.DoOTPValidation(validateOtpXmlStr);
        }
        [WebMethod]
        public string ValidateOTPWithoutCustomerValidationRequest(string validateOtpWithoutCustomerValidationXmlStr)
        {
            return CentralPayLogic.DoOTPValidationWithoutCustomerRegistration(validateOtpWithoutCustomerValidationXmlStr);
        }
        [WebMethod]
        public string DoMandateRequery(string mandateRequeryXmlStr)
        {
            return CentralPayLogic.DoMandateRequery(mandateRequeryXmlStr);
        }
    }
}
