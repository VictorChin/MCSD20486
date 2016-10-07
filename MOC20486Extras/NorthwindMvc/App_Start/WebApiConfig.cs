using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Http;
using Newtonsoft.Json;

namespace NorthwindMvc
{
    public static class WebApiConfig
    {
        public static void Register(HttpConfiguration config)
        {
            // allow circular references when Web API returns JSON
            config.Formatters.JsonFormatter.SerializerSettings.PreserveReferencesHandling = PreserveReferencesHandling.All;

            // add a custom Web API route to allow action names to be used
            config.Routes.MapHttpRoute(
                name: "ActionApi",
                routeTemplate: "api/{controller}/{action}/{id}",
                defaults: new { id = RouteParameter.Optional }
            );

            config.Routes.MapHttpRoute(
                name: "DefaultApi",
                routeTemplate: "api/{controller}/{id}",
                defaults: new { id = RouteParameter.Optional }
            );
        }
    }
}
