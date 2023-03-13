using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Windows.Forms;
using Microsoft.Azure.Management.Sql.Models;

namespace CAPA_LOGICA
{
    public class QUERY
    {
        readonly SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion"].ConnectionString);
        SegurosBDEntities segurosBD = new SegurosBDEntities();
        public Boolean IniciarSesion(string emaul, string password)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("Validar", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@email", emaul));
                cmd.Parameters.Add(new SqlParameter("@password", password));
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

                MessageBox.Show(e.Message);
                return false;
            }
            finally
            {
                con.Close();
            }           
        }

        public Boolean UpdateUser(string name, string lastname, string password, string email)
        {
            try
            {
                if (!email.Equals(""))
                {
                    SqlCommand cmd = new SqlCommand("updateUSER", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add(new SqlParameter("@name", name));
                    cmd.Parameters.Add(new SqlParameter("@lastname", lastname));
                    cmd.Parameters.Add(new SqlParameter("@password", password));
                    cmd.Parameters.Add(new SqlParameter("@email", email));
                    con.Open();
                    cmd.ExecuteNonQuery();
                    return true;
                }
                else
                {
                    return false;
                }
                
            }
            catch (SqlException e)
            {
                MessageBox.Show(e.ToString());
                return false;
            }
            finally
            {
                con.Close();
            }
        }

        public Boolean DeleteUser(string email, string password)
        {
            try
            {
                if (!email.Equals(""))
                {
                    SqlCommand cmd = new SqlCommand("deleteUSER", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add(new SqlParameter("@password", password));
                    cmd.Parameters.Add(new SqlParameter("@email", email));
                    con.Open();
                    cmd.ExecuteNonQuery();
                    return true;
                }
                else
                {
                    return false;
                }

            }
            catch (SqlException e)
            {
                MessageBox.Show(e.ToString());
                return false;
            }
            finally
            {
                con.Close();
            }
        }

        public DataTable LoadUser()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("getUSer", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                con.Close();
                return dt;
            }
            catch (SqlException e)
            {
                MessageBox.Show(e.Message);
                return null;
            }
            finally
            {
                con.Close();
            }
        }

        public Boolean SaveUser(string name, string lastname, string password, string email)
        {
            try
            {
                if (!email.Equals(""))
                {
                    SqlCommand cmd = new SqlCommand("saveUSER", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add(new SqlParameter("@name", name));
                    cmd.Parameters.Add(new SqlParameter("@lastname", lastname));
                    cmd.Parameters.Add(new SqlParameter("@password", password));
                    cmd.Parameters.Add(new SqlParameter("@email", email));
                    con.Open();
                    cmd.ExecuteNonQuery();
                    return true;
                }
                else
                {
                    return false;
                }

            }
            catch (SqlException e)
            {
                MessageBox.Show(e.ToString());
                return false;
            }
            finally
            {
                con.Close();
            }
        }



    }
}
