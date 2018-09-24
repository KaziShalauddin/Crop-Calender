
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.Spatial;

namespace CropCalender.Models.EntityModels
{
    [Table("Crop")]
    public class Crop
    {
        [Key]
        public long Id { get; set; }

        [StringLength(250)]
        public string CropName { get; set; }

        [StringLength(250)]
        public string CropVarieties { get; set; }

        public int? CultivationDateRange { get; set; }

        [StringLength(500)]
        public string HarvestDuration { get; set; }
    }
}
