using System.Web;
using System.Web.Optimization;

namespace ucarkadir
{
    public class BundleConfig
    {
        // For more information on bundling, visit https://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            // _______________________________________________________________________ ucarkadir
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                        "~/Scripts/modernizr-*"));

            bundles.Add(new StyleBundle("~/Content/css").Include(
                      "~/Content/bootstrap.css",
                      "~/Content/mains.css",
                      "~/Content/swiper.css",
                      "~/Content/fontawesome/all.css"));

            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Scripts/jquery-{version}.js",
                        "~/Scripts/umd/popper.js"));

            bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(                       
                      "~/Scripts/bootstrap.js",
                      "~/Scripts/respond.js",
                      "~/Scripts/swiper.js"));

            bundles.Add(new ScriptBundle("~/bundles/smooth").Include(
                    "~/Scripts/smooth.js"));

            // _______________________________________________________________________ SB Admin 2
            bundles.Add(new StyleBundle("~/Content/SBAdmin/all").Include(
                    "~/Content/SBAdmin/css/sb-admin-2.min.css",
                    "~/Content/SBAdmin/vendor/fontawesome-free/css/all.min.css")
            );
                    
            
            bundles.Add(new ScriptBundle("~/Scripts/SBAdmin/all").Include(
                "~/Content/SBAdmin/vendor/jquery/jquery.min.js",
                "~/Content/SBAdmin/vendor/bootstrap/js/bootstrap.bundle.min.js",                        
                "~/Content/SBAdmin/vendor/jquery-easing/jquery.easing.min.js",
                "~/Content/SBAdmin/js/sb-admin-2.min.js")
            );

            bundles.Add(new ScriptBundle("~/Scripts/validation").Include(
                "~/Scripts/validation.js")
            );

            bundles.Add(new ScriptBundle("~/Scripts/jqueryvalidation").Include(
                "~/Scripts/jquery.validate.min.js",
                "~/Scripts/jquery.validate.unobtrusive.min.js"
            ));

            bundles.Add(new ScriptBundle("~/Scripts/SBAdmin/chart").Include(
               "~/Content/SBAdmin/vendor/chart.js/Chart.min.js",
               "~/Content/SBAdmin/js/demo/chart-area-demo.js",
               "~/Content/SBAdmin/js/demo/chart-pie-demo.js")
               );
            

            // datatables
            bundles.Add(new StyleBundle("~/Content/SBAdmin/datatables").Include(
                "~/Content/SBAdmin/vendor/datatables/dataTables.bootstrap4.min.css")
                );

            bundles.Add(new ScriptBundle("~/Scripts/SBAdmin/datatables").Include(
                "~/Content/SBAdmin/vendor/datatables/jquery.dataTables.min.js",                "~/Content/SBAdmin/vendor/datatables/dataTables.bootstrap4.min.js")
                );

            // minified 
            BundleTable.EnableOptimizations = false;
        }
    }
}
/*
  bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
                    "~/Scripts/umd/popper.min.js",
                  "~/Scripts/bootstrap.js",
                  "~/Scripts/respond.js"));             
                  
    "~/Scripts/jquery-{version}.js",
               "~/Content/assets/js/popper.min.js",
               "~/Scripts/jquery.validate*",
               "~/Scripts/bootstrap.min.js",
               "~/Content/assets/js/plugins.js",
     */
