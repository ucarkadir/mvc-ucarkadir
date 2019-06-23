using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ucarkadir.Models
{
    [Table("tTag")]
    public class Tag
    {
        public Tag()
        {
            tPageTags = new HashSet<PageTag>();
        }

        [Key]
        public int IDTag { get; set; }

        [Required]
        [StringLength(20)]
        public string Name { get; set; }

        [Required]
        public int NumberOfUse { get; set; }

        public virtual ICollection<PageTag> tPageTags { get; set; }
    }
}