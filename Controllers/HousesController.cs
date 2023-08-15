

namespace gregslist_csharp.Controllers;

    [ApiController]
    [Route("api/[controller]")]
    public class HousesController : ControllerBase
    {
    private readonly HousesService _housesService;

    public HousesController(HousesService housesService)
    {
        _housesService = housesService;
    }

    [HttpGet]
    public ActionResult<List<House>> GetHouses()
    {
        try
        {
            List<House> houses = _housesService.GetHouses();
            return Ok(houses);
        }
        catch (Exception e)
        {
            return BadRequest(e.Message);
        }
    }

    [HttpGet("{houseId}")]
    public ActionResult<House> GetHouseById(int houseId)
    {
        try
        {
            House house = _housesService.GetHouseById(houseId);
            return Ok(house);
        }
        catch (Exception e)
        {
            return BadRequest(e.Message);
        }
    }

    [HttpPost]
    public ActionResult<House> CreateHouses([FromBody] House houseData)
    {
        try
        {
            House house = _housesService.CreateHouse(houseData);
            return Ok(house);
        }
        catch (Exception e)
        {
            return BadRequest(e.Message);
        }
    }

    [HttpDelete("{houseId}")]
    public ActionResult<string> RemoveHouse(int houseId)
    {
        try
        {
            House house = _housesService.RemoveHouse(houseId);
            return Ok($"{house.Bedrooms} bedroom {house.Bathrooms} bathroom house was removed.");
        }
        catch (Exception e)
        {
            return BadRequest(e.Message);
        }
    }
}
