using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.Linq;
using System.Web;

namespace WebApiDemo
{
    /// <summary>
    /// Summary description for shape
    /// </summary>
    public class shape : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            int h = int.Parse(context.Request["h"]);
            int w = int.Parse(context.Request["w"]);
            Image i = new Bitmap(w, h);
            Graphics g = Graphics.FromImage(i);
            g.Clear(Color.White);
            g.SmoothingMode = SmoothingMode.AntiAlias;
            g.DrawEllipse(new Pen(Brushes.Orange, 6),
              new Rectangle(10, 10, w - 20, h - 20));
            context.Response.ContentType = "image/jpeg";
            i.Save(context.Response.OutputStream, ImageFormat.Jpeg);

        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}