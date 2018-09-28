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
    public class CropVarietiesController : Controller
    {
        private CropCalenderDbContext db = new CropCalenderDbContext();

        // GET: CropVarieties
        public ActionResult Index()
        {
            var cropVarieties = db.CropVarieties.Include(c => c.Crop);
            return View(cropVarieties.ToList());
        }

        // GET: CropVarieties/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CropVariety cropVariety = db.CropVarieties.Find(id);
            if (cropVariety == null)
            {
                return HttpNotFound();
            }
            return View(cropVariety);
        }

        // GET: CropVarieties/Create
        public ActionResult Create()
        {
            ViewBag.CropId = new SelectList(db.Crops, "Id", "CropName");
            return View();
        }

        // POST: CropVarieties/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,CropId,CropVarietiesName,CropVarietiesDesc")] CropVariety cropVariety)
        {
            if (ModelState.IsValid)
            {
                db.CropVarieties.Add(cropVariety);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.CropId = new SelectList(db.Crops, "Id", "CropName", cropVariety.CropId);
            return View(cropVariety);
        }

        // GET: CropVarieties/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CropVariety cropVariety = db.CropVarieties.Find(id);
            if (cropVariety == null)
            {
                return HttpNotFound();
            }
            ViewBag.CropId = new SelectList(db.Crops, "Id", "CropName", cropVariety.CropId);
            return View(cropVariety);
        }

        // POST: CropVarieties/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,CropId,CropVarietiesName,CropVarietiesDesc")] CropVariety cropVariety)
        {
            if (ModelState.IsValid)
            {
                db.Entry(cropVariety).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.CropId = new SelectList(db.Crops, "Id", "CropName", cropVariety.CropId);
            return View(cropVariety);
        }

        // GET: CropVarieties/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CropVariety cropVariety = db.CropVarieties.Find(id);
            if (cropVariety == null)
            {
                return HttpNotFound();
            }
            return View(cropVariety);
        }

        // POST: CropVarieties/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            CropVariety cropVariety = db.CropVarieties.Find(id);
            db.CropVarieties.Remove(cropVariety);
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
