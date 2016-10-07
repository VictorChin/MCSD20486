using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RouteDemo.Controllers
{
    //[Authorize(Roles="Sales,Admins")]
    public class HomeController : Controller
    {
#if !DEBUG
        [RequireHttps]
#endif
        public PartialViewResult GetTime()
        {
            return PartialView("_GetTime");
        }

        public ActionResult RouteInfo()
        {
            return Content(string.Format(
                "C: {0}, A: {1}, ID: {2}, Color: {3}",
                RouteData.Values["controller"],
                RouteData.Values["action"],
                RouteData.Values["id"],
                RouteData.Values["color"]
                ));
        }

        //[OverrideAuthorization] // MVC 5
        //[Authorize(Roles="HR", Users="Alice,Bob")]
        public ActionResult Index()
        {
            return View();
        }

        [OutputCache(Duration = 10, 
            VaryByCustom = "browser",
            Location = System.Web.UI.OutputCacheLocation.ServerAndClient)]
        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}