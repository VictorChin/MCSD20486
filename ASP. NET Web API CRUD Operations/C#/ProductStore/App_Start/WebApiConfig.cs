using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Http;

namespace ProductStore
{
    public static class WebApiConfig
    {
        public static void Register(HttpConfiguration config)
        {
            config.MessageHandlers.Add(new Infra.MethodOverrideHandler());
            //config.MessageHandlers.Add(new Infra.ApiKeyHandler("secret"));
            config.MessageHandlers.Add(new Infra.AddTimerHeaderHandler());
            config.Routes.MapHttpRoute(
                name: "DefaultApi",
                routeTemplate: "api/{controller}/{id}",
                defaults: new { id = RouteParameter.Optional }
            );
        }
    }
}
