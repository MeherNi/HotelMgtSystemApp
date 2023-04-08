using System;
using System.Collections.Generic;

namespace HotelMgtSystemApp.Models.EntityModels
{
    public partial class BookingService
    {
        public int Id { get; set; }
        public int? BookingId { get; set; }
        public int? ServiceId { get; set; }
        public int? TypeId { get; set; }
        public int? GuestNumber { get; set; }
        public int? NightNumber { get; set; }
        public int? Price { get; set; }
    }
}
