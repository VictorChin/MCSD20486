using System;
using System.ComponentModel;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace OperasDemo.Models
{
    public class Opera
    {
        [Display(Name = "OperaID", ResourceType = typeof(SharedResources.Strings))]
        public int OperaID { get; set; }

        [Required]
        [StringLength(200)]
        //[DisplayName("Opera Title")]
        [Display(Name="Title", ResourceType = typeof(SharedResources.Strings))]
        public string Title { get; set; }

        [CheckValidYear]
        public int Year { get; set; }

        [Display(Name = "Composer", ResourceType = typeof(SharedResources.Strings))]
        public string Composer { get; set; }
    }
}