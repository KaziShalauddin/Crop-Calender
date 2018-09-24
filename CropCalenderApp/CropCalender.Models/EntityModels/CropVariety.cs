
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.Spatial;


namespace CropCalender.Models.EntityModels
{
    public class CropVariety
    {
        [Key]
        public int Id { get; set; }

        public long? CropId { get; set; }
        public Crop Crop { get; set; }

        [StringLength(100)]
        public string CropVarietiesName { get; set; }

        [StringLength(500)]
        public string CropVarietiesDesc { get; set; }
    }
}
