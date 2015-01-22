using Edk.Poc.WebAPI.Repository;
using Edk.Poc.WebAPI.Infrastructure;
using Microsoft.AspNet.Mvc;

namespace Edk.Poc.WebAPI.Controllers.Controllers
{
    [Route("api/v1/[controller]")]
    public class ZipController : Controller
    {
        private readonly IBaseRepository _repository;
        private readonly IConfiguration _configuration;

        public ZipController(IBaseRepository repository, IConfiguration configuration)
        {
            _repository = repository;
            _configuration = configuration;
        }

        [HttpGet("{zipCode:int}", Name = "GetByZipCode")]
        public IActionResult GetByZipCode(int zipCode)
        {
            return new ObjectResult(_repository.GetByZipCode(zipCode));
        }
    }
}
