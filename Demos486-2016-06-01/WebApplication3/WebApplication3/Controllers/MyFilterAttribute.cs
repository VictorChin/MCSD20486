using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebApplication3.Controllers
{
    public class AnotherOneAttribute : ActionFilterAttribute
    {
        public override void OnResultExecuted(ResultExecutedContext filterContext)
        {
            base.OnResultExecuted(filterContext);
        }
    }


    public class MyFilterAttribute : FilterAttribute, IActionFilter, IResultFilter
    {
        //after
        public void OnActionExecuted(ActionExecutedContext filterContext)
        {
            
            Debug.WriteLine("MyFilterAttribute.OnActionExecuted, Controller: {0}", filterContext.Controller);
        }
        //before
        public void OnActionExecuting(ActionExecutingContext filterContext)
        {
            Debug.WriteLine("MyFilterAttribute.OnActionExecuting, Controller: {0}", filterContext.Controller);
        }

        public void OnResultExecuted(ResultExecutedContext filterContext)
        {
            Debug.WriteLine("MyFilterAttribute.OnResultExecuted, Controller: {0}", filterContext.Controller);
        }

        public void OnResultExecuting(ResultExecutingContext filterContext)
        {
            
            Debug.WriteLine("MyFilterAttribute.OnResultExecuting, Controller: {0}", filterContext.Controller);
        }
    }
}