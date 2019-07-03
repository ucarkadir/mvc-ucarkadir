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

        [Display(Name = "EPosta Adresi")]
        [Required(ErrorMessage = "Email boş geçilemez.")]
        [EmailAddress(ErrorMessage = "Geçirsiz Email Adresi.")]
        [StringLength(100)]
        [Column(TypeName = ("nvarchar"))]
        public string EMail { get; set; }

        //[DatabaseGenerated(DatabaseGeneratedOption.None)]        
        [NotMapped]
        public bool RememberMe { get; set; }


        // test user login page
        public static List<User> Init()
        {
            // first get IDRole for user             
            return new List<User>
            {
                new User {IDUser = 1, UserName ="kadir", UserPassword = "ucar", EMail="kadir@ucar.com", IDRole = 0},
                new User {IDUser = 2, UserName ="dilek", UserPassword = "ucar", EMail="dilek@ucar.com", IDRole = 1},
                new User {IDUser = 3, UserName ="alisacit", UserPassword = "tezergil", EMail="alisacit@tezergil.com", IDRole = 1},
                new User {IDUser = 3, UserName ="zeynep", UserPassword = "tezergil", EMail="zeynep@tezergil.com", IDRole = 1}
            };
        }

    }
}