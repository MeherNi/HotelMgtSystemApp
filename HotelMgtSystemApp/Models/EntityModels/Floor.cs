using System;
using System.Collections.Generic;

namespace HotelMgtSystemApp.Models.EntityModels
{
    public partial class Floor
    {
        public int Id { get; set; }
        public string? Name { get; set; }
        public int? FloorSupervisorId { get; set; }
        public string? Note { get; set; }
    }
}
