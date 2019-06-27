using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace ucarkadir.Models
{
    [Table("tRole")]
    public class Role
    {
        public Role()
        {
            this.tUsers = new HashSet<User>();
        }

        [Key]
        public int IDRole { get; set; }

        [Required(ErrorMessage ="Role ismi boşş geçilemez")]
        [StringLength(20)]
        [Column(TypeName =("nvarchar"))]
        public string Name { get; set; }

        public virtual ICollection<User> tUsers { get; set; }
    }
}