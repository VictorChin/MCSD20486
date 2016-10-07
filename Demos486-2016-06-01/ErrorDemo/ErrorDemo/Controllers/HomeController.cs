using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ErrorDemo.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult My404()
        {
            return View("NotImplemented", new System.Web.Mvc.HandleErrorInfo(
new Exception("djfkghkjfdkg"), "bob", "alice"
                ));
        }

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            try
            {
                throw new ArgumentException("You asked me to throw an error!");
            }
            catch
            {

            }

            ViewBag.Message = "Your application description page.";

            return View();
        }
        

        public ActionResult Contact()
        {
            throw new NotImplementedException("You asked me to throw an error!");

            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}