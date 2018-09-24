using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.Spatial;


namespace CropCalender.Models.EntityModels
{

    [Table("LandType")]
    public class LandType
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public LandType()
        {
            CropAdvices = new HashSet<CropAdvice>();
        }

        [Key]
        public int Id { get; set; }

        [StringLength(100)]
        public string LandTypeName { get; set; }

        [StringLength(500)]
        public string LandTypeDesc { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CropAdvice> CropAdvices { get; set; }
    }
}
