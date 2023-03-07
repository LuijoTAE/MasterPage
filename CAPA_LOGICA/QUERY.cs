using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Windows.Forms;

namespace CAPA_LOGICA
{
    public class QUERY
    {
        readonly SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion"].ConnectionString);

        public Boolean IniciarSesion(long usuario, string clave)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("Validar", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@usuario", usuario));
                cmd.Parameters.Add(new SqlParameter("@clave", clave));
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    return true;
                }
                else
                {
                    if (MessageBox.Show("¿Desea cerrar sesión?", "Cerrar sesión", MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button3) == DialogResult.Yes)
                    {
                        
                    }
                    return false;
                }
            }
            catch(SqlException e)
            {
                
                Console.WriteLine(e.Message);
                return false;
            }
            finally
            {
                con.Close();
            }           
        }

        public void Message()
        {
            MessageBox.Show("si está funcionando");
        }
    }
}
