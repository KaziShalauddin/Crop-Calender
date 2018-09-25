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
    public class LandTypesController : Controller
    {
        private CropCalenderDbContext db = new CropCalenderDbContext();

        // GET: LandTypes
        public ActionResult Index()
        {
            return View(db.LandTypes.ToList());
        }

        // GET: LandTypes/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            LandType landType = db.LandTypes.Find(id);
            if (landType == null)
            {
                return HttpNotFound();
            }
            return View(landType);
        }

        // GET: LandTypes/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: LandTypes/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,LandTypeName,LandTypeDesc")] LandType landType)
        {
            if (ModelState.IsValid)
            {
                db.LandTypes.Add(landType);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(landType);
        }

        // GET: LandTypes/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            LandType landType = db.LandTypes.Find(id);
            if (landType == null)
            {
                return HttpNotFound();
            }
            return View(landType);
        }

        // POST: LandTypes/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,LandTypeName,LandTypeDesc")] LandType landType)
        {
            if (ModelState.IsValid)
            {
                db.Entry(landType).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(landType);
        }

        // GET: LandTypes/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            LandType landType = db.LandTypes.Find(id);
            if (landType == null)
            {
                return HttpNotFound();
            }
            return View(landType);
        }

        // POST: LandTypes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            LandType landType = db.LandTypes.Find(id);
            db.LandTypes.Remove(landType);
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
