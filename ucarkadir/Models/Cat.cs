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

        [Required(ErrorMessage = "Bu alan boş olamaz")]
        [StringLength(20)]
        [Index("IX_tCat_Name", IsUnique = true)]
        public string Name { get; set; }

        [Required]
        [DefaultValue(0)]
        public int NumberOfUse { get; set; }

        [Required]
        [DefaultValue(1)]
        [Description("0 Pasif 1 Aktif")]
        public bool Status { get; set; }

        public virtual ICollection<Page> tPages { get; set; }
    }
}