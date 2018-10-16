using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using CropCalender.Models.EntityModels;

namespace CropCalenderApp.ViewModels
{
    public class CropAdviceViewModel
    {
        public CropAdviceViewModel()
        {
            //CropAdvice = new HashSet<CropAdvice>();
        }

        public long CropAdviceId { get; set; }

        [StringLength(250)]
        public string CropName { get; set; }

        [StringLength(250)]
        public string CropVarieties { get; set; }


        public bool IsSelected { get; set; }

        //public CropAdvice CropAdvice { get; set; }
        public virtual IEnumerable<CropAdvice> CropAdvices { get; set; }
    }
}