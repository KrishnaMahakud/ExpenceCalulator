using ExpenceCalculater.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace ExpenceCalculater.WebAPI.Controllers
{
    public class UserRoleController : ApiController
    {
        private Expense_calculatorEntities db = new Expense_calculatorEntities();


        [HttpGet]
        public dynamic GetAll()
        {
            return db.UserRoles
                .Select(x => new
                {
                    x.UserRoleId,
                    x.UserId,
                    x.RoleId,
                    x.User.UserName,
                    x.Role.RoleName


                });
        }


        [HttpPost]
        public dynamic Add(dynamic postData)
        {
            var userName = (int)postData.UserId;
            var roleName = (int)postData.RoleId;

            var userrole = new UserRole()
            {
                UserId = userName,
                RoleId = roleName,

            };

            db.UserRoles.Add(userrole);
            var rowCount = db.SaveChanges();

            return rowCount;
        }
    }
}
