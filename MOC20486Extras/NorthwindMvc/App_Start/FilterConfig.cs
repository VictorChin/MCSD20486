using System.Web;
using System.Web.Mvc;

namespace NorthwindMvc
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
           // filters.Add(new HandleErrorAttribute { View = "SomtingElse" ,Order=100});
        }
    }
}