using Microsoft.AspNetCore.Mvc;
using MovieReservationSystem.Models;
using MovieReservationSystem.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MovieReservationSystem.Controllers
{
    [Route("Movie")]
    public class MovieController : Controller
    {

        private readonly IMovieRepository _movieRepository;
        public MovieController(IMovieRepository movieRepository)
        {
            _movieRepository = movieRepository;
        }

        public IActionResult Index()
        {

            var model = new MovieModel();
            model.ListMovie = _movieRepository.GetAllMovie();
            return View(model);
        }

        [Route("add")]
        public IActionResult Create()
        {
            return View();
        }

        [HttpPost("add")]
        public IActionResult Create(MovieModel model)
        {
            if (ModelState.IsValid)
            {
                var get = _movieRepository.GetByName(model.Movie_Name);

                if (get.Count() == 0)
                {
                    if (_movieRepository.Add(model))
                    {
                        TempData["Success"] = $"{ model.Movie_Name} was successfully added.";
                    }
                }
            }
            return View();
        }

        [Route("{id}/edit")]
        public IActionResult Edit(int id)
        {
            //var model = new MovieModel();
            //model.ListMovie = _movieRepository.GetMovieDetails(id);

            var model = _movieRepository.GetMovieDetails(id);
            return View(model);
        }

        [HttpPost("{id}/edit")]
        public IActionResult Edit(MovieModel model)
        {
            if (ModelState.IsValid)
            {
                if (_movieRepository.Edit(model))
                {
                    TempData["Success"] = $"{ model.Movie_Name} was successfully updated.";
                }
            }

            return View(model);
        }

        [Route("{id}/delete")]
        public IActionResult Delete(int id)
        {
            if (_movieRepository.Delete(id))
            {
                TempData["Success"] = $"Successfully deleted.";
            }
            return RedirectToAction("Index");

        }
    }
}
