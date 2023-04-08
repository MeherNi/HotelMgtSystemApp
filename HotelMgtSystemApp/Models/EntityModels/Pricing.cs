using System;
using System.Collections.Generic;

namespace HotelMgtSystemApp.Models.EntityModels
{
    public partial class Pricing
    {
        public int Id { get; set; }
        public int? RoomTypeId { get; set; }
        public int? Price { get; set; }
        public int? Day { get; set; }
        public int? Month { get; set; }
        public int? Year { get; set; }
    }
}
