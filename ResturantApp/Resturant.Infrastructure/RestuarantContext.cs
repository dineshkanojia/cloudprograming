using Microsoft.EntityFrameworkCore;
using Resturant.Common;
using System;

namespace Resturant.Infrastructure
{
    public class RestuarantContext : DbContext
    {
        public RestuarantContext(DbContextOptions<RestuarantContext> options) : base(options)
        {
            
        }

        public DbSet<Customers> Customers { get; set; }
        public DbSet<Items> Items { get; set; }
        public DbSet<PaymentTypes> PaymentTypes { get; set; }
        public DbSet<Orders> Orders { get; set;   }
        public DbSet<OrderDetail> OrderDetail { get; set; }
        public DbSet<OrderTransactions> OrderTransactions { get; set; }

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
