using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace ucarkadir.Models
{
    [Table("tCat")]
    public class Cat
    {
        public Cat()
        {
            this.tPages = new HashSet<Page>();
        }

        [Key]
        public int IDCat { get; set; }

        [Required]
        [StringLength(20)]
        public string Name { get; set; }

        [Required]
        [DefaultValue(0)]
        public int NumberOfUse { get; set; }

        [Required]
        [DefaultValue(1)]
        public bool Status { get; set; }

        public virtual ICollection<Page> tPages { get; set; }
    }
}