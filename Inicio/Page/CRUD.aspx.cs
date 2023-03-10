using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Inicio.Page
{
    public partial class CRUD : System.Web.UI.Page
    {
        private string firstName;
        private string lastName;
        private string email;
        private string password;
        protected void Page_Load(object sender, EventArgs e)
        {
            firstName = "";
            lastName = "";
            email = "";
            password = "";
        }

        protected void Enviar_Click(object sender, EventArgs e)
        {

        }
    }
}