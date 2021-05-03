using ExpenceCalculater.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace ExpenceCalculater.WebAPI.Controllers
{
    public class UserLedgerController : ApiController
    {
        private ExpenseCalculatorEntities db = new ExpenseCalculatorEntities();


        [HttpGet]
        public dynamic GetAll()
        {
            return db.UserLedgers
                .Select(x => new
                {
                    x.UserLedgerId,
                    x.UserId,
                    x.ManagementTypeListId,
                    x.Amount,
                    x.Date

                });
        }


        [HttpPost]
        public dynamic Add(dynamic postData)
        {
            var Amount = (string)postData.Amount;
            var Date = (DateTime)postData.Date;

            var userLedger = new UserLedger()
            {
                Amount = Amount,
                Date = Date,

            };

            db.UserLedgers.Add(userLedger);
            var rowCount = db.SaveChanges();

            return rowCount;
        }
    }
}
