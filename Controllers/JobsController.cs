using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace gregslist_csharp.Controllers;

    [ApiController]
    [Route("api/[controller]")]
    public class JobsController : ControllerBase
    {
    private readonly JobsService _jobsService;

    public JobsController(JobsService jobsService)
    {
        _jobsService = jobsService;
    }

    [HttpGet]
    public ActionResult<List<Job>> GetJobs()
    {
        try
        {
            List<Job> jobs = _jobsService.GetJobs();
            return Ok(jobs);
        }
        catch (Exception e)
        {
            return BadRequest(e.Message);
        }
    }
}
