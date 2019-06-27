using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using ucarkadir.Models;

namespace ucarkadir.Data
{
    public class KadirBlogDbContext : DbContext
    {
        public KadirBlogDbContext() :base("name=KADIRBLOGDBConnectionString") 
        {
            /*
                1. Enable-Migrations –EnableAutomaticMigrations
                2. Add-Migration 'Kullanici'
                3. Add-Migration Initial
                4. Update-Database
             */

            Database.SetInitializer(new CreateDatabaseIfNotExists<KadirBlogDbContext>());
        }

        public virtual DbSet<Cat> tCats { get; set; }
        public virtual DbSet<Content> tContents { get; set; }
        public virtual DbSet<Img> tImgs { get; set; }
        public virtual DbSet<Page> tPages { get; set; }
        public virtual DbSet<PageImg> tPageImgs { get; set; }
        public virtual DbSet<PageTag> tPageTags { get; set; }
        public virtual DbSet<Tag> tTags { get; set; }

        public virtual DbSet<User> tUsers { get; set; }
        public virtual DbSet<Role> tRoles { get; set; }
    }
}