using NorthwindMvc.DomainModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.WebPages;

namespace NorthwindMvc
{
    // Note: For instructions on enabling IIS6 or IIS7 classic mode, 
    // visit http://go.microsoft.com/?LinkId=9394801

    public class MvcApplication : System.Web.HttpApplication
    {

        protected void Application_Error()
        {
            if (Server.GetLastError().GetType() == typeof(IndexOutOfRangeException))
            {
                Response.Redirect("~/Content/defaulterror.html");
            }
        }
        protected void Application_Start()
        {
            DisplayModeProvider.Instance.Modes.Insert(0,
                new DefaultDisplayMode("iphone")
                {
                    ContextCondition =
                        (ctx => true)
                });

            AreaRegistration.RegisterAllAreas();

            WebApiConfig.Register(GlobalConfiguration.Configuration);
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            ViewEngines.Engines.Add(new LocalizedViewEngine());
        }
    }
}


