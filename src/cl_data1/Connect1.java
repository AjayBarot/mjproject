package cl_data1;
import java.sql.*;
public class Connect1
{
		public Connection get_con()
		{
				Connection con =null;
				try
				{
					Class.forName("oracle.jdbc.OracleDriver");
					con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","jay_db","12345");
					
				}
				catch(Exception ex)
				{
					System.out.println(ex);
				}
				
				return(con);
				
		}
}
