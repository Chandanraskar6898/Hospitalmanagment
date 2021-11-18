using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Hospitalmanagment.Startup))]
namespace Hospitalmanagment
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
