using Microsoft.AspNetCore.Mvc;
using MovieReservationSystem.Models;
using MovieReservationSystem.Repositories;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MovieReservationSystem.Controllers
{
    [Route("Reserve")]
    public class ReserveController : Controller
    {
        
        private readonly IReserveRepository _reserveRepository;
        private readonly IMovieRepository _movieRepository;
        public ReserveController(IReserveRepository reserveRepository,
                                IMovieRepository movieRepository)
        {
            _reserveRepository = reserveRepository;
            _movieRepository = movieRepository;
        }

        public IActionResult Index()
        {
            TempData["tempSeat"] = string.Empty;
            var model = new SeatModel();
            model.ListSeats =  _reserveRepository.GetAllSeats();
            model.ListMovie = _movieRepository.GetAllMovie();
            return View(model);
        }



        [HttpPost]
        public IActionResult ReserveSeat(SeatModel seatModel)
        {
            string listSeat = "";
            string tmpListSeat = TempData["tempSeat"].ToString();
            List<string> convertedListSeat = new List<string>();

            if (tmpListSeat != string.Empty)
            {
                convertedListSeat = JsonConvert.DeserializeObject<List<string>>(tmpListSeat);
                for (int a = 0; a < convertedListSeat.Count; a++)
                {
                    var obj = JsonConvert.DeserializeObject<SeatModel>(convertedListSeat[a]);
                    // insert
                    obj.ClientName = seatModel.ClientName;
                    obj.MovieId = seatModel.MovieId;
                    obj.TimeSlotId = seatModel.TimeSlotId;
                    listSeat += obj.SeatFloor + obj.SeatNumber.ToString() + ", ";
                    _reserveRepository.ReserveSeat(obj);
                }
                seatModel.SeatFloor = listSeat;
                _reserveRepository.SaveClient(seatModel);
                TempData["Success"] = "Successfully reserved.";
            }


            return RedirectToAction("ReserveSeat");
        }


        [HttpPost("{id}")]
        public IActionResult TempSave(int id, bool isAvailable, string floor, int number)
        {

            List<string> list = new List<string>();
            List<string> convertedList = new List<string>();
            string tmpList = TempData["tempSeat"].ToString();
            string tempSeat;
            bool isExist = false;

            var model = new SeatModel();
            model.Id = id;
            model.IsAvailable = isAvailable;
            model.SeatFloor = floor;
            model.SeatNumber = number;


            if (tmpList != string.Empty)
            {
                convertedList = JsonConvert.DeserializeObject<List<string>>(tmpList);
                for (int a = 0; a < convertedList.Count; a++)
                {
                    var obj = JsonConvert.DeserializeObject<SeatModel>(convertedList[a]);
                    if (obj.Id == model.Id)
                    {
                        isExist = true;
                        obj.IsAvailable = model.IsAvailable;
                        tempSeat = JsonConvert.SerializeObject(obj);
                    }
                    else
                    {
                        tempSeat = JsonConvert.SerializeObject(obj);
                    }
                    list.Add(tempSeat);
                }

                if (!isExist) {
                    list.Add(JsonConvert.SerializeObject(model));
                }
            }
            else
            {
                list.Add(JsonConvert.SerializeObject(model));
            }

            var listSeat = JsonConvert.SerializeObject(list);
            TempData["tempSeat"] = listSeat;
            TempData.Keep("tempSeat");

            return Json(list);
        }



        [HttpPost("TimeSlot")]
        public IActionResult TimeSlot(int id)
        {
            var model = _movieRepository.GetTimeslot(id);
            return Json(model);
        }

        [HttpPost("SeatByMovie")]
        public IActionResult SeatByMovie(int id, int timeSlotId)
        {
            var model = _reserveRepository.GetSeatByMovie(id, timeSlotId);
            return Json(model);
        }







    }
}
