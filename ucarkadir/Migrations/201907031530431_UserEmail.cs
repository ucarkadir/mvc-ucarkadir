namespace ucarkadir.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class UserEmail : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.tUser", "EMail", c => c.String(nullable: false, maxLength: 100));
        }
        
        public override void Down()
        {
            DropColumn("dbo.tUser", "EMail");
        }
    }
}
