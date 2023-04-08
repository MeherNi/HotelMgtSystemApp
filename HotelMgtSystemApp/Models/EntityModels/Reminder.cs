using System;
using System.Collections.Generic;

namespace HotelMgtSystemApp.Models.EntityModels
{
    public partial class Reminder
    {
        public int Id { get; set; }
        public int? BookingId { get; set; }
        public string? ReminderType { get; set; }
        public string? ReminderDetail { get; set; }
        public DateTime? RemindDate { get; set; }
        public string? Status { get; set; }
    }
}
