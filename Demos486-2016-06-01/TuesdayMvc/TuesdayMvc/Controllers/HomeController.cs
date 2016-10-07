using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TuesdayMvc.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }
        
        public ActionResult Params(Models.Thing t)
        {
            string colour = Request.Form["colour"].ToString();
            string size = Request.QueryString["size"].ToString();
            int id = int.Parse(RouteData.Values["id"].ToString());

            return View(t);

            //return Content(string.Format("size: {0}, colour: {1}, id: {2}",
            //    t.Size, t.Colour, t.ID), "text/plain");
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