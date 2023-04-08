using System;
using System.Collections.Generic;

namespace HotelMgtSystemApp.Models.EntityModels
{
    public partial class CheckOut
    {
        public int Id { get; set; }
        public int? GuestId { get; set; }
        public int? BookingId { get; set; }
        public DateTime? CheckInDate { get; set; }
        public DateTime? CheckOutDate { get; set; }
        public double? TotalBill { get; set; }
    }
}
