using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Http;

namespace NorthwindMvc.Controllers
{
    public class FlightsController : ApiController
    {
        public string Get()
        {
            return "Hello from Flights controller";
        }

        public string Get(string id)
        {
            return "Hello from Flights controller: " + id;
        }

        [ActionName("display")] // requires a custom Web API route (see WebApiConfig.cs)
        public async Task<string> ThisMethodCouldBeNamedAnything()
        {
            // read the form values that were POSTed
            var form = await Request.Content.ReadAsFormDataAsync();

            return "Flight name entered was: " + form["flightName"];
        }

        public async Task<HttpResponseMessage> Show()
        {
            var form = await Request.Content.ReadAsFormDataAsync();

            // create a custom response
            var msg = Request.CreateResponse(HttpStatusCode.OK, "Show: " + form["flightName"]);
            msg.Headers.Add("custom-header", "value");

            return msg;
        }
    }
}
