package cl_data1;
import java.sql.*;
public class delete {
	public String id="";
	int c=0;
	public int delete_data1()
	{

			try
			{
			Connect1 obj = new Connect1();
			Connection con = obj.get_con();
			
			String d_data = "delete from lib where b_id = '"+id+"'";
			Statement st = con.createStatement();
			c= st.executeUpdate(d_data);
			
			}
			catch(Exception ex){}
			return(c);
	}
}



