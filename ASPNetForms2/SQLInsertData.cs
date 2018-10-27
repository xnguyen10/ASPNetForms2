using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ASPNetForms2
{
    public class SQLInsertData
    {

        public void InsertData(string connectionString, string GID, string reqName, string reqPhone, string reqCell, string reqEmail)
        {
            // define INSERT query with parameters
            string query = "INSERT INTO NewEmp(ReqGID, ReqName, ReqPhone, ReqCellPhone,ReqEmail)" +
                           "VALUES (@ReqGID, @ReqName, @ReqPhone, @ReqCellPhone, @ReqEmail)";

            // create connection and command
            using (SqlConnection cn = new SqlConnection(connectionString))
            using (SqlCommand cmd = new SqlCommand(query, cn))
            {
                // define parameters and their values
                cmd.Parameters.Add("@ReqGID", SqlDbType.VarChar, 50).Value = GID;
                cmd.Parameters.Add("@ReqName", SqlDbType.VarChar, 50).Value = reqName;
                cmd.Parameters.Add("@reqPhone", SqlDbType.VarChar, 50).Value = reqPhone;
                cmd.Parameters.Add("@reqCellPhone", SqlDbType.VarChar, 50).Value = reqCell;
                cmd.Parameters.Add("@reqEmail", SqlDbType.VarChar, 50).Value = reqEmail;

                // open connection, execute INSERT, close connection
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
            }
        }
    }
}