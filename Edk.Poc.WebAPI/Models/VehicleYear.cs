using System;
using System.Collections.Generic;

namespace Edk.Poc.WebAPI.Models
{
    public partial class VehicleYear
    {
        public VehicleYear()
        {
            this.VehicleModels = new List<VehicleModel>();
        }

        public int ID { get; set; }
        public string year { get; set; }
        public System.DateTime createdDate { get; set; }
        public System.DateTime modifiedDate { get; set; }
        public virtual ICollection<VehicleModel> VehicleModels { get; set; }
    }
}
