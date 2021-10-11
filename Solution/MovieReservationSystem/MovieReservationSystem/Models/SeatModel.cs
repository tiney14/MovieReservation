using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace MovieReservationSystem.Models
{
    public class SeatModel 
    {

        [Key]
        public int Id { get; set; }

        public string SeatFloor { get; set; }

        public int SeatNumber { get; set; }

        public Boolean IsAvailable { get; set; }

        public int MovieId { get; set; }

        public int TimeSlotId { get; set; }

        public string ClientName { get; set; }
        public IEnumerable<SeatModel> ListSeats { get; set; }

        public IEnumerable<MovieModel> ListMovie { get; set; }

        public IEnumerable<TimeSlotModel> ListTimeSlot { get; set; }
    }
}
