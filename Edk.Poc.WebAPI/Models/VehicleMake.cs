using System;
using System.Collections.Generic;

namespace Edk.Poc.WebAPI.Models
{
    public partial class VehicleMake
    {
        public VehicleMake()
        {
            this.VehicleModels = new List<VehicleModel>();
        }

        public int ID { get; set; }
        public string make { get; set; }
        public bool isCommon { get; set; }
        public System.DateTime createdDate { get; set; }
        public System.DateTime modifiedDate { get; set; }
        public virtual ICollection<VehicleModel> VehicleModels { get; set; }
    }
}
