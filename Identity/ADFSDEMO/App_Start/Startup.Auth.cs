using System;
using System.Collections.Generic;
using System.Configuration;
using System.Globalization;
using System.Linq;
using System.Web;
using Microsoft.Owin.Security;
using Microsoft.Owin.Security.Cookies;
using Microsoft.Owin.Security.WsFederation;
using Owin;
using System.IdentityModel.Tokens;

namespace ADFSDEMO
{
    public partial class Startup
    {
        private static string realm = ConfigurationManager.AppSettings["ida:Wtrealm"];
        private static string adfsMetadata = ConfigurationManager.AppSettings["ida:ADFSMetadata"];

        public void ConfigureAuth(IAppBuilder app)
        {
            app.SetDefaultSignInAsAuthenticationType(CookieAuthenticationDefaults.AuthenticationType);

            app.UseCookieAuthentication(new CookieAuthenticationOptions());

            app.UseWsFederationAuthentication(
                new WsFederationAuthenticationOptions
                {
                    TokenValidationParameters =
                    new TokenValidationParameters { AudienceValidator =
                    (aud, b, c) => true
                    },
                    Wtrealm = realm,
                    MetadataAddress = adfsMetadata
                });
        }
    }
}