using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CropCalender.Models.EntityModels;

namespace CropCalender.Models.DatabaseContext
{
    
    public class CropCalenderDbContext : DbContext
    {
        public CropCalenderDbContext(): base("name=DefaultConnection")
        {
        }

        public virtual DbSet<Crop> Crops { get; set; }
        public virtual DbSet<CropAdvice> CropAdvices { get; set; }
        public virtual DbSet<CropVariety> CropVarieties { get; set; }
        public virtual DbSet<LandType> LandTypes { get; set; }
        public virtual DbSet<Season> Seasons { get; set; }
        public virtual DbSet<SubDistrictAdvice> SubDistrictAdvices { get; set; }
        public virtual DbSet<Area> Areas { get; set; }
        public virtual DbSet<District> Districts { get; set; }
        public virtual DbSet<SubDistrict> SubDistricts { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
        }
    }
}
