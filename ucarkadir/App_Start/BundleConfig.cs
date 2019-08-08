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
            bundles.Add(new StyleBundle("~/Content/SBAdmin").Include(
                    "~/Content/SBAdmin/css/sb-admin-2.min.css",
                    "~/Content/SBAdmin/vendor/fontawesome-free/css/all.min.css")
            );         

            bundles.Add(new ScriptBundle("~/bundles/SBAdmin").Include(
                "~/Content/SBAdmin/vendor/jquery/jquery.min.js",
                "~/Content/SBAdmin/vendor/bootstrap/js/bootstrap.bundle.min.js",                        
                "~/Content/SBAdmin/vendor/jquery-easing/jquery.easing.min.js",
                "~/Content/SBAdmin/js/sb-admin-2.min.js")
            );

            bundles.Add(new ScriptBundle("~/bundles/IsValidation").Include(                 
                "~/Scripts/is-validation.js"
                  )
              );




            // _______________________________________________________________________ AdminBundle
            bundles.Add(new StyleBundle("~/Content/Management").Include(
                    "~/Content/vendors/bootstrap/dist/css/bootstrap.min.css",                    
                    "~/Content/vendors/font-awesome/css/font-awesome.min.css",
                    "~/Content/vendors/themify-icons/css/themify-icons.css",
                    "~/Content/vendors/flag-icon-css/css/flag-icon.min.css",
                    "~/Content/vendors/selectFX/css/cs-skin-elastic.css",
                    "~/Content/assets/css/style.css")                
                );

            
            //"~/Content/assets/js/vendor/jquery-2.1.4.min.js",

            bundles.Add(new ScriptBundle("~/bundles/management").Include(
               "~/Content/vendors/jquery/dist/jquery.min.js",
               "~/Content/vendors/popper.js/dist/umd/popper.min.js",
               "~/Content/vendors/bootstrap/dist/js/bootstrap.min.js",
               "~/Content/assets/js/main.js"
               ));

            bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
                "~/Content/vendors/jquery-validation/dist/jquery.validate.min.js",
               "~/Content/vendors/jquery-validation-unobtrusive/dist/jquery.validate.unobtrusive.min.js"
           ));


            bundles.Add(new StyleBundle("~/Content/datatables").Include(
                "~/Content/vendors/datatables.net-bs4/css/dataTables.bootstrap4.min.css",
                "~/Content/vendors/datatables.net-buttons-bs4/css/buttons.bootstrap4.min.css"
                ));

            bundles.Add(new ScriptBundle("~/bundles/datatables").Include(
                    "~/Content/vendors/datatables.net/js/jquery.dataTables.min.js",
                    "~/Content/vendors/datatables.net-bs4/js/dataTables.bootstrap4.min.js"
                ));

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
