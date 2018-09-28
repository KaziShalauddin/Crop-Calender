
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
        [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }

        [StringLength(50)]
        public string SubDistBbsId { get; set; }

        [StringLength(150)]
        public string SubDistrictName { get; set; }

        [StringLength(50)]
        public string DistBbsId { get; set; }

    }
}
