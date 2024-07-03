using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Playmobil
{
    public partial class Trabalheconosco : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PlaymobilContext context = new PlaymobilContext();

            rpVagas.DataSource = context.Vagas.Where(w => w.DataExpiracao >= DateTime.Today).ToList();
            rpVagas.DataBind();
        }
    }
}