using System.Collections.Generic;
using Edk.Poc.WebAPI.Models;

namespace Edk.Poc.WebAPI.Repository
{
    public interface IBaseRepository
    {
        List<ZipCode> GetByZipCode(int zipCode);
    }
}