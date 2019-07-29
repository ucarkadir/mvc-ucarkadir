﻿using System.Web;
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
                        "~/Scripts/umd/popper.js"));

            bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(                       
                      "~/Scripts/bootstrap.js",
                      "~/Scripts/respond.js",
                      "~/Scripts/swiper.js"));

            bundles.Add(new ScriptBundle("~/bundles/smooth").Include(
                    "~/Scripts/smooth.js"));

            bundles.Add(new ScriptBundle("~/bundles/test").Include(
                   "~/Scripts/smooth.js",
                   "~/Scripts/swiper-initialize.js"));




            // AdminBundle
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
