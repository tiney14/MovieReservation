using MovieReservationSystem.Models;
using Nest;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MovieReservationSystem.Repositories
{
    public interface IReserveRepository 
    {
        IEnumerable<SeatModel> GetAllSeats();
        IEnumerable<SeatModel> GetSeatByMovie(int id, int timeSlotId);

        bool ReserveSeat(SeatModel model);

        bool SaveClient(SeatModel model);

        IEnumerable<ClientModel> GetAllClient();
    }
}
