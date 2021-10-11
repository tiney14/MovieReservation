using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace MovieReservationSystem.Models
{
    public class TimeSlotModel
    {
        [Key]
        public int Id { get; set; }

        public string MovieId { get; set; }

        public string MovieTime { get; set; }

        public string DateReserved { get; set; }
    }
}
