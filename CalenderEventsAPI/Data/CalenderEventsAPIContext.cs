using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using CalenderEventsAPI.Models;

namespace CalenderEventsAPI.Data
{
    public class CalenderEventsAPIContext : DbContext
    {
        public CalenderEventsAPIContext (DbContextOptions<CalenderEventsAPIContext> options)
            : base(options)
        {
        }

        public DbSet<CalenderEventsAPI.Models.Event> Event { get; set; }
    }
}
