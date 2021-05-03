using ExpenceCalculater.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace ExpenceCalculater.WebAPI.Controllers
{
    public class RoleController : ApiController
    {
        private ExpenseCalculatorEntities db = new ExpenseCalculatorEntities();


        [HttpGet]
        public dynamic GetAll()
        {
            return db.Roles
                .Select(x => new
                {
                    x.RoleId,
                    x.RoleName

                });
        }


        [HttpPost]
        public dynamic Add(dynamic postData)
        {
            var RoleName = (string)postData.RoleName;


            var role = new Role()
            {
                RoleName = RoleName

            };

            db.Roles.Add(role);
            var rowCount = db.SaveChanges();

            return rowCount;

        }
    }
}