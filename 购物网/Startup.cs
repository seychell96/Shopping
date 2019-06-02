using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(购物网.Startup))]
namespace 购物网
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
