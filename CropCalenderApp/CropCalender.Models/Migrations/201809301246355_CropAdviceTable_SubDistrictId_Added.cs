namespace CropCalender.Models.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class CropAdviceTable_SubDistrictId_Added : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.CropAdvices", "SubDistrictId", c => c.Int());
            CreateIndex("dbo.CropAdvices", "SubDistrictId");
            AddForeignKey("dbo.CropAdvices", "SubDistrictId", "dbo.SubDistrict", "Id");
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.CropAdvices", "SubDistrictId", "dbo.SubDistrict");
            DropIndex("dbo.CropAdvices", new[] { "SubDistrictId" });
            DropColumn("dbo.CropAdvices", "SubDistrictId");
        }
    }
}
