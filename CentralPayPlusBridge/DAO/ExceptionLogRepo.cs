using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CentralPayPlusBridge.BLL;

namespace CentralPayPlusBridge.DAO
{
    public class ExceptionLogRepo
    {
        public static void SaveExceptionLog(Exception e)
        {
            Exception innerMostException = e;
            while (innerMostException.InnerException != null) { innerMostException = innerMostException.InnerException; }
            try
            {

                using (var context = new CentralPayBridgeEntities())
                {
                    var ex = new ExceptionLog();
                    ex.ErrorDatetime = DateTime.Now;
                    ex.ErrorMessage = innerMostException.Message;
                    ex.ErrorSource = innerMostException.Source;
                    ex.ErrorStacktrace = innerMostException.StackTrace;

                    context.ExceptionLogs.Add(ex);
                    context.SaveChanges();
                }
            }
            catch (Exception ext)
            {
                Utils.LogError(innerMostException, "Original exception meant to be saved on the db ");
                Exception innerMostExceptionforDB = ext;
                while (innerMostExceptionforDB.InnerException != null) { innerMostExceptionforDB = innerMostExceptionforDB.InnerException; }
                Utils.LogError(innerMostExceptionforDB, "Failed to create SaveExceptionLog ");
            }
        }
    }
}