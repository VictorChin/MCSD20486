using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using NorthwindMvc.ViewModels;

namespace NorthwindMvc.Controllers
{
    public class MuppetController : Controller
    {
        //
        // GET: /Muppet/

        public ActionResult Index()
        {
            return View();
        }

        // GET: /Muppet/MissPiggy
        public ActionResult MissPiggy()
        {
            // to return a 404 status code
            var response = HttpNotFound("Miss Piggy has left the building.");
            return response;
        }

        // GET: /Muppet/Kermit
        public ActionResult Kermit()
        {
            // to return a 302 redirect
            var response = Redirect("/Muppet/FozzyBear");
            return response;
        }

        // GET: /Muppet/FozzyBear
        public ActionResult FozzyBear()
        {
            // to return a BLOB or other file
            var response = File("/Content/Images/fozzy.jpg", "image/jpeg");
            return response;
        }

        // GET: /Muppet/Animal
        public ActionResult Animal()
        {
            var model = new MuppetAnimalViewModel
            {
                FullName = "Mr. Animal",
                Legs = 2,
                Children = new string[] { "Sally", "Max", "Henry" }
            };
            return View(model);
        }
    }
}
