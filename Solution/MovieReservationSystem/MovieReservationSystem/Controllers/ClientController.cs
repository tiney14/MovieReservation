using Microsoft.AspNetCore.Mvc;
using MovieReservationSystem.Models;
using MovieReservationSystem.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MovieReservationSystem.Controllers
{
    [Route("Client")]
    public class ClientController : Controller
    {

        private readonly IReserveRepository _reserveRepository;
        public ClientController(IReserveRepository clientRepository)
        {
            _reserveRepository = clientRepository;
        }

        public IActionResult Index()
        {

            var model = _reserveRepository.GetAllClient();
            return View(model);
        }

        
    }
}
