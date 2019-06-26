using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace ucarkadir.Models
{
    [Table("tPage")]
    public class Page
    {
        public Page()
        {
            tPageImgs = new HashSet<PageImg>();
            tPageTags = new HashSet<PageTag>();
        }

        [Key]
        public int IDPage { get; set; }

        //[ForeignKey("FK_tPage_tCat")]
        public int IDCat { get; set; }
        public virtual Cat tCat { get; set; }

        //[ForeignKey("FK_tPage_tContent")]
        public int IDContent { get; set; }
        public virtual Content tContent { get; set; }

        [Required]
        [StringLength(255)]
        [Column(TypeName = "nvarchar")]
        public string Name { get; set; }

        [Required]
        [StringLength(255)]
        [Column(TypeName = "nvarchar")]
        public string ShortName { get; set; }

        [Required]
        [StringLength(255)]
        [Column(TypeName = "nvarchar")]
        public string Url { get; set; }

        [Required]
        public System.DateTime PageDate { get; set; }

        [Required]
        [Column(TypeName = "nvarchar(max)")]      
        public string Text { get; set; }

        [Required]
        [StringLength(4000)]
        [Column(TypeName = "nvarchar")]
        public string ShortText { get; set; }

        [Required]
        public int NumberOfUse { get; set; }

        [Required]
        [DefaultValue(1)]
        [Description("0 Pasif, 1 Aktif, 2 Diğer")]
        public int Status { get; set; }
        

        public virtual ICollection<PageImg> tPageImgs { get; set; }
        public virtual ICollection<PageTag> tPageTags { get; set; }
    }
}