using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using CropCalender.Models.DatabaseContext;
using CropCalender.Models.EntityModels;

namespace CropCalenderApp.Controllers
{
    public class CropAdvicesController : Controller
    {
        private CropCalenderDbContext db = new CropCalenderDbContext();


        // GET: CropAdvices/List
        public ActionResult List()
        {
            ViewBag.Areas= db.Areas.ToList();
            ViewBag.DistrictDD = new SelectListItem[] { new SelectListItem() { Value = "", Text = "  নির্বাচন করুন  " } }; 
            ViewBag.SubDistrictDD = new SelectListItem[] { new SelectListItem() { Value = "", Text = "  নির্বাচন করুন  " } }; 
            ViewBag.LandTypeId = new SelectList(db.LandTypes, "Id", "LandTypeName");
            
            return View();
        }

        public JsonResult GetByArea(int? areaId)
        {
            if (areaId == null)
            {
                return null;
            }
            var areaBbsId = db.Areas.Where(x => x.Id == areaId).Select(x => x.AreaBbsId).FirstOrDefault();
            var districts = db.Districts.ToList();
            var areawiseDistricts = districts.Where(x => x.AreaBbsId == areaBbsId).ToList();

            return Json(areawiseDistricts, JsonRequestBehavior.AllowGet);
        }
        public JsonResult GetByDistrict(int? districtId)
        {
            if (districtId == null)
            {
                return null;
            }
            var districtBbsId = db.Districts.Where(x => x.Id == districtId).Select(x => x.DistBbsId).FirstOrDefault();
            var subDistricts = db.SubDistricts.ToList();

            var districtwiseSubDistricts = subDistricts.Where(x => x.DistBbsId == districtBbsId).ToList();

            return Json(districtwiseSubDistricts, JsonRequestBehavior.AllowGet);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

       

    }
}
