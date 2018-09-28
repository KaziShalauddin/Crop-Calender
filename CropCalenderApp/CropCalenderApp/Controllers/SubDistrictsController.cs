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
    public class SubDistrictsController : Controller
    {
        private CropCalenderDbContext db = new CropCalenderDbContext();

        // GET: SubDistricts
        public ActionResult Index()
        {
            return View(db.SubDistricts.ToList());
        }

        // GET: SubDistricts/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SubDistrict subDistrict = db.SubDistricts.Find(id);
            if (subDistrict == null)
            {
                return HttpNotFound();
            }
            return View(subDistrict);
        }

        // GET: SubDistricts/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: SubDistricts/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,SubDistBbsId,SubDistrictName,DistBbsId")] SubDistrict subDistrict)
        {
            if (ModelState.IsValid)
            {
                db.SubDistricts.Add(subDistrict);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(subDistrict);
        }

        // GET: SubDistricts/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SubDistrict subDistrict = db.SubDistricts.Find(id);
            if (subDistrict == null)
            {
                return HttpNotFound();
            }
            return View(subDistrict);
        }

        // POST: SubDistricts/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,SubDistBbsId,SubDistrictName,DistBbsId")] SubDistrict subDistrict)
        {
            if (ModelState.IsValid)
            {
                db.Entry(subDistrict).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(subDistrict);
        }

        // GET: SubDistricts/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SubDistrict subDistrict = db.SubDistricts.Find(id);
            if (subDistrict == null)
            {
                return HttpNotFound();
            }
            return View(subDistrict);
        }

        // POST: SubDistricts/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            SubDistrict subDistrict = db.SubDistricts.Find(id);
            db.SubDistricts.Remove(subDistrict);
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
