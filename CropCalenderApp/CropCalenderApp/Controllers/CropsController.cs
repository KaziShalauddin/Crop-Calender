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
    public class CropsController : Controller
    {
        private CropCalenderDbContext db = new CropCalenderDbContext();

        // GET: Crops
        public ActionResult Index()
        {
            return View(db.Crops.ToList());
        }

        // GET: Crops/Details/5
        public ActionResult Details(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Crop crop = db.Crops.Find(id);
            if (crop == null)
            {
                return HttpNotFound();
            }
            return View(crop);
        }

        // GET: Crops/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Crops/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,CropName,CropVarieties,CultivationDateRange,HarvestDuration")] Crop crop)
        {
            if (ModelState.IsValid)
            {
                db.Crops.Add(crop);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(crop);
        }

        // GET: Crops/Edit/5
        public ActionResult Edit(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Crop crop = db.Crops.Find(id);
            if (crop == null)
            {
                return HttpNotFound();
            }
            return View(crop);
        }

        // POST: Crops/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,CropName,CropVarieties,CultivationDateRange,HarvestDuration")] Crop crop)
        {
            if (ModelState.IsValid)
            {
                db.Entry(crop).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(crop);
        }

        // GET: Crops/Delete/5
        public ActionResult Delete(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Crop crop = db.Crops.Find(id);
            if (crop == null)
            {
                return HttpNotFound();
            }
            return View(crop);
        }

        // POST: Crops/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(long id)
        {
            Crop crop = db.Crops.Find(id);
            db.Crops.Remove(crop);
            db.SaveChanges();
            return RedirectToAction("Index");
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
