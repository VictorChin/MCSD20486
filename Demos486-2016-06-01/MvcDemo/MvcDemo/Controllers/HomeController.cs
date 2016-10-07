using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MvcDemo.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            int model = new Random().Next(500, 1001);
            return View(model);
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            var model = new Models.Person
            {
                FirstName = "Alice",
                Age = 45,
                FavouriteColour = "Green"
            };

            return View(model);
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public ActionResult Customers()
        {
            var db = new Models.Northwind();
            var model = db.Customers;
            return View(model);
        }
    }
}