
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.Spatial;


namespace CropCalender.Models.EntityModels
{
    [Table("SubDistrict")]
    public class SubDistrict
    {
        [Key]
        public int Id { get; set; }

        [StringLength(50)]
        public string SubDistBbsId { get; set; }

        [StringLength(150)]
        public string SubDistrictName { get; set; }

        public int? DistrictId { get; set; }
        public virtual District District { get; set; }
    }
}
