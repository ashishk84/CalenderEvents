using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CalenderEventsAPI.Wrapper
{
    
    public class EventResult
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public byte IsActive { get; set; }
        public string Content { get; set; }
    }
}
