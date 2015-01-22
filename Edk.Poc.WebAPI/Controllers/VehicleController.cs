using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.AspNet.Mvc;
using Edk.Poc.WebAPI.Models;

// For more information on enabling Web API for empty projects, visit http://go.microsoft.com/fwlink/?LinkID=397860

namespace Edk.Poc.WebAPI.Controllers.Controllers
{
    [Route("api/v1/[controller]")]
    public class VehicleController : Controller
    {
        static readonly List<Vehicle> _items = new List<Vehicle>()
        {
            new Vehicle { ID = 1, VIN = "1111", Make= "Toyota" },
            new Vehicle { ID = 2, VIN = "222", Make = "Honda" },
            new Vehicle { ID = 3, VIN = "333", Make = "BMW" }
        };
    
        // GET: api/values
        [HttpGet]
        public IEnumerable<Vehicle> GetAll()
        {
            return _items;
        }
       
       [HttpGet("{id:int}", Name ="GetById" )]
        public IActionResult Get(int id)
        {
            var item = _items.FirstOrDefault(x => x.ID == id);

            if (item == null)
            {
                return new HttpNotFoundResult();
            }

            return new ObjectResult(item);
        }

        //// GET api/values/5
        //[HttpGet("{id}")]
        //public string Get(int id)
        //{
        //    return "value";
        //}

        // POST api/values
        [HttpPost]
        public void Post([FromBody]string value)
        {
        }

        // PUT api/values/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/values/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
