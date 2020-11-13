using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace cpp.test
{
    class Program
    {
        static void Main(string[] args)
        {
            //createMandateReq();
            //generateOTPReq();
            validateOTPReq();
        }
        public static string getXmlDeclaration()
        {
            return "<?xml version=\"1.0\" encoding=\"utf-8\" ?>";
        }
        private static void createMandateReq() 
        {
            try {
                var client = new ServiceReference1.coreSoapClient();
                var req = "";
                req = "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\" ?><CreateMandateRequest><AcctNumber>1020021016</AcctNumber><AcctName>JOHN SMITH</AcctName><TransType>1</TransType><BankCode>XXXXXXX</BankCode><BillerID>123</BillerID><BillerName>NIBSS Online Merchant</BillerName><BillerTransId>1045621</BillerTransId><HashValue>XXXXXXXXX</HashValue></CreateMandateRequest>";


                var response = client.CreateMandateRequest(req);
                Console.WriteLine(" request  : " + req);
                Console.WriteLine(" response " + response);

             } catch (Exception e) { }

        }


        private static void generateOTPReq()
        {
            try
            {
                var client = new ServiceReference1.coreSoapClient();
                var req = "";
                req = "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\" ?><GenerateOTPRequest><MandateCode>CpayMD00000003</MandateCode><TransType>2</TransType<Amount>100</Amount>BankCode>000017</BankCode><BillerID>1239032</BillerID><BillerName>Konga</BillerName><BillerTransId>10926172</BillerTransId><HashValue>XXXXXXXXX</HashValue></GenerateOTPRequest>";


                var response = client.GenerateOTPRequest(req);
                Console.WriteLine(" request  : " + req);
                Console.WriteLine(" response " + response);

            }
            catch (Exception e) { }

        }

        private static void validateOTPReq()
        {
            try
            {
                var client = new ServiceReference1.coreSoapClient();
                var req = "";
                req = "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\" ?><ValidateOTPRequest><MandateCode>CpayMD00000003</MandateCode><TransType>2</TransType><BankCode>000017</BankCode><OTP>996156</OTP><Amount>100</Amount><BillerID>1239032</BillerID><BillerName>Konga</BillerName><BillerTransId>10926172</BillerTransId><HashValue>XXXXXXXXX</HashValue></ValidateOTPRequest>";


                var response = client.ValidateOTPRequest(req);
                Console.WriteLine(" request  : " + req);
                Console.WriteLine(" response " + response);

            }
            catch (Exception e) { }

        }
    }
}
