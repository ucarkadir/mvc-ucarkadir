using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ucarkadir.Models
{
    [Table("tImg")]
    public class Img
    {
        public Img()
        {
            this.tPageImgs = new HashSet<PageImg>();
        }

        [Key]
        public int IDImg { get; set; }

        [Required]
        [StringLength(255)]
        public string FileName { get; set; }


        public virtual ICollection<PageImg> tPageImgs { get; set; }


    }
}