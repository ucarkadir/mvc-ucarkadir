namespace ucarkadir.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class IndexAndValidation : DbMigration
    {
        public override void Up()
        {
            CreateIndex("dbo.tCat", "Name", unique: true, name: "IX_tCat_Name");
        }
        
        public override void Down()
        {
            DropIndex("dbo.tCat", "IX_tCat_Name");
        }
    }
}
