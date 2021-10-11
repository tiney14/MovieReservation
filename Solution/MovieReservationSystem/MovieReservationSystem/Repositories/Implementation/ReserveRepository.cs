
using Dapper;
using Microsoft.Data.SqlClient;
using MovieReservationSystem.Models;
using MovieReservationSystem.Repositories;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

public class ReserveRepository : IReserveRepository
{
    private readonly ConnectionString _connectionString;

    public ReserveRepository(ConnectionString connectionString)
    {
        _connectionString = connectionString;
    }

    public IEnumerable<SeatModel> GetAllSeats()
    {
        const string query = @"SELECT * 
                               FROM Seat";

        using (var conn = new SqlConnection(_connectionString.Value))
        {
            var result = conn.Query<SeatModel>(query);
            return result;
        }
    }

    public IEnumerable<TimeSlotModel> GetTimeslot()
    {
        const string query = @"SELECT * 
                               FROM TimeSlot";

        using (var conn = new SqlConnection(_connectionString.Value))
        {
            var result = conn.Query<TimeSlotModel>(query);
            return result;
        }
    }

    public IEnumerable<SeatModel> GetSeatByMovie(int id, int timeSlotId)
    {
        const string query = @"SELECT * 
                               FROM Seat
                               WHERE movieid= @Id
                               AND timeSlotId = @TimeSlotId";

        using (var conn = new SqlConnection(_connectionString.Value))
        {
            var result = conn.Query<SeatModel>(query, new { Id = id, TimeSlotId = timeSlotId });
            return result;
        }
    }

    public bool ReserveSeat(SeatModel model)
    {
        using (var conn = new SqlConnection(_connectionString.Value))
        {
            const string querySeat = @"UPDATE SEAT
                                       SET isAvailable = @IsAvailable
                                       WHERE id = @Id 
                                       AND movieId= @MovieId
                                       AND TimeSlotId =@TimeSlotId";
            int result = conn.Execute(querySeat, new
            {
                IsAvailable = (model.IsAvailable) ? 1 : 0,
                Id = model.Id,
                MovieId = model.MovieId,
                TimeSlotId = model.TimeSlotId
            });

            return ((result == 1 ) ? true : false);
        }
    }

    public bool SaveClient(SeatModel model)
    {
        using (var conn = new SqlConnection(_connectionString.Value))
        {

            const string query = @"INSERT INTO Client(ClientName, Seats,DateReserve,MovieId)
                                   VALUES(@ClientName, @Seat,GETDATE(),@MovieId)";
            int result = conn.Execute(query, new { ClientName = model.ClientName, Seat = model.SeatFloor, MovieId=model.MovieId });

            return ((result == 1) ? true : false);
        }
    }

    public IEnumerable<ClientModel> GetAllClient()
    {
        const string query = @"SELECT * 
                               FROM Client c
                               INNER JOIN Movie m
                               ON c.movieId = m.id";

        using (var conn = new SqlConnection(_connectionString.Value))
        {
            var result = conn.Query<ClientModel>(query);
            return result;
        }
    }
}