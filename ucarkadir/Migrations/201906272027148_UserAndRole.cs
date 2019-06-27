namespace ucarkadir.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class UserAndRole : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.tRole",
                c => new
                    {
                        IDRole = c.Int(nullable: false, identity: true),
                        Name = c.String(nullable: false, maxLength: 20),
                    })
                .PrimaryKey(t => t.IDRole);
            
            CreateTable(
                "dbo.tUser",
                c => new
                    {
                        IDUser = c.Int(nullable: false, identity: true),
                        IDRole = c.Int(nullable: false),
                        UserName = c.String(nullable: false, maxLength: 20),
                        UserPassword = c.String(nullable: false, maxLength: 100),
                    })
                .PrimaryKey(t => t.IDUser)
                .ForeignKey("dbo.tRole", t => t.IDRole, cascadeDelete: true)
                .Index(t => t.IDRole);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.tUser", "IDRole", "dbo.tRole");
            DropIndex("dbo.tUser", new[] { "IDRole" });
            DropTable("dbo.tUser");
            DropTable("dbo.tRole");
        }
    }
}
