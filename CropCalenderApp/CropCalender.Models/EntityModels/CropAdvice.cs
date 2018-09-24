using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.Spatial;


namespace CropCalender.Models.EntityModels
{

    public class CropAdvice
    {
        public long Id { get; set; }


        //Which table will be related by this foreign key ?
        public int? AdviceId { get; set; }
        
        [StringLength(250)]
        public string CropName { get; set; }

        [StringLength(250)]
        public string CropVarieties { get; set; }

        public int? HarvestDuration { get; set; }

        [StringLength(500)]
        public string CultivationDateRange { get; set; }

        public int? SeasonId { get; set; }
        public Season Season { get; set; }

        public int? LandTypeId { get; set; }
        public virtual LandType LandType { get; set; }
    }
}
