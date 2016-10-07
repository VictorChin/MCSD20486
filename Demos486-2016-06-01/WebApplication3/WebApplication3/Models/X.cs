using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace WebApplication3.Models
{
    [MetadataType(typeof(CategoryMetadata))]
    public partial class Category
    {
        private class CategoryMetadata
        {
            [Required]
            public string CategoryName { get; set; }
        }
        public int Thing { get; set; }
        
    }


}