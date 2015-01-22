using System;
using Microsoft.Framework.ConfigurationModel;

namespace Edk.Poc.WebAPI.Infrastructure
{
    public interface IConfiguration
    {
        Configuration GetEDKConfig();
    }
}