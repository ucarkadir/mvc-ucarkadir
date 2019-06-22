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
            this.tPageImgs = new HashSet<Img>();
        }

        [Key]
        public int IDImg { get; set; }

        [Required]
        [StringLength()]
        public string FileName { get; set; }


        public virtual ICollection<Img> tPageImgs { get; set; }


    }
}