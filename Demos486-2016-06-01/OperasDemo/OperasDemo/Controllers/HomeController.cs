using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace OperasDemo.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult English()
        {
            Session["lang"] = "en-GB";
            return Redirect("/home/index");
        }

        public ActionResult Danish()
        {
            Session["lang"] = "da-DK";
            return Redirect("/home/index");
        }

        public ActionResult Index()
        {
            return View();
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
    }
}