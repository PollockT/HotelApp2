﻿using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace HotelAppLibrary.Models
{
    public class BookingModel
    {
        public int Id { get; set; }
        public int RoomId { get; set; }
        public int GuestId { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public bool CheckedIn { get; set; } = false;
        public decimal TotalCost { get; set; }
    }
}
