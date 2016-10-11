using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MvcDemo.Modules
{
    public class CustomModule : IHttpModule
    {
        public void Dispose()
        {
            throw new NotImplementedException();
        }

        public void Init(HttpApplication context)
        {
            context.MapRequestHandler += Context_MapRequestHandler;
        }

        private void Context_MapRequestHandler(object sender, EventArgs e)
        {
            throw new NotImplementedException();
        }
    }
}