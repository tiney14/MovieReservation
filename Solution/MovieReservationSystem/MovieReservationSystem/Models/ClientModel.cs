using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace MovieReservationSystem.Models
{
    public class ClientModel
    {
        [Key]
        public int Id { get; set; }

        public string ClientName { get; set; }

        public string Seats { get; set; }

        public string DateReserve { get; set; }

        public string MovieId { get; set; }

        public string Movie_Name { get; set; }

        public IEnumerable<ClientModel> ListClient { get; set; }
    }
}
