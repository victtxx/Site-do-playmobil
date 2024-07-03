using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace Playmobil
{
    public partial class Lojas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PlaymobilContext context = new PlaymobilContext();


            rpLojas.DataSource = context.Lojas.ToList();
            rpLojas.DataBind();
        }
    }
}