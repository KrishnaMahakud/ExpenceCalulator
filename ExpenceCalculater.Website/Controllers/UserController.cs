using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ExpenceCalculater.Website.Controllers
{
    public class UserController : Controller
    {
        // GET: User
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult UpdatePassword()
        {
            return View();
        }
        public ActionResult UpdateDetails()
        {
            return View();
        }
        public ActionResult AddSavings()
        {
            return View();
        }
        public ActionResult AddInvestments()
        {
            return View();
        }
        public ActionResult AddExpenses()
        {
            return View();
        }
        public ActionResult AddIncome()
        {
            return View();
        }
    }
}