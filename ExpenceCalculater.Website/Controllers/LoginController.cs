using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using ExpenceCalculater.Data;

namespace ExpenceCalculater.Website.Controllers
{
    public class LoginController : Controller
    {
        // GET: Login
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult LoginValidate(User objUser)
        {
            if (ModelState.IsValid)
            {
                using (ExpenseCalculatorEntities db = new ExpenseCalculatorEntities())
                {
                    var obj = db.Users.Where(a => a.UserName.Equals(objUser.UserName) && a.Password.Equals(objUser.Password)).FirstOrDefault();
                    if (obj != null)
                    {
                        Session["UserID"] = obj.UserId.ToString();
                        Session["UserName"] = obj.UserName.ToString();

                        Response.Cookies.Add(new HttpCookie("UserID")
                        {
                            Expires = DateTime.Now.AddHours(1),
                            Value = obj.UserId.ToString()
                        });

                        FormsAuthentication.SetAuthCookie(objUser.UserName, true);
                        return RedirectToAction("Index", "Admin");
                    }
                }
            }
            return RedirectToAction("Index", "Login");
        }
    }
}