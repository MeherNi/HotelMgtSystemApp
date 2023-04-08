using System;
using System.Collections.Generic;

namespace HotelMgtSystemApp.Models.EntityModels
{
    public partial class FloorSupervisor
    {
        public int Id { get; set; }
        public string? FullName { get; set; }
        public string? EmailAddress { get; set; }
        public string? ContactNumber { get; set; }
        public string? Photo { get; set; }
        public string? Note { get; set; }
    }
}
