using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Xml.Serialization;
using CentralPayPlusBridge.CustomObject;
using CentralPayPlusBridge.DAO;

namespace CentralPayPlusBridge.BLL
{

    public class CentralPayLogic
    {
        public static string DoMandateCreation(string createMandateStr)
        {
            Serializer ser = new Serializer();
            string xmlOutputData = string.Empty;
            string responseCode = string.Empty;
            DateTime requestTime = DateTime.Now;
            CreateMandateResponse objResp = new CreateMandateResponse();

            try
            {
                CreateMandateRequest obj = ser.Deserialize<CreateMandateRequest>(createMandateStr);
                if (obj != null)
                {
                    if (!string.IsNullOrEmpty(obj.BillerID) || !string.IsNullOrEmpty(obj.BillerName) || !string.IsNullOrEmpty(obj.BillerTransId) || !string.IsNullOrEmpty(obj.AcctName) || !string.IsNullOrEmpty(obj.AcctNumber) || !string.IsNullOrEmpty(obj.BankCode))
                    {
                        MandateLog mlog = new MandateLog()
                        {
                            AccountName = obj.AcctName,
                            BankCode = obj.BankCode,
                            AccountNumber = obj.AcctNumber,
                            BillerId = obj.BillerID,
                            BillerName = obj.BillerName,
                            BillerTransId = obj.BillerTransId,
                            DateCreated = DateTime.Now,
                            HashValue = obj.HashValue,
                            TransType = obj.TransType
                        };

                        bool isSaved = MandateRepo.SaveMandate(mlog);

                        responseCode = isSaved ? ResponseCodeMap.Successful : ResponseCodeMap.UnknownError;

                        objResp = new CreateMandateResponse
                        {
                            AcctName = obj.AcctName,
                            AcctNumber = obj.AcctNumber,
                            BankCode = obj.BankCode,
                            BillerID = obj.BillerID,
                            BillerName = obj.BillerName,
                            BillerTransId = obj.BillerTransId,
                            MandateCode = isSaved ? mlog.MandateCode : "",
                            TransType = obj.TransType,
                            ResponseCode = responseCode

                        };
                    }
                    else
                    {
                        objResp = new CreateMandateResponse { ResponseCode = ResponseCodeMap.InvalidXml };
                    }
                }
                else
                {
                    objResp = new CreateMandateResponse { ResponseCode = ResponseCodeMap.InvalidXml };
                }
                xmlOutputData = ser.Serialize<CreateMandateResponse>(objResp);
            }
            catch (Exception e)
            {
                ExceptionLogRepo.SaveExceptionLog(e);
                xmlOutputData = ser.Serialize<CreateMandateResponse>(new CreateMandateResponse { ResponseCode = ResponseCodeMap.InvalidXml });
            }
            DateTime responseTime = DateTime.Now;
            RequestResponseRepository.SaveRequestResponse("ASMX", createMandateStr, requestTime, "", xmlOutputData, responseTime);
            return xmlOutputData;
        }

        public static string DoMandateCancellation(string requestStr)
        {

            Serializer ser = new Serializer();
            string xmlOutputData = string.Empty;
            string responseCode = string.Empty;
            DateTime requestTime = DateTime.Now;
            CancelMandateResponse objResp = new CancelMandateResponse();

            try
            {
                CancelMandateRequest obj = ser.Deserialize<CancelMandateRequest>(requestStr);
                if (obj != null)
                {


                    bool isSaved = MandateRepo.CancelMandate(obj.MandateCode, obj.BillerID);

                    responseCode = isSaved ? ResponseCodeMap.Successful : ResponseCodeMap.UnknownError;

                    objResp = new CancelMandateResponse
                    {
                        BankCode = obj.BankCode,
                        BillerID = obj.BillerID,
                        BillerName = obj.BillerName,
                        BillerTransId = obj.BillerTransId,
                        MandateCode = obj.MandateCode,
                        TransType = obj.TransType,
                        ResponseCode = responseCode,
                        HashValue = obj.HashValue


                    };
                }
                else
                {
                    objResp = new CancelMandateResponse { ResponseCode = ResponseCodeMap.InvalidXml };
                }
                xmlOutputData = ser.Serialize<CancelMandateResponse>(objResp);
            }
            catch (Exception e) {
             ExceptionLogRepo.SaveExceptionLog(e);
              xmlOutputData = ser.Serialize<CancelMandateResponse>(new CancelMandateResponse { ResponseCode = ResponseCodeMap.InvalidXml });
            }
            DateTime responseTime = DateTime.Now;
            RequestResponseRepository.SaveRequestResponse("ASMX", requestStr, requestTime, "", xmlOutputData, responseTime);
            return xmlOutputData;
        }

        public static string DoOTPGeneration(string requestStr)
        {
            Serializer ser = new Serializer();
            string xmlOutputData = string.Empty;
            string responseCode = string.Empty;
            DateTime requestTime = DateTime.Now;
            GenerateOTPResponse objResp = new GenerateOTPResponse();

            try
            {
                GenerateOTPRequest obj = ser.Deserialize<GenerateOTPRequest>(requestStr);
                if (obj != null)
                {
                    var mandate = MandateRepo.GetMandateByCode(obj.MandateCode);
                    if (mandate != null)
                    {
                        CentralPayOtp otp = new CentralPayOtp()
                        {
                            DateGenerated = DateTime.Now,
                            IsUsed = false,
                            MandateCodeId = mandate.Id,
                            otp = Utils.GenerateNewOtp(),
                            Amount = Convert.ToDecimal(obj.Amount),
                            ReferenceNumber = Guid.NewGuid().ToString()
                        };
                        bool isSaved = MandateRepo.SaveCentralPayOtp(otp);

                        responseCode = isSaved ? ResponseCodeMap.Successful : ResponseCodeMap.UnknownError;

                        objResp = new GenerateOTPResponse
                        {

                            BankCode = obj.BankCode,
                            BillerID = obj.BillerID,
                            BillerName = obj.BillerName,
                            BillerTransId = obj.BillerTransId,
                            MandateCode = obj.MandateCode,
                            TransType = obj.TransType,
                            Amount = obj.Amount,
                            ResponseCode = responseCode,
                            ReferenceNumber = Utils.GenerateReferenceNumber()

                        };
                    }
                    else { objResp = new GenerateOTPResponse { ResponseCode = ResponseCodeMap.USerNotSetUp }; }
                }
                else
                {
                    objResp = new GenerateOTPResponse { ResponseCode = ResponseCodeMap.InvalidXml };
                }

                xmlOutputData = ser.Serialize<GenerateOTPResponse>(objResp);
            }
            catch (Exception e) { 
            ExceptionLogRepo.SaveExceptionLog(e);
             xmlOutputData = ser.Serialize<GenerateOTPResponse>(new GenerateOTPResponse { ResponseCode = ResponseCodeMap.InvalidXml }); 
             }
            DateTime responseTime = DateTime.Now;
            RequestResponseRepository.SaveRequestResponse("ASMX", requestStr, requestTime, "", xmlOutputData, responseTime);
            return xmlOutputData;
        }

        public static string DoOTPGenerationWithoutCustomerRegistration(string requestStr)
        {
            Serializer ser = new Serializer();
            string xmlOutputData = string.Empty;
            string responseCode = string.Empty;
            DateTime requestTime = DateTime.Now;
            GenerateOTPResponse objResp = new GenerateOTPResponse();

            try
            {
                GenerateOTPRequestEx obj = ser.Deserialize<GenerateOTPRequestEx>(requestStr);
                if (obj != null)
                {
                    var mandate = MandateRepo.GetMandateByCode(obj.MandateCode);
                    if (mandate != null)
                    {
                        CentralPayOtp otp = new CentralPayOtp()
                        {
                            DateGenerated = DateTime.Now,
                            IsUsed = false,
                            MandateCodeId = mandate.Id,
                            otp = Utils.GenerateNewOtp(),
                            Amount = Convert.ToDecimal(obj.Amount),
                            ReferenceNumber = Guid.NewGuid().ToString()
                        };

                        bool isSaved = MandateRepo.SaveCentralPayOtp(otp);

                        responseCode = isSaved ? ResponseCodeMap.Successful : ResponseCodeMap.UnknownError;

                        objResp = new GenerateOTPResponse
                        {

                            BankCode = obj.BankCode,
                            BillerID = obj.BillerID,
                            BillerName = obj.BillerName,
                            BillerTransId = obj.BillerTransId,
                            MandateCode = obj.MandateCode,
                            TransType = obj.TransType,
                            ResponseCode = responseCode

                        };
                    }
                    else { objResp = new GenerateOTPResponse { ResponseCode = ResponseCodeMap.USerNotSetUp }; }
                }
                else
                {
                    objResp = new GenerateOTPResponse { ResponseCode = ResponseCodeMap.InvalidXml };
                }

                xmlOutputData = ser.Serialize<GenerateOTPResponse>(objResp);
            }
            catch (Exception e) { ExceptionLogRepo.SaveExceptionLog(e);
                xmlOutputData = ser.Serialize<GenerateOTPResponse>(new GenerateOTPResponse { ResponseCode = ResponseCodeMap.InvalidXml });
            }
            DateTime responseTime = DateTime.Now;
            RequestResponseRepository.SaveRequestResponse("ASMX", requestStr, requestTime, "", xmlOutputData, responseTime);
            return xmlOutputData;
        }

        public static string DoOTPValidation(string requestStr)
        {
            Serializer ser = new Serializer();
            string xmlOutputData = string.Empty;
            string responseCode = string.Empty;
            DateTime requestTime = DateTime.Now;
            ValidateOTPResponse objResp = new ValidateOTPResponse();

            try
            {
                ValidateOTPRequest obj = ser.Deserialize<ValidateOTPRequest>(requestStr);
                if (obj != null)
                {
                    bool isSaved = MandateRepo.ValidateOtp(obj.MandateCode, obj.OTP, Convert.ToDecimal(obj.Amount));

                    responseCode = isSaved ? ResponseCodeMap.Successful : ResponseCodeMap.InvalidXml;

                    objResp = new ValidateOTPResponse
                    {
                        BankCode = obj.BankCode,
                        BillerID = obj.BillerID,
                        BillerName = obj.BillerName,
                        BillerTransId = obj.BillerTransId,
                        MandateCode = obj.MandateCode,
                        TransType = obj.TransType,
                        Amount = obj.Amount,
                        ResponseCode = responseCode,
                        HashValue = obj.HashValue


                    };
                }
                else
                {
                    objResp = new ValidateOTPResponse { ResponseCode = ResponseCodeMap.InvalidXml };
                }
                xmlOutputData = ser.Serialize<ValidateOTPResponse>(objResp);
            }
            catch (Exception e) { ExceptionLogRepo.SaveExceptionLog(e);
                xmlOutputData = ser.Serialize<ValidateOTPResponse>(new ValidateOTPResponse { ResponseCode = ResponseCodeMap.InvalidXml });
            }
            DateTime responseTime = DateTime.Now;
            RequestResponseRepository.SaveRequestResponse("ASMX", requestStr, requestTime, "", xmlOutputData, responseTime);
            return xmlOutputData;
        }

        public static string DoOTPValidationWithoutCustomerRegistration(string requestStr)
        {
            Serializer ser = new Serializer();
            string xmlOutputData = string.Empty;
            string responseCode = string.Empty;
            DateTime requestTime = DateTime.Now;
            ValidateOTPResponse objResp = new ValidateOTPResponse();

            try
            {
                ValidateOTPRequestEx obj = ser.Deserialize<ValidateOTPRequestEx>(requestStr);
                if (obj != null)
                {
                    bool isSaved = MandateRepo.ValidateOtp(obj.MandateCode, obj.OTP, Convert.ToDecimal(obj.Amount));

                    responseCode = isSaved ? ResponseCodeMap.Successful : ResponseCodeMap.InvalidXml;

                    objResp = new ValidateOTPResponse
                    {
                        BankCode = obj.BankCode,
                        BillerID = obj.BillerID,
                        BillerName = obj.BillerName,
                        BillerTransId = obj.BillerTransId,
                        MandateCode = obj.MandateCode,
                        TransType = obj.TransType,
                        ResponseCode = responseCode,
                        Amount = obj.Amount,
                        HashValue = obj.HashValue


                    };
                }
                else
                {
                    objResp = new ValidateOTPResponse { ResponseCode = ResponseCodeMap.InvalidXml };
                }
                xmlOutputData = ser.Serialize<ValidateOTPResponse>(objResp);
            }
            catch (Exception e) { ExceptionLogRepo.SaveExceptionLog(e);
                xmlOutputData = ser.Serialize<ValidateOTPResponse>(new ValidateOTPResponse { ResponseCode = ResponseCodeMap.InvalidXml });
            }
            DateTime responseTime = DateTime.Now;
            RequestResponseRepository.SaveRequestResponse("ASMX", requestStr, requestTime, "", xmlOutputData, responseTime);
            return xmlOutputData;
        }

        public static string DoMandateRequery(string requestStr)
        {

            Serializer ser = new Serializer();
            string xmlOutputData = string.Empty;
            string responseCode = string.Empty;
            DateTime requestTime = DateTime.Now;
            RequeryMandateResponse objResp = new RequeryMandateResponse();

            try
            {
                RequeryMandateRequest obj = ser.Deserialize<RequeryMandateRequest>(requestStr);
                if (obj != null)
                {
                    MandateLog mandate = MandateRepo.QueryMandate(obj.MandateCode, obj.BillerID);

                    responseCode = mandate != null ? ResponseCodeMap.Successful : ResponseCodeMap.UnknownError;

                    objResp = new RequeryMandateResponse
                    {
                        BankCode = mandate.BankCode,
                        BillerID = mandate.BillerId,
                        BillerName = mandate.BillerName,
                        BillerTransId = mandate.BillerTransId,
                        MandateCode = mandate.MandateCode,
                        TransType = mandate.TransType,
                        ResponseCode = responseCode,
                        HashValue = mandate.HashValue,
                        AcctName = mandate.AccountName,
                        AcctNumber = mandate.AccountNumber



                    };
                }
                else
                {
                    objResp = new RequeryMandateResponse { ResponseCode = ResponseCodeMap.InvalidXml };
                }
                xmlOutputData = ser.Serialize<RequeryMandateResponse>(objResp);
            }
            catch (Exception e) { ExceptionLogRepo.SaveExceptionLog(e);
                xmlOutputData = ser.Serialize<RequeryMandateResponse>(new RequeryMandateResponse { ResponseCode = ResponseCodeMap.InvalidXml });
            }
            DateTime responseTime = DateTime.Now;
            RequestResponseRepository.SaveRequestResponse("ASMX", requestStr, requestTime, "", xmlOutputData, responseTime);
            return xmlOutputData;
        }
    }




    public class Serializer
    {
        public T Deserialize<T>(string input) where T : class
        {
            System.Xml.Serialization.XmlSerializer ser = new System.Xml.Serialization.XmlSerializer(typeof(T));

            using (StringReader sr = new StringReader(input))
            {
                return (T)ser.Deserialize(sr);
            }
        }

        public string Serialize<T>(T ObjectToSerialize)
        {
            XmlSerializer xmlSerializer = new XmlSerializer(ObjectToSerialize.GetType());
            XmlSerializerNamespaces ns = new XmlSerializerNamespaces();
            ns.Add("", "");

            using (StringWriter textWriter = new StringWriter())
            {
                xmlSerializer.Serialize(textWriter, ObjectToSerialize, ns);
                return textWriter.ToString();
            }
        }
    }

}