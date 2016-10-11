using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace NorthwindMvc.DomainModel
{
    [MetadataType(typeof(ProductMetadata))]
    public partial class Product
    {
        // add overrides and extensions
        public override string ToString()
        {
            return "[" + ProductID + "] " + ProductName + (UnitPrice.HasValue ? " costs " + UnitPrice.Value.ToString("c") : "");
        }

        public decimal SalesTax()
        {
            return UnitPrice.HasValue ? UnitPrice.Value * 0.2M : 0M;
        }

        // use a private nested class for metadata
        private class ProductMetadata
        {
            [Required]
            [StringLength(40)]
            [Display(Name ="Name of Product")]
            public object ProductName { get; set; }

            [DataType(DataType.Currency)]
            public object UnitPrice { get; set; }
        }
    }
}