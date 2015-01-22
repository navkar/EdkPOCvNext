using System;
using System.Collections.Generic;

namespace Edk.Poc.WebAPI.Models
{
    public partial class VehicleBodytype
    {
        public int ID { get; set; }
        public Nullable<int> vehicleModelID { get; set; }
        public string bodyType { get; set; }
        public System.DateTime createdDate { get; set; }
        public System.DateTime modifiedDate { get; set; }
        public virtual VehicleModel VehicleModel { get; set; }
    }
}
