using System;
using System.Collections.Generic;

namespace HotelMgtSystemApp.Models.EntityModels
{
    public partial class RoomType
    {
        public int Id { get; set; }
        public string? Name { get; set; }
        public string? Photo { get; set; }
        public string? RoomFeacture { get; set; }
        public string? Capacity { get; set; }
        public string? Description { get; set; }
        public double? Price { get; set; }
    }
}
