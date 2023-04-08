using System;
using System.Collections.Generic;

namespace HotelMgtSystemApp.Models.EntityModels
{
    public partial class Employee
    {
        public int Id { get; set; }
        public string? FirstName { get; set; }
        public string? LastName { get; set; }
        public int? PositionId { get; set; }
        public string? Addresses { get; set; }
        public string? ContactNumber { get; set; }
        public string? EmailAddress { get; set; }
        public int? DepartmentId { get; set; }
        public int? EmployeeTypeId { get; set; }
        public byte? Status { get; set; }
    }
}
