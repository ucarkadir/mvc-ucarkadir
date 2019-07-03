using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using ucarkadir.Models;

namespace ucarkadir.Controllers
{
    public class AdminController : Controller
    {
        // login
        [AllowAnonymous]
        public ActionResult Login()
        {
            return View();
        }

        [AllowAnonymous]
        [HttpPost]
        public ActionResult Login(User user)
        {

            //if (ModelState.IsValid)
            if (ModelState.IsValidField("EMail") && ModelState.IsValidField("UserPassword"))
            {
                var u = Models.User.Init().FirstOrDefault(x => x.EMail == user.EMail
                    && x.UserPassword == user.UserPassword);
                

                if (u != null)
                {
                    var authTicket = new FormsAuthenticationTicket(1, u.UserName,DateTime.Now, DateTime.Now.AddMinutes(20),  u.RememberMe, u.IDRole.ToString(), "/" );

                    //encrypt the ticket and add it to a cookie
                    var cookie = new HttpCookie(FormsAuthentication.FormsCookieName, FormsAuthentication.Encrypt(authTicket));
                    Response.Cookies.Add(cookie);

                    return RedirectToAction("Index", "Dashboard");

                    /*
                    FormsAuthentication.SetAuthCookie(u.UserName, false);
                    return RedirectToAction("Index", "Dashboard");
                    */
                }
                else
                {
                    ViewBag.LoginError = "Hatalı Kullanıcı Adı veya Şifre";
                    return View();
                }
            }
            else
            {
                var errors = ModelState.Select(x => x.Value.Errors).Where(y => y.Count > 0).ToList();
                return View(user);
            }
        }


        [AllowAnonymous]
        public ActionResult Logout()
        {
            FormsAuthentication.SignOut();
            return RedirectToAction("Login");
        }

        // yeni kayıt
        [AllowAnonymous]
        public ActionResult Register()
        {

            return View();
        }


        // şifremi unuttum
        [AllowAnonymous]
        public ActionResult ForgetPassword()
        {

            return View();
        }
    }
}