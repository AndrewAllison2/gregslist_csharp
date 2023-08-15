
namespace gregslist_csharp.Services;

public class JobsService
{
    private readonly JobsRepository _jobsRepository;

    public JobsService(JobsRepository jobsRepository)
    {
        _jobsRepository = jobsRepository;
    }

    internal Job GetJobById(int jobId)
    {
        Job job = _jobsRepository.GetJobById(jobId);

        if (job == null)
        {
            throw new Exception($"{jobId} is not a valid ID");
        }
        return job;
    }

    internal List<Job> GetJobs()
    {
        List<Job> jobs = _jobsRepository.GetJobs();
        return jobs;
    }
}
