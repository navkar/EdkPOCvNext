using System;
using System.Collections.Generic;

namespace Edk.Poc.WebAPI.Models
{
    public partial class VehicleModel
    {
        public VehicleModel()
        {
            this.VehicleBodytypes = new List<VehicleBodytype>();
        }

        public int ID { get; set; }
        public Nullable<int> vehicleYearID { get; set; }
        public Nullable<int> vehicleMakeID { get; set; }
        public string model { get; set; }
        public System.DateTime createdDate { get; set; }
        public System.DateTime modifiedDate { get; set; }
        public virtual ICollection<VehicleBodytype> VehicleBodytypes { get; set; }
        public virtual VehicleMake VehicleMake { get; set; }
        public virtual VehicleYear VehicleYear { get; set; }
    }
}
