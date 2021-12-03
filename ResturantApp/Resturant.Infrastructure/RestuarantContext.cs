using Microsoft.EntityFrameworkCore;
using System;

namespace Resturant.Infrastructure
{
    public class RestuarantContext : DbContext
    {
        public RestuarantContext(DbContextOptions<RestuarantContext> options) : base(options)
        {
            
        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            base.OnConfiguring(optionsBuilder);
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
        }

    }
}
