

namespace gregslist_csharp.Models;

    public class Job
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public int Salary { get; set; }
        public bool IsFullTime { get; set; }
        public DateTime CreatedAt { get; set; }
        public DateTime UpdatedAt { get; set; }
    }
