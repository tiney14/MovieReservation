
using Dapper;
using Microsoft.Data.SqlClient;
using MovieReservationSystem.Models;
using MovieReservationSystem.Repositories;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.Extensions.Configuration;

public class MovieRepository : IMovieRepository
{
    private readonly ConnectionString _connectionString;

    public MovieRepository(ConnectionString connectionString)
    {
        _connectionString = connectionString;
    }

    public IEnumerable<MovieModel> GetAllMovie()
    {
        
        using (var conn = new SqlConnection(_connectionString.Value))
        {
            const string query = @"SELECT * 
                                   FROM Movie";
            var result = conn.Query<MovieModel>(query);
            return result;
        }
    }

    public MovieModel GetMovieDetails(int id)
    {
        using (var conn = new SqlConnection(_connectionString.Value))
        {
            string query = @"SELECT * 
                               FROM Movie
                               WHERE id = " + id;
            var result = conn.QueryFirstOrDefault<MovieModel>(query);
            return result;
        }
    }

    public IEnumerable<MovieModel> GetByName(string name)
    {
        using (var conn = new SqlConnection(_connectionString.Value))
        {
            const string query = @"SELECT movie_name 
                               FROM Movie
                               WHERE movie_name = @Name";

            var result = conn.Query<MovieModel>(query,new { Name = name});
            return result;
        }
    }

    public bool Add(MovieModel model)
    {
        using (var conn = new SqlConnection(_connectionString.Value))
        {
            const string query = @"INSERT INTO Movie(Movie_Name, Description)
                                   VALUES(@Name, @Description)";
            var result = conn.Execute(query,new { Name = model.Movie_Name, Description = model.Description });
            
            return (result == 1 ? true : false);
        }
    }

    public bool Edit(MovieModel model)
    {
        using (var conn = new SqlConnection(_connectionString.Value))
        {
            const string query = @"UPDATE Movie
                                   SET Movie_Name = @Name,
                                       Description = @Description
                                   WHERE Id = @Id";
            int result = conn.Execute(query, new { Id = model.Id, Name = model.Movie_Name, Description = model.Description });
            return (result == 1 ? true : false);
        }
    }

    public bool Delete(int id)
    {
        using (var conn = new SqlConnection(_connectionString.Value))
        {
            const string query = @"DELETE Movie
                                   WHERE Id = @Id";
            int result = conn.Execute(query, new { Id = id });
            return (result == 1 ? true : false);
        }
    }

    public IEnumerable<TimeSlotModel> GetTimeslot(int id)
    {
        

        using (var conn = new SqlConnection(_connectionString.Value))
        {
            string query = @"SELECT * 
                               FROM TimeSlot
                               WHERE movieid = @Id";

            var result = conn.Query<TimeSlotModel>(query,  new { Id = id});
            return result;
        }
    }
}