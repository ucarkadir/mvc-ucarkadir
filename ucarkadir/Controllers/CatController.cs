﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ucarkadir.Data;
using ucarkadir.Models;

namespace ucarkadir.Controllers
{
    public class CatController : Controller
    {
        // GET: Cat
        public ActionResult Index()
        {           

            return View();            
        }

    }
}