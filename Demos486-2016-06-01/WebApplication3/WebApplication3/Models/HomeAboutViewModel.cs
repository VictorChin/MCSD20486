using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication3.Models
{
    public class HomeAboutViewModel
    {
        public Customer Customer { get; set; }
        public IEnumerable<Product> Products { get; set; }
    }
}