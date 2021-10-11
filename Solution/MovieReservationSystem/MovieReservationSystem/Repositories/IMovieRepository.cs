using MovieReservationSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MovieReservationSystem.Repositories
{
    public interface IMovieRepository
    {
        IEnumerable<MovieModel> GetAllMovie();

        MovieModel GetMovieDetails(int id);
        IEnumerable<MovieModel> GetByName(string name);

        IEnumerable<TimeSlotModel> GetTimeslot(int id);

        Boolean Add(MovieModel model);

        Boolean Edit(MovieModel model);

        Boolean Delete(int id);
    }
}
