using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace gregslist_csharp.Repositories
{
    public class HousesRepository
    {
        private readonly IDbConnection _db;

        public HousesRepository(IDbConnection db)
        {
            _db = db;
        }

        internal House GetHouseById(int houseId)
        {
            string sql = $"SELECT * FROM houses WHERE id = @houseId;";
            House house = _db.QueryFirstOrDefault<House>(sql, new { houseId });
            return house;
        }

        internal List<House> GetHouses()
        {
            string sql = "SELECT * FROM houses;";
            List<House> houses = _db.Query<House>(sql).ToList();
            return houses;
        }
    }
}