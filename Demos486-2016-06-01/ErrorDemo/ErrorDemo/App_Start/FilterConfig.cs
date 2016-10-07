using System;
using System.Web;
using System.Web.Mvc;

namespace ErrorDemo
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute
            {
                ExceptionType =
                    typeof(NotImplementedException),
                View = "NotImplemented"
            });

            filters.Add(new HandleErrorAttribute());
        }
    }
}
