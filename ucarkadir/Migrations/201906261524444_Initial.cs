namespace ucarkadir.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Initial : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.tCat",
                c => new
                    {
                        IDCat = c.Int(nullable: false, identity: true),
                        Name = c.String(nullable: false, maxLength: 20),
                        NumberOfUse = c.Int(nullable: false),
                        Status = c.Boolean(nullable: false),
                    })
                .PrimaryKey(t => t.IDCat);
            
            CreateTable(
                "dbo.tPage",
                c => new
                    {
                        IDPage = c.Int(nullable: false, identity: true),
                        IDCat = c.Int(nullable: false),
                        IDContent = c.Int(nullable: false),
                        Name = c.String(nullable: false, maxLength: 255),
                        ShortName = c.String(nullable: false, maxLength: 255),
                        Url = c.String(nullable: false, maxLength: 255),
                        PageDate = c.DateTime(nullable: false),
                        Text = c.String(nullable: false),
                        ShortText = c.String(nullable: false, maxLength: 4000),
                        NumberOfUse = c.Int(nullable: false),
                        Status = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.IDPage)
                .ForeignKey("dbo.tCat", t => t.IDCat, cascadeDelete: true)
                .ForeignKey("dbo.Content", t => t.IDContent, cascadeDelete: true)
                .Index(t => t.IDCat)
                .Index(t => t.IDContent);
            
            CreateTable(
                "dbo.Content",
                c => new
                    {
                        IDContent = c.Int(nullable: false, identity: true),
                        Header = c.String(nullable: false, maxLength: 255),
                        HeaderSub = c.String(nullable: false, maxLength: 255),
                        Text = c.String(nullable: false),
                    })
                .PrimaryKey(t => t.IDContent);
            
            CreateTable(
                "dbo.tPageImg",
                c => new
                    {
                        IDPage = c.Int(nullable: false),
                        IDImg = c.Int(nullable: false),
                        OrderNo = c.Int(nullable: false),
                        Status = c.Byte(nullable: false),
                    })
                .PrimaryKey(t => new { t.IDPage, t.IDImg })
                .ForeignKey("dbo.tImg", t => t.IDImg, cascadeDelete: true)
                .ForeignKey("dbo.tPage", t => t.IDPage, cascadeDelete: true)
                .Index(t => t.IDPage)
                .Index(t => t.IDImg);
            
            CreateTable(
                "dbo.tImg",
                c => new
                    {
                        IDImg = c.Int(nullable: false, identity: true),
                        FileName = c.String(nullable: false, maxLength: 255),
                    })
                .PrimaryKey(t => t.IDImg);
            
            CreateTable(
                "dbo.tPageTag",
                c => new
                    {
                        IDPage = c.Int(nullable: false),
                        IDTag = c.Int(nullable: false),
                        OrderNo = c.Int(nullable: false),
                        Code = c.String(nullable: false, maxLength: 20),
                    })
                .PrimaryKey(t => new { t.IDPage, t.IDTag })
                .ForeignKey("dbo.tPage", t => t.IDPage, cascadeDelete: true)
                .ForeignKey("dbo.tTag", t => t.IDTag, cascadeDelete: true)
                .Index(t => t.IDPage)
                .Index(t => t.IDTag);
            
            CreateTable(
                "dbo.tTag",
                c => new
                    {
                        IDTag = c.Int(nullable: false, identity: true),
                        Name = c.String(nullable: false, maxLength: 20),
                        NumberOfUse = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.IDTag);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.tPageTag", "IDTag", "dbo.tTag");
            DropForeignKey("dbo.tPageTag", "IDPage", "dbo.tPage");
            DropForeignKey("dbo.tPageImg", "IDPage", "dbo.tPage");
            DropForeignKey("dbo.tPageImg", "IDImg", "dbo.tImg");
            DropForeignKey("dbo.tPage", "IDContent", "dbo.Content");
            DropForeignKey("dbo.tPage", "IDCat", "dbo.tCat");
            DropIndex("dbo.tPageTag", new[] { "IDTag" });
            DropIndex("dbo.tPageTag", new[] { "IDPage" });
            DropIndex("dbo.tPageImg", new[] { "IDImg" });
            DropIndex("dbo.tPageImg", new[] { "IDPage" });
            DropIndex("dbo.tPage", new[] { "IDContent" });
            DropIndex("dbo.tPage", new[] { "IDCat" });
            DropTable("dbo.tTag");
            DropTable("dbo.tPageTag");
            DropTable("dbo.tImg");
            DropTable("dbo.tPageImg");
            DropTable("dbo.Content");
            DropTable("dbo.tPage");
            DropTable("dbo.tCat");
        }
    }
}
