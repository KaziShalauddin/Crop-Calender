using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CropCalenderApp.Startup))]
namespace CropCalenderApp
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
