using System.Web;
using System.Web.Optimization;

namespace ucarkadir
{
    public class BundleConfig
    {
        // For more information on bundling, visit https://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            // Use the development version of Modernizr to develop with and learn from. Then, when you're
            // ready for production, use the build tool at https://modernizr.com to pick only the tests you need.
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                        "~/Scripts/modernizr-*"));

            // buradan sıra ile işlem yapıyorum
            bundles.Add(new StyleBundle("~/Content/css").Include(
                      "~/Content/bootstrap.css",
                      "~/Content/mains.css",
                      "~/Content/swiper.css",
                      "~/Content/fontawesome/all.css"));

            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Scripts/jquery-{version}.js",
                        "~/Scripts/popper.js"));

            bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
                      "~/Scripts/bootstrap.js",
                      "~/Scripts/respond.js",
                      "~/Scripts/swiper.js"));

            bundles.Add(new ScriptBundle("~/bundles/smooth").Include(
                    "~/Scripts/smooth.js"));

            bundles.Add(new ScriptBundle("~/bundles/test").Include(
                   "~/Scripts/smooth.js",
                   "~/Scripts/swiper-initialize.js"));

        }
    }
}
