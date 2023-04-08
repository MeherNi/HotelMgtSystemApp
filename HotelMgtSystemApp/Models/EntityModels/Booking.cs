using System;
using System.Collections.Generic;

namespace HotelMgtSystemApp.Models.EntityModels
{
    public partial class Booking
    {
        public int Id { get; set; }
        public int? GuestId { get; set; }
        public int? RoomId { get; set; }
        public DateTime? CheckIn { get; set; }
        public DateTime? CheckOut { get; set; }
        public int? RoomTypeId { get; set; }
        public int? TotalGuest { get; set; }
        public int? UserId { get; set; }
        public double? TotalAmount { get; set; }
        public DateTime? CreatedAt { get; set; }
    }
}
