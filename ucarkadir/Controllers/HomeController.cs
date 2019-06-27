using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.Entity.Core;
using System.Data.Entity.Infrastructure;
using System.Data.Entity.Validation;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Mvc;
using ucarkadir.Data;

namespace ucarkadir.Controllers
{
    public class HomeController : Controller
    {

        /// <summary>
        /// This sets up the recursive function
        /// </summary>
        /// <param name="e"></param>
        /// <returns></returns>
        public static string GetInnerException(Exception e)
        {
            string innerExceptionMessage = "";
            string error = GetInnerException(e, out innerExceptionMessage);

            return error;

        }


        /// <summary>
        /// This is a recursive function which recursively drills down and gets the error.
        /// </summary>
        /// <param name="e"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
        private static string GetInnerException(Exception e, out string msg)
        {
            if (e.InnerException != null)
                GetInnerException(e.InnerException, out msg);
            else
                msg = e.Message;
            return msg;
        }

        public ActionResult Index()
        {
            ViewBag.Title = "Home Page";

            var ex = new Object();

            using (var db = new KadirBlogDbContext())
            {
                db.tCats.Add(new Models.Cat() { Name="NewCat"  });

                try
                {
                    db.SaveChanges();
                }
                catch (DbEntityValidationException e)
                {
                    List<String> lstErrors = new List<string>();
                    foreach (var eve in e.EntityValidationErrors)
                    {
                        string msg = string.Format("Entity of type \"{0}\" in state \"{1}\" has the following validation errors:",
                            eve.Entry.Entity.GetType().Name,
                            eve.Entry.State);

                        lstErrors.Add(msg);

                        foreach (var ve in eve.ValidationErrors)
                        {
                            msg = string.Format("- Property: \"{0}\", Error: \"{1}\"",
                                ve.PropertyName, ve.ErrorMessage);
                            lstErrors.Add(msg);
                        }
                    }

                    if (lstErrors != null && lstErrors.Count() > 0)
                    {
                        StringBuilder sb = new StringBuilder();
                        foreach (var item in lstErrors)
                        {
                            sb.Append(item + "; ");
                        }

                        throw new Exception("Repository.Save. Db Entity Validation Exception. Data not saved. Error: " + sb.ToString());

                    }

                    throw new Exception("Repository.Save. Db Entity Validation Exception. Data not saved. Error: " + GetInnerException(e));
                }

                catch (NotSupportedException e)
                {

                    throw new Exception("Repository.Save. Not supported Exception.  Data not saved. Error: " + GetInnerException(e));
                }


                catch (ObjectDisposedException e)
                {

                    throw new Exception("Repository.Save. Repository.Save. Object Disposed Exception.  Data not saved. Error: " + GetInnerException(e));

                }

                catch (InvalidOperationException e)
                {
                    throw new Exception("Repository.Save. Invalid Operation Exception.  Data not saved. Error: " + GetInnerException(e));
                }

                catch (DbUpdateConcurrencyException e)
                {
                    throw new Exception("Repository.Save. Db Update Concurrency Exception.  Data not saved. Error: " + GetInnerException(e));
                }

                catch (DbUpdateException e)
                {
                    ex = "Repository.Save. Db Update Concurrency Exception.  Data not saved. Error: " + GetInnerException(e);
                    // throw new Exception("Repository.Save. Db Update Exception.  Data not saved. Error: " + GetInnerException(e));
                }

                catch (EntityException e)
                {
                    throw new Exception("Repository.Save. Entity Exception.  Data not saved. Error: " + GetInnerException(e));
                }

                catch (DataException e)
                {
                    throw new Exception("Repository.Save. Data  Exception.  Data not saved. Error: " + GetInnerException(e));
                }

                catch (Exception e)
                {
                    throw new Exception("Repository.Save. General Exception.  Data not saved. Error: " + GetInnerException(e));

                }


            }

            var error = ex.ToString();
            ViewBag.Error = error.Contains("IX") || error.Contains("duplicate") ? "Bu kayıt daha önce girilmiş" : "";

            return View();
        }
    }
}
