using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using ucarkadir.Data;

namespace ucarkadir.Controllers
{
    public class CatApiController : ApiController
    {
        KadirBlogDbContext db = new KadirBlogDbContext();

        [AcceptVerbs("GET")]
        [Route("api/cat")]
        public HttpResponseMessage Get()
        {               
            var cats = db.tCats.ToList();
            
            if (cats != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, cats);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "Kayıt listesi boş");
            }
        }


        [AcceptVerbs("POST")]
        [Route("api/cat")]
        public HttpResponseMessage Post()
        {
            var cats = db.tCats.ToList();

            if (cats != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, cats);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "Kayıt listesi boş");
            }
        }
    }
}
