using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace gregslist_csharp.Services
{
    public class HousesService
    {
        private readonly HousesRepository _housesRepository;

        public HousesService(HousesRepository housesRepository)
        {
            _housesRepository = housesRepository;
        }

        internal List<House> GetHouses()
        {
            List<House> houses = _housesRepository.GetHouses();
            return houses;
        }
    }
}