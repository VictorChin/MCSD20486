using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace RouteDemo
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.RouteExistingFiles = true;

            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: "Example2",
                url: "fred/{id}",
                defaults: new { controller = "home", action = "routeinfo", id = UrlParameter.Optional },
                constraints: new { id = "^[0-9]+$" }
                );

            routes.MapRoute(
                name: "Example",
                url: "fred/{color}",
                defaults: new { controller = "home", action = "routeinfo", color = UrlParameter.Optional }
                );

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            );
        }
    }
}
