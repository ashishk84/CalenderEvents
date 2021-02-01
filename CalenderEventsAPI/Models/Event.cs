using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CalenderEventsAPI.Models
{
    public class Event
    {
        public int Id {get; set;}
        public string Title { get; set; }
        public string Description { get; set; }
        public byte IsActive { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public byte IsAllDay { get; set; }
        public string Content { get; set; }
    }
}
