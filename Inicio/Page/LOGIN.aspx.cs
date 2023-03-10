using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using CAPA_LOGICA;
using System.Configuration;
using System.Web.Services.Description;
using System.Windows.Forms;

namespace Inicio.Page
{
    public partial class LOGIN : System.Web.UI.Page
    {
        QUERY query = new QUERY();
        readonly SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion"].ConnectionString);


        protected void Page_Load(object sender, EventArgs e)
        {

        }

       
        protected void btnIniciarSesion_Click(object sender, EventArgs e)
        {
            string email = this.txtEmail.Text;
            string pasword = this.txtPassword.Value;

            if(query.IniciarSesion(email, pasword))
            {
                
                Response.Redirect("https://localhost:44318/Page/ASP", true);
            }else
            {
                MessageBox.Show("algo salió mal");
            }
        }
    }
}