using Edk.Poc.WebAPI.Infrastructure;
using Edk.Poc.WebAPI.Repository;
using Microsoft.AspNet.Builder;
using Microsoft.Framework.DependencyInjection;

namespace Edk.Poc.WebAPI
{
    public class Startup
    {
        public void Configure(IApplicationBuilder app)
        {
            app.UseMvc();
            app.UseWelcomePage();
        }

        public void ConfigureServices(IServiceCollection services)
        {
            services.AddMvc();
            services.AddSingleton<IBaseRepository, ZipRepository>();
            services.AddSingleton<IConfiguration, EdkConfiguration>();


            // Add Identity services to the services container.
            //services.AddDefaultIdentity<ApplicationDbContext, ApplicationUser, IdentityRole>(Configuration);

            //Adding a reference
            //services.AddTransient<>();
        }
    }
}
