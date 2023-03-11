using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ADOCRUDOperation_IN_MVC.Models;

namespace ADOCRUDOperation_IN_MVC.Controllers
{
    public class HomeController : Controller
    {
        CompanyDBContext db = new CompanyDBContext();
        public ActionResult Index()
        {
            List<Employee> emp = db.GetEmployees();
            return View(emp);
        }
        public ActionResult RegisterEmp()
        {
            return View();
        }
        [HttpPost]
        public ActionResult RegisterEmp(Employee emp)
        {
            db.InsertEmp(emp);
            return RedirectToAction("Index", "Home");
        }
        public ActionResult Edit(int id)
        {
            Employee emp = db.GetEmployee(id);
            return View(emp);
        }
        [HttpPost]
        public ActionResult Edit(Employee emp)
        {
            db.UpdateEmp(emp);
            return RedirectToAction("Index", "Home");
        }
        public ActionResult Delete(int id)
        {
            db.DeleteEmp(id);
            return RedirectToAction("Index", "Home");
        }
    }
}