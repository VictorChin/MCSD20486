using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.Mvc;

namespace NorthwindMvc.DomainModel
{
    public class LocalizedViewEngine : RazorViewEngine
    {
        public override ViewEngineResult FindView(ControllerContext controllerContext, string viewName, string masterName, bool useCache)
        {

            string localizedViewName = viewName;
            if (!string.IsNullOrEmpty(viewName))
                localizedViewName += "." +Thread.CurrentThread.CurrentUICulture.Name;

            string localizedMasterName = masterName;
            if (!string.IsNullOrEmpty(masterName))
                localizedMasterName += "." +Thread.CurrentThread.CurrentUICulture.Name;

            var result = base.FindView(controllerContext, localizedViewName, localizedMasterName, useCache);

            if (result.View == null)
                result = base.FindView(controllerContext, viewName, masterName, useCache);

            return result;
        }

        public override ViewEngineResult FindPartialView(ControllerContext controllerContext, string partialViewName, bool useCache)
        {
            string localizedPartialViewName = partialViewName;
            if (!string.IsNullOrEmpty(partialViewName))
                localizedPartialViewName += "." +Thread.CurrentThread.CurrentUICulture.Name;
            var result = base.FindPartialView(controllerContext, localizedPartialViewName, useCache);

            if (result.View == null)
                result = base.FindPartialView(controllerContext, partialViewName, useCache);

            return result;
        }

    }
}