﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PTW_Pro.Models;
namespace PTW_Pro.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {

            Model1 db = new Model1();
            List<Product> proList = db.Products.Take(9).ToList();
            //ViewBag.Message = "Your contact page.";

            return View(proList);
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();

        }
     
    }
}