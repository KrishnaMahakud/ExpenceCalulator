using ExpenceCalculater.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace ExpenceCalculater.WebAPI.Controllers
{
    public class UserDataController : ApiController
    {
        private ExpenseCalculatorEntities db = new ExpenseCalculatorEntities();
        
        
        [HttpGet]
        public dynamic GetAll()
        {
            return db.Users
                .Select(x => new
                {
                    x.UserId,
                    x.UserName,
                    x.Password
                   
                });
        }


        [HttpPost]
        public dynamic Validate(dynamic postData)
        {
            var username = (string)postData.UserName;
            var password = (string)postData.Password;


            var validUser = db.Users
                .Where(x => x.UserName == username && x.Password == password)
                .Select(x => new
                {
                    x.UserName,
                    x.Password
                })
                .FirstOrDefault();

            return validUser;

        }


        [HttpPost]
        public dynamic Add(dynamic postData)
        {
            var UserName = (string)postData.Name;
            var Password = (string)postData.Password;

            var user = new User()
            {
                UserName = UserName,
                Password = Password
                
            };

            db.Users.Add(user);
            var rowCount = db.SaveChanges();

            return rowCount;

        }
    }
}