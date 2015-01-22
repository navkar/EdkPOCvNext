using System.Collections.Generic;
using Edk.Poc.WebAPI.Infrastructure;
using Edk.Poc.WebAPI.Models;

namespace Edk.Poc.WebAPI.Repository
{
    public class ZipRepository : IBaseRepository
    {
        private string sqlConnectionString = string.Empty;
        private IConfiguration _configuration;
        public ZipRepository(IConfiguration configuration)
        {
            _configuration = configuration;
            sqlConnectionString = _configuration.GetEDKConfig().Get("Data:DefaultConnection:ConnectionString");
        }

        public List<ZipCode> GetByZipCode(int zipCode)
        {
            EdkDataReader reader = new EdkDataReader(sqlConnectionString);
            return reader.ZipCodeInfo(zipCode);
        }
    }
}