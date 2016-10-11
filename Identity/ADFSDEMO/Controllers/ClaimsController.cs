using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Web;
using System.Web.Mvc;

namespace ADFSDEMO.Controllers
{
    [Authorize]
    public class ClaimsController : Controller
    {
        // GET: Claims
        public ActionResult Index()
        {
            var ident = User.Identity as ClaimsIdentity;
            return View(ident.Claims);
        }
    }
}