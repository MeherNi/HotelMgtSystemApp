using System;
using System.Collections.Generic;

namespace HotelMgtSystemApp.Models.EntityModels
{
    public partial class Payment
    {
        public int Id { get; set; }
        public DateTime? Date { get; set; }
        public double? Amount { get; set; }
        public int? BookingId { get; set; }
        public string? Method { get; set; }
        public string? Note { get; set; }
        public DateTime? PaymentDate { get; set; }
        public string? PaymentType { get; set; }
        public string? PaymentDetail { get; set; }
        public string? Status { get; set; }
    }
}
