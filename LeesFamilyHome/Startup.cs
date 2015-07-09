using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(LeesFamilyHome.Startup))]
namespace LeesFamilyHome
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
