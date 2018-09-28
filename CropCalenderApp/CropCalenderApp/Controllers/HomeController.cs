using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CropCalenderApp.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
        public ActionResult AimOfCropCalender()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
        public ActionResult Result()
        {
            ViewBag.Message = "Your Result page.";
            return View();
        }

        public ActionResult Implementation()
        {
            ViewBag.Message = "Your Implementation page.";
            return View();
        }
        public ActionResult TestDash()
        {
            ViewBag.Message = "Your Dash Board";
            return View();
        }
    }
}