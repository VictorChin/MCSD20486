using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace RouteDemo.Controllers
{
    public class ProductsController : ApiController
    {
        public string[] get()
        {
            return new string[]
            {
                "Bob", "Alice"
            };
        }
    }
}
