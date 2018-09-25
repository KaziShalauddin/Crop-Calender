
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.Spatial;


namespace CropCalender.Models.EntityModels
{
    [Table("District")]
    public class District
    {
        [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column(Order = 0)]
        public int Id { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(50)]
        public string DistBbsId { get; set; }

        [StringLength(150)]
        public string DistrictName { get; set; }

        //public int? AreaId { get; set; }
        //public virtual Area Area { get; set; }

        [StringLength(150)]
        public string AreaBbsId { get; set; }
    }
}
