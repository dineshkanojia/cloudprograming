using System;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.UI;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using ResturantApp.Areas.Identity.Data;
using ResturantApp.Data;

[assembly: HostingStartup(typeof(ResturantApp.Areas.Identity.IdentityHostingStartup))]
namespace ResturantApp.Areas.Identity
{
    public class IdentityHostingStartup : IHostingStartup
    {
        public void Configure(IWebHostBuilder builder)
        {
            builder.ConfigureServices((context, services) =>
            {
                services.AddDbContext<ResturantAppDBContext>(options =>
                    options.UseSqlServer(
                        context.Configuration.GetConnectionString("ResturantAppDBContextConnection")));

                services.AddDefaultIdentity<ResturantAppUser>(options =>
                {
                    options.SignIn.RequireConfirmedAccount = false;
                    options.Password.RequireUppercase = false;
                    options.Password.RequireLowercase = false;
                })
                    .AddEntityFrameworkStores<ResturantAppDBContext>();
            });
        }
    }
}