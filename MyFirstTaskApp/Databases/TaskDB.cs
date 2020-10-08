using MyFirstTaskApp.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Http.Headers;
using System.Web;

namespace MyFirstTaskApp.Databases
{
    public static class TaskDB
    {
        //a public class that connects to our database
        private static string ConnectionString = @"Server=LAPTOP-CE3DN0MT\SQLEXPRESS;Database=TestApp;Integrated Security = true;";



        //That retrives all the tasts from the database
        public static List<myTask> getAllTasks()
        {
            try
            {
                List<myTask> listResults = new List<myTask>();
                SqlConnection conn = new SqlConnection(ConnectionString);
                string sql = "select * from Task";
                conn.Open();
                SqlCommand cmd = new SqlCommand(sql, conn);
                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    listResults.Add(new myTask
                    {
                        Id = Convert.ToInt32(reader["Id"].ToString()),
                        Name = reader["Name"].ToString(),
                        DueDate = Convert.ToDateTime(reader["DueDate"].ToString()),
                        Status = reader["Status"].ToString(),
                    });
                }
                conn.Close();
                return listResults;
            }
            catch (Exception)
            {

                return null;
            }

           
            //made use on the try ..catch so that code runs regardless of any errors

        
        }

        //class to add tasks to the list
        public static bool AddTask(myTask taskItem)
        {

            try
            {
                SqlConnection conn = new SqlConnection(ConnectionString);
                conn.Open();
                string sql = $"insert into Task (Name,DueDate,Status) values ('{taskItem.Name}','{taskItem.DueDate}','{taskItem.Status}')";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.ExecuteNonQuery();
                conn.Close();// closes the connection with database
                return true;

            }
            catch (Exception ex)
            {

                return false;
            }
        }

    }

    //class to edit tasks to the list
    public static bool EditTask(myTask TaskItem)
    {

        try
        {
            SqlConnection conn = new SqlConnection(ConnectionString);
            conn.Open();
            //sql statement to modify values
            string sql = $"update Task (Name,DueDate,Status) " +
                $"set ('{TaskItem.Name = TaskItem.newName}','{TaskItem.DueDate = TaskItem.newDueDate}'," +
                $"'{TaskItem.Status = TaskItem.newStatus}')";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.ExecuteNonQuery();
            conn.Close();// closes the connection with database
            return true;

        }
        catch (Exception ex)
        {

            return false;
        }
    }
}