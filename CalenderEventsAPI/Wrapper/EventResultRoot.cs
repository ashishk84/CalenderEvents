using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CalenderEventsAPI.Wrapper
{
    public class EventResultRoot
    {
        public int Month { get; set; }
        public int Day { get; set; }
        public int Hour { get; set; }
        public int Total { get; set; }
    }
}
