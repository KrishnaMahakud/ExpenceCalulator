using ExpenceCalculater.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace ExpenceCalculater.WebAPI.Controllers
{
    public class ManagementTypeController : ApiController
    {
        private ExpenseCalculatorEntities db = new ExpenseCalculatorEntities();


        [HttpGet]
        public dynamic GetAll()
        {
            return db.ManagementTypes
                .Select(x => new
                {
                    x.ManagementTypeId,
                    x.Name

                });
        }


        [HttpPost]
        public dynamic Add(dynamic postData)
        {
            var Name = (string)postData.Name;

            var managementType = new ManagementType()
            {
               Name = Name,

            };

            db.ManagementTypes.Add(managementType);
            var rowCount = db.SaveChanges();

            return rowCount;
        }
    }
}