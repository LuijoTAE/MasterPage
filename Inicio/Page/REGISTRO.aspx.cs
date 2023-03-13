using CAPA_LOGICA;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Inicio.Page
{
    public partial class CRUD : System.Web.UI.Page
    {
        SegurosBDEntities segurosBD = new SegurosBDEntities();
        QUERY query = new QUERY();

        private static string firstName;
        private static string lastName;
        private static string email;
        private static string password;
        protected void Page_Load(object sender, EventArgs e)
        {
            firstName = "";
            lastName = "";
            email = "";
            password = "";

            this.GridView1.DataSource = query.LoadUser();
            this.GridView1.DataBind();
            
        }

        protected void Enviar_Click(object sender, EventArgs e)
        {
            firstName = this.inpFirstName.Value;
            lastName = this.inpLastName.Value;
            email = this.inpEmail.Value;
            password = this.inpPassword.Value;

            query.SaveUser(firstName, lastName, password, email);

            this.GridView1.DataSource = query.LoadUser();
            this.GridView1.DataBind();
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            firstName = this.inpFirstName.Value;
            lastName = this.inpLastName.Value;
            email = this.inpEmail.Value;
            password = this.inpPassword.Value;

            query.UpdateUser(firstName, lastName, password, email);

            this.GridView1.DataSource = query.LoadUser();
            this.GridView1.DataBind();
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            email = this.inpEmail.Value;
            password = this.inpPassword.Value;
            query.DeleteUser(email, password);

            this.GridView1.DataSource = query.LoadUser();
            this.GridView1.DataBind();
        }
    }
}