using System;
using System.Collections.Generic;

namespace HotelMgtSystemApp.Models.EntityModels
{
    public partial class Guest
    {
        public int Id { get; set; }
        public int? UserId { get; set; }
        public string? FirstName { get; set; }
        public string? LastName { get; set; }
        public string? ContactNumber { get; set; }
        public string? EmailAddress { get; set; }
        public string? AddressId { get; set; }
        public string? IdProof { get; set; }
        public string? CreditCard { get; set; }
        public string? Note { get; set; }
    }
}
