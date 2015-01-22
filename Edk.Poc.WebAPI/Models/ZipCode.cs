using System;

namespace Edk.Poc.WebAPI.Models
{
    public partial class ZipCode
    {
        public Guid Id { get; set; }
        public System.DateTime CreatedDate { get; set; }
        public System.DateTime ModifiedDate { get; set; }
        public string Country { get; set; }
        public string ZipCode5Digits { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string StateAbbreviation { get; set; }
        public string County { get; set; }
        public decimal Latitude { get; set; }
        public decimal Longitude { get; set; }
        //public System.Data.Entity.Spatial.DbGeography GeoLocation { get; set; }
    }
}
