using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ucarkadir.Models
{
    [Table("tPageTag")]
    public class PageTag
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int IDPage { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int IDTag { get; set; }

        [Required]
        public int OrderNo { get; set; }

        [Required]
        [StringLength(20)]
        public string Code { get; set; }

        public virtual Page tPage { get; set; }

        public virtual Tag tTag { get; set; }
    }
}