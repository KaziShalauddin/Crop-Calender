namespace CropCalender.Models.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Initial_Create : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Area",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        AreaBbsId = c.String(maxLength: 150),
                        AreaName = c.String(maxLength: 150),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.CropAdvices",
                c => new
                    {
                        Id = c.Long(nullable: false, identity: true),
                        AdviceId = c.Int(),
                        CropName = c.String(maxLength: 250),
                        CropVarieties = c.String(maxLength: 250),
                        HarvestDuration = c.Int(),
                        CultivationDateRange = c.String(maxLength: 500),
                        SeasonId = c.Int(),
                        LandTypeId = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.LandType", t => t.LandTypeId)
                .ForeignKey("dbo.Season", t => t.SeasonId)
                .Index(t => t.SeasonId)
                .Index(t => t.LandTypeId);
            
            CreateTable(
                "dbo.LandType",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        LandTypeName = c.String(maxLength: 100),
                        LandTypeDesc = c.String(maxLength: 500),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.Season",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        SeasonName = c.String(maxLength: 50),
                        SeasonDesc = c.String(maxLength: 500),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.Crop",
                c => new
                    {
                        Id = c.Long(nullable: false, identity: true),
                        CropName = c.String(maxLength: 250),
                        CropVarieties = c.String(maxLength: 250),
                        CultivationDateRange = c.Int(),
                        HarvestDuration = c.String(maxLength: 500),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.CropVarieties",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        CropId = c.Long(),
                        CropVarietiesName = c.String(maxLength: 100),
                        CropVarietiesDesc = c.String(maxLength: 500),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Crop", t => t.CropId)
                .Index(t => t.CropId);
            
            CreateTable(
                "dbo.District",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        DistBbsId = c.String(nullable: false, maxLength: 50),
                        DistrictName = c.String(maxLength: 150),
                        AreaBbsId = c.String(maxLength: 150),
                    })
                .PrimaryKey(t => new { t.Id, t.DistBbsId });
            
            CreateTable(
                "dbo.SubDistrictAdvice",
                c => new
                    {
                        SubDistrictID = c.Int(nullable: false),
                        AdviceID = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.SubDistrictID, t.AdviceID });
            
            CreateTable(
                "dbo.SubDistrict",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        SubDistBbsId = c.String(maxLength: 50),
                        SubDistrictName = c.String(maxLength: 150),
                        DistBbsId = c.String(maxLength: 50),
                    })
                .PrimaryKey(t => t.Id);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.CropVarieties", "CropId", "dbo.Crop");
            DropForeignKey("dbo.CropAdvices", "SeasonId", "dbo.Season");
            DropForeignKey("dbo.CropAdvices", "LandTypeId", "dbo.LandType");
            DropIndex("dbo.CropVarieties", new[] { "CropId" });
            DropIndex("dbo.CropAdvices", new[] { "LandTypeId" });
            DropIndex("dbo.CropAdvices", new[] { "SeasonId" });
            DropTable("dbo.SubDistrict");
            DropTable("dbo.SubDistrictAdvice");
            DropTable("dbo.District");
            DropTable("dbo.CropVarieties");
            DropTable("dbo.Crop");
            DropTable("dbo.Season");
            DropTable("dbo.LandType");
            DropTable("dbo.CropAdvices");
            DropTable("dbo.Area");
        }
    }
}
