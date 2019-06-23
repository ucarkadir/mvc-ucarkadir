using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace ucarkadir.Models
{
    [Table("Content")]
    public class Content
    {
        public Content()
        {
            tPages = new HashSet<Page>();
        }

        [Key]
        public int IDContent { get; set; }

        [Required]
        [StringLength(255)]
        [Column(TypeName = ("nvarchar"))]
        public string Header { get; set; }

        [Required]
        [StringLength(255)]
        [Column(TypeName =("nvarchar"))]
        public string HeaderSub { get; set; }

        [Required]
        [Column(TypeName =("nvarchar(max)"))]
        public string Text { get; set; }

        public virtual ICollection<Page> tPages{ get; set; }
    }
}