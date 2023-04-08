using System;
using System.Collections.Generic;

namespace HotelMgtSystemApp.Models.EntityModels
{
    public partial class Position
    {
        public int Id { get; set; }
        public string? Name { get; set; }
        public int? PositionId { get; set; }
        public string? Description { get; set; }
    }
}
