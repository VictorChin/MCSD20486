using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace OperasDemo.Models
{
    public class OperasInitializer : DropCreateDatabaseAlways<OperasDb>
    {
        protected override void Seed(OperasDb context)
        {
            context.Operas.Add(new Opera
                {
                    Title = "Me Singing",
                    Composer = "Mark",
                    Year = 2016
                });
            context.SaveChanges();

            base.Seed(context);
        }
    }
}