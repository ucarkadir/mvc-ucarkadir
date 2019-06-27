using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace ucarkadir.Models
{
    [Table("tUser")]
    public class User
    {
        [Key]
        public int IDUser { get; set; }

        public int IDRole { get; set; }
        public virtual Role tRole { get; set; }

        [Required(ErrorMessage = "Kullanıcı adı boş geçilemez")]
        [StringLength(20)]
        [Column(TypeName = ("nvarchar"))]
        public string UserName { get; set; }

        [Required(ErrorMessage = "Kullanıcı şifresi boş geçilemez")]
        [StringLength(100)]
        [Column(TypeName = ("nvarchar"))]
        public string UserPassword { get; set; }

     
    }
}