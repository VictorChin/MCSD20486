using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Web;
using System.Web.Mvc;

namespace WebApp_WSFederation_DotNet.Controllers
{
    
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            var claimsUser = User.Identity as ClaimsIdentity;
            return (claimsUser.Claims.Count() != 0)? View(claimsUser.Claims):View("NoClaims");
            
        }

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

        public ActionResult Error(string message)
        {
            ViewBag.Message = message;
            return View("Error");
        }
    }
}