using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebApplication3.Models;

namespace WebApplication3.Controllers
{
    
    public class HomeController : Controller
    {
        protected override void OnResultExecuted(ResultExecutedContext filterContext)
        {
            // hghjgjhgjh
            base.OnResultExecuted(filterContext);
        }

    
        public ActionResult Index()
        {
            ViewBag.Something = "Charlie";
            ViewBag.Number = 42;
            ViewData["Name"] = "Alice";
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "everything else.";
            var model = new HomeAboutViewModel
            {
                Customer = new Customer
                {
                    CompanyName = "Bob's Burgers"
                },
                Products = new List<Product>
                {
                    new Product { ProductID=1, ProductName="Apples"},
                    new Product { ProductID=2, ProductName="Bananas"},
                    new Product { ProductID=3, ProductName="Cherries"},
                }
            };
            return View(model);
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "<h1>Hello</h1>";

            return View();
        }

        public ActionResult Muppet()
        {
            return View();
        }
    }
}