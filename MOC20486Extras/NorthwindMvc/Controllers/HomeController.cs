using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using NorthwindMvc.Models;

namespace NorthwindMvc.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/

        public ActionResult Index()
        {
            // generate a random number of visitors for the model
            var model = (new Random()).Next(0, 999);
            return View(model);
        }

        //
        // GET: /Home/Person

        public ActionResult Person()
        {
            var model = new Person
            {
                FirstName = "Bob",
                LastName = "Smith",
                Age = (new Random()).Next(18, 65)
            };

            // convert the model into an HTML response by passing to a view
            ViewResult response = View(model);

            // return the HTML to the browser
            return response;
        }

        //
        // GET: /Home/PersonAsJson

        public ActionResult PersonAsJson()
        {
            var model = new Person
            {
                FirstName = "Bob",
                LastName = "Smith",
                Age = (new Random()).Next(18, 65)
            };

            // convert the model into a JSON response
            JsonResult response = Json(model, JsonRequestBehavior.AllowGet);

            // return the JSON to the browser
            return response;
        }

        //
        // GET: /Home/Flights

        public ActionResult Flights()
        {
            return View();
        }
    }
}
