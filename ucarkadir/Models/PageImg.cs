using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace ucarkadir.Models
{
    [Table("tPageImg")]
    public class PageImg
    {
        [Key, Column(Order = 0)]
        public int IDPage { get; set; }

        [Key, Column(Order = 1)]
        public int IDImg { get; set; }
       


        [Required]
        public int OrderNo { get; set; }

        [Required]
        public byte Status { get; set; }

        public virtual Img tImg { get; set; }
    }
}