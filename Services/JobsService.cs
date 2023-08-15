
namespace gregslist_csharp.Services;

public class JobsService
{
    private readonly JobsRepository _jobsRepository;

    public JobsService(JobsRepository jobsRepository)
    {
        _jobsRepository = jobsRepository;
    }

    internal List<Job> GetJobs()
    {
        List<Job> jobs = _jobsRepository.GetJobs();
        return jobs;
    }
}
