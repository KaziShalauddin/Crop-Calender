
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.Spatial;

namespace CropCalender.Models.EntityModels
{
    [Table("Season")]
    public class Season
    {
        [Key]
        public int Id { get; set; }

        [StringLength(50)]
        public string SeasonName { get; set; }

        [StringLength(500)]
        public string SeasonDesc { get; set; }
    }
}
