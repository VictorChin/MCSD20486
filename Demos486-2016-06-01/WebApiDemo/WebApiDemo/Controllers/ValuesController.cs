﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace WebApiDemo.Controllers
{
    public class ValuesController : ApiController
    {
        // GET api/values
        public IEnumerable<string> gEtsdlkhflksdhkfhksjdhfks()
        {
            return new string[] { "value1", "value2" };
        }

        // GET api/values/5
        public string Get(int id)
        {
            return "value = " + id;
        }

        // POST api/values
        [HttpPost]
        public WebApiDemo.Models.Muppet xsdgfdsh([FromBody]WebApiDemo.Models.Muppet value)
        {
            System.Threading.Thread.Sleep(3000);
            value.Name += "X";
            value.Age++;
            return value;
        }

        // PUT api/values/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/values/5
        public void Delete(int id)
        {
        }
    }
}
