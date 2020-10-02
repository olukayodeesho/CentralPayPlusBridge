using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CentralPayPlusBridge.BLL;

namespace CentralPayPlusBridge.DAO
{
    public class MandateRepo
    {
        public static bool SaveMandate(MandateLog mandate)
        {
            bool saved = false; 
            try
            {
                using (var context = new CentralPayBridgeEntities())
                {
                    context.MandateLogs.Add(mandate);
                    context.SaveChanges();
                    mandate.MandateCode = "CpayMD" + mandate.Id.ToString().PadLeft(8, '0');
                    context.SaveChanges();
                    saved = true; 
                }
            }
            catch (Exception ext)
            {
                ExceptionLogRepo.SaveExceptionLog(ext);
                Utils.LogError(ext, "Failed to create MandateLog ");
            }
            return saved; 
        }

        public static MandateLog GetMandateByCode(string mandateCode)
        {

            MandateLog resp = new DAO.MandateLog();
            try
            {

                using (var context = new CentralPayBridgeEntities())
                {
                    resp = context.MandateLogs.FirstOrDefault(g => g.MandateCode.Trim().ToLower().Equals(mandateCode.Trim().ToLower()) && g.IsCancelled == false);
                }
            }
            catch (Exception ext)
            {
                ExceptionLogRepo.SaveExceptionLog(ext);
                Utils.LogError(ext, "Failed to create MandateLog ");
            }
            return resp;
        }
        public static MandateLog QueryMandate(string mandateCode, string billerId)
        {
            
            MandateLog resp = new DAO.MandateLog();
            try
            {
               
                using (var context = new CentralPayBridgeEntities())
                {
                    resp = context.MandateLogs.FirstOrDefault(g=> g.MandateCode.Trim().ToLower().Equals(mandateCode.Trim().ToLower()) && g.BillerId.Equals(billerId));
                }
            }
            catch (Exception ext)
            {
                ExceptionLogRepo.SaveExceptionLog(ext);
                Utils.LogError(ext, "Failed to create MandateLog ");
            }
            return resp;
        }
        public static bool CancelMandate(string mandateCode, string billerId)
        {
            bool isSuccessful = false;
            MandateLog resp = new DAO.MandateLog();
            try
            {

                using (var context = new CentralPayBridgeEntities())
                {
                    resp = context.MandateLogs.FirstOrDefault(g => g.MandateCode.Trim().ToLower().Equals(mandateCode.Trim().ToLower()) && g.BillerId.Equals(billerId));
                    if (resp != null) 
                    {
                        resp.DateCancelled = DateTime.Now;
                        resp.IsCancelled = true;
                        resp.DateUpdated = DateTime.Now;
                        context.SaveChanges();
                        isSuccessful = true; 
                      }
               }
            }
            catch (Exception ext)
            {
                ExceptionLogRepo.SaveExceptionLog(ext);
                Utils.LogError(ext, "Failed to create MandateLog ");
            }
            return isSuccessful;
        }
        public static bool SaveCentralPayOtp(CentralPayOtp otp)
        {
            bool isSuccessful = false;
            try
            {
                using (var context = new CentralPayBridgeEntities())
                {
                    context.CentralPayOtps.Add(otp);
                    context.SaveChanges();
                    isSuccessful = true;
                }
            }
            catch (Exception ext)
            {
                ExceptionLogRepo.SaveExceptionLog(ext);
                Utils.LogError(ext, "Failed to create CentralPayOtp ");
            }
            return isSuccessful; 
        }

        public static bool ValidateOtp(string mandateCode, string otp)
        {

            CentralPayOtp resp = new DAO.CentralPayOtp();
            bool isValid = false; 
            try
            {

                using (var context = new CentralPayBridgeEntities())
                {
                    resp = context.CentralPayOtps.FirstOrDefault(g => g.MandateLog.MandateCode.Trim().ToLower().Equals(mandateCode.Trim().ToLower()) && g.otp.Equals(otp));
                    if (resp != null) { isValid = true; }
                     }
            }
            catch (Exception ext)
            {
                ExceptionLogRepo.SaveExceptionLog(ext);
                Utils.LogError(ext, "Failed to create MandateLog ");
            }
            return isValid;
        }
    }
}