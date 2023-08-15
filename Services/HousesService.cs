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

        internal House CreateHouse(House houseData)
        {
            int houseId = _housesRepository.CreateHouses(houseData);

            House house = GetHouseById(houseId);

            return house;
        }

        internal House GetHouseById(int houseId)
        {
            House house = _housesRepository.GetHouseById(houseId);

            if (house == null)
            {
                throw new Exception($"{houseId} is not a valid Id");
            }
            return house;
        }

        internal List<House> GetHouses()
        {
            List<House> houses = _housesRepository.GetHouses();
            return houses;
        }
    }
}