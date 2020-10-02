using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CentralPayPlusBridge.BLL;

namespace CentralPayPlusBridge.DAO
{
    public class RequestResponseRepository
    {
        public static void SaveRequestResponse(string httpMethodType, string requestBody, DateTime requestTime, string requestUrl,
        string responseBody, DateTime responseTime)
        {
            try
            {
                using (var context = new CentralPayBridgeEntities())
                {
                    var rrl = new RequestResponseLog();
                    rrl.HttpMethodType = httpMethodType;
                    rrl.RequestBody = requestBody;
                    rrl.RequestTime = requestTime;
                    rrl.RequestUrl = requestUrl;
                    rrl.ResponseBody = responseBody;
                    rrl.ResponseTime = responseTime;
                    context.RequestResponseLogs.Add(rrl);
                    context.SaveChanges();
                }
            }
            catch (Exception e)
            {
                Utils.LogError(e, "Failed to execute SaveRequestResponse");
            }
        }
    }
}