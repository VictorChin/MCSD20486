using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FB486Exercise1.Models;
using System.Diagnostics;

namespace FB486Exercise1.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            // Use LINQ to Entities.
            var db = new Northwind();

            // Create a query using a CustomerSubset class because we only want
            // to retrieve CustomerID, CompanyName, Country on the home page.

            IQueryable<CustomerSubset> query = db.Customers.OrderBy(c => c.Country).ThenBy(c => c.CompanyName).Select(c => new Models.CustomerSubset { CustomerID = c.CustomerID, CompanyName = c.CompanyName, Country = c.Country });

            // Output the query as Transact-SQL to Output window in Visual Studio.
            Debug.WriteLine(query.ToString());

            // Create a lookup that groups by country.
            ILookup<string, CustomerSubset> model = query.ToLookup(c => c.Country);

            // Pass the lookup as the model for the view.
            return View(model);
        }

        public ActionResult Details(string id)
        {
            // Use LINQ to Entities.
            var db = new Northwind();

            // Check how many matches there are for the passed id parameter. 
            if (db.Customers.Count(c => c.CustomerID == id) != 1)
            {
                // If is not a single match return HTTP status code 404.
                return HttpNotFound();
            }
            else
            {
                // If there is one match then get the whole customer entity and 
                // its related orders and their related order details.
                var model = db.Customers.Include("Orders.Order_Details").Single(c => c.CustomerID == id);

                // Pass the customer and its related data to the view.
                return View(model);
            }
        }

        public ActionResult About()
        {
            ViewBag.Message = "Northwind Customers and Order History.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}