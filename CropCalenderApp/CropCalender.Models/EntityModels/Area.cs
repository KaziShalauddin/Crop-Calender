
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.Spatial;

namespace CropCalender.Models.EntityModels
{
    [Table("Area")]
    public class Area
    {
        [Key]
        public int Id { get; set; }

        [StringLength(150)]
        public string AreaBbsId { get; set; }

        [StringLength(150)]
        public string AreaName { get; set; }
    }
}
