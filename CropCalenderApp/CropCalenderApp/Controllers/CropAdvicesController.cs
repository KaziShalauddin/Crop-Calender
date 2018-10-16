using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using AutoMapper;
using CropCalender.Models.DatabaseContext;
using CropCalender.Models.EntityModels;
using CropCalenderApp.ViewModels;

namespace CropCalenderApp.Controllers
{
    public class CropAdvicesController : Controller
    {
        private CropCalenderDbContext db = new CropCalenderDbContext();


        // GET: CropAdvices/List
        public ActionResult List()
        {
            ViewBag.Areas = db.Areas.ToList();
            ViewBag.DistrictDD = new SelectListItem[] { new SelectListItem() { Value = "", Text = "  নির্বাচন করুন  " } };
            ViewBag.SubDistrictDD = new SelectListItem[] { new SelectListItem() { Value = "", Text = "  নির্বাচন করুন  " } };
            ViewBag.LandTypeId = new SelectList(db.LandTypes, "Id", "LandTypeName");



            return View();
        }
        [HttpPost]
        public ActionResult AdviceList(int? subDistrictId, int? landTypeId)
        {
            List<CropAdviceListVm> cropAdvices =new List<CropAdviceListVm>();
            if (subDistrictId != 0 && landTypeId != 0)
            {
                var advices = db.CropAdvices.Where(c => c.SubDistrictId == subDistrictId && c.LandTypeId == landTypeId).ToList();
                //cropAdvices = new List<CropAdviceListVm>();

                foreach (var item in advices)
                {
                    //CropAdviceListVm crop = new CropAdviceListVm()
                    //{
                    //    CropAdviceId = item.Id,
                    //    CropName = item.CropName,
                    //    CropVarieties = item.CropVarieties
                    //};
                    CropAdviceListVm crop = Mapper.Map<CropAdviceListVm>(item);
                    cropAdvices.Add(crop);
                }
                
            }

            return PartialView("_AdviceListPartial", cropAdvices);

        }
       
        public ActionResult GetAdviceList()
        {
            IEnumerable<CropAdviceListVm> cropAdvices=new List<CropAdviceListVm>();
           // var adviceList = cropAdvices;
            return PartialView("_AdviceList",cropAdvices);
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
