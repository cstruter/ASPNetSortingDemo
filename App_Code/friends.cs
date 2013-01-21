using System;
using System.Data;
using System.Configuration;
using System.ComponentModel;
using System.Data.SqlClient;

[DataObject()]
public class friends
{
    [DataObjectMethod(DataObjectMethodType.Select)]
    public static DataTable sortFriends(String sort)
    {
        using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Default"].ConnectionString))
        {
            using (SqlCommand command = new SqlCommand("sortFriends", connection))
            {
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@sort", sort);
                using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                {
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);
                    return dt;
                }
            }
        }
    }
}
