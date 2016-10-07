using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace OperasDemo.Models
{
    public class OperasDb : DbContext
    {
        public DbSet<Opera> Operas { get; set; }
    }
}