namespace ServiceDemo.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class Northwind : DbContext
    {
        public Northwind()
            : base("name=Northwind")
        {
        }

        public virtual DbSet<Shipper> Shippers { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
        }
    }
}
