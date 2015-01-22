using System;

namespace Edk.Poc.WebAPI.Models
{
    public class Vehicle
    {
        public int ID { get; set; }
        public string VIN { get; set; }
        public string Make { get; set; }
        public Nullable<int> Year { get; set; }
        public string Model { get; set; }
        public string BodyStyle { get; set; }
        public string Trim { get; set; }
        public string EngineType { get; set; }
        public string TransmissionType { get; set; }
        public string DriveSystem { get; set; }
        public string FuelType { get; set; }
        public string WheelSize { get; set; }
        public string Story { get; set; }
    }
}