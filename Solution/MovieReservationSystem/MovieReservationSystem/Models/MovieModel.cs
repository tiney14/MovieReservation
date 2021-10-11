using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace MovieReservationSystem.Models
{
    public class MovieModel
    {
        [BindProperty]
        [Key]
        public int Id { get; set; }

        [Display(Name ="Movie Name")]
        public string Movie_Name { get; set; }

        public string Description { get; set; }

        public string TimeSlotId { get; set; }

        public IEnumerable<MovieModel> ListMovie { get; set; }
    }
}
