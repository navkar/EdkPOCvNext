using System;
using Microsoft.Framework.ConfigurationModel;

namespace Edk.Poc.WebAPI.Infrastructure
{
    public class EdkConfiguration : IConfiguration
    {
        public Configuration GetEDKConfig()
        {
            var configuration = new Configuration();
            configuration.AddJsonFile("config.json");
            configuration.AddEnvironmentVariables();

            return configuration;
        }
    }
}