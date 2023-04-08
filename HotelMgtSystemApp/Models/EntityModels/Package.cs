using System;
using System.Collections.Generic;

namespace HotelMgtSystemApp.Models.EntityModels
{
    public partial class Package
    {
        public int Id { get; set; }
        public string? Name { get; set; }
        public string? Price { get; set; }
    }
}
