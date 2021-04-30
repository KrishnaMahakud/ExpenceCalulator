using ExpenceCalculater.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace ExpenceCalculater.WebAPI.Controllers
{
    public class UserDetailsController : ApiController
    {
        private Expense_calculatorEntities db = new Expense_calculatorEntities();


        [HttpGet]
        public dynamic GetAll()
        {
           return db.UserDetails
                .Select(x => new
                {
                    x.UserDetailsId,
                    x.UserId,
                    x.CityId,
                    x.Address1,
                    x.Address2

                });
        }


        [HttpPost]
        public dynamic Add(dynamic postData)
        {
            var Address1 = (string)postData.adresss1;
            var Address2 = (string)postData.address2;

            var userDetail = new UserDetail()
            {
                Address1 = Address1,
                Address2 = Address2
                    
            };

            db.UserDetails.Add(userDetail);
            var rowCount = db.SaveChanges();

            return rowCount;
        }
    }
}