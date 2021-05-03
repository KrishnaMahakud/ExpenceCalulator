using ExpenceCalculater.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace ExpenceCalculater.WebAPI.Controllers
{
    public class FrequencyController : ApiController
    {
        private ExpenseCalculatorEntities db = new ExpenseCalculatorEntities();


        [HttpGet]
        public dynamic GetAll()
        {
            return db.FrequencyTypes
                .Select(x => new
                {
                    x.FrequencyTypeId,
                    x.Name,
                });
        }


        [HttpPost]
        public dynamic Add(dynamic postData)
        {
            var Name = (string)postData.Name;

            var frequencyType = new FrequencyType()
            {
                Name = Name,
            };

            db.FrequencyTypes.Add(frequencyType);
            var rowCount = db.SaveChanges();

            return rowCount;
        }
    }
}