using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Http.Controllers;
using System.Web.Mvc;

namespace NorthwindMvc.Filters
{
    public class SampleFilterAttribute : ActionFilterAttribute
    {
         
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            Debug.WriteLine("SampleFilter executing");
            var headers = filterContext.HttpContext.Request.Headers;
            
            foreach (var item in headers.Keys)
            {
                Debug.WriteLine("{0}:{1}", item, headers.Get(item.ToString()));
            }
            
        }
      
        public override void OnResultExecuted(ResultExecutedContext filterContext)
        {
            Debug.WriteLine("SampleFilter Result executed");
            
            var headers = filterContext.HttpContext.Response.Headers;
            foreach (var item in headers.Keys)
            {
                Debug.WriteLine("Response Headers:");
                Debug.WriteLine("{0}:{1}", item, headers.Get(item.ToString()));
            }

        }

    }
}