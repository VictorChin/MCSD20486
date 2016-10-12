using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Net.Http;
using System.Threading;
using System.Threading.Tasks;
using System.Web;

namespace ProductStore.Infra
{
    public class AddTimerHeaderHandler : DelegatingHandler
    {
        async protected override Task<HttpResponseMessage> SendAsync(
                HttpRequestMessage request, CancellationToken cancellationToken)
        {
            var watch = Stopwatch.StartNew();
            HttpResponseMessage response = await base.SendAsync(request, cancellationToken);
            watch.Stop();
            response.Headers.Add("X-Elasped-Time-Header-ticks", watch.ElapsedTicks.ToString());
            return response;
        }
    }
}