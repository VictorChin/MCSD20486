using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NorthwindMvc.ViewModels
{
    public class MuppetAnimalViewModel
    {
        public string FullName { get; set; }
        public int Legs { get; set; }
        public string[] Children { get; set; }
    }
}