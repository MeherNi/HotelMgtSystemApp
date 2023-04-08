using System;
using System.Collections.Generic;

namespace HotelMgtSystemApp.Models.EntityModels
{
    public partial class Room
    {
        public int Id { get; set; }
        public string? Name { get; set; }
        public int? RoomTypeId { get; set; }
        public byte? Status { get; set; }
        public int? PackageId { get; set; }
    }
}
