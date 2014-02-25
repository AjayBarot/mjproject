package cl_data1;
import java.sql.*;
public class insert 
{
	public String  id="";
	public String name="";
	public String address = "";
	public String city = "";
	public String fees = "";
	public String b_id = "";
	public String b_name ="";
	public String idate ="";	
	
	public String c_name="";
	public String c_mail="";
	public String c_comment="";
	
	public int insert_student()
	{
			int c=0;
			try
			{
			Connect1 obj = new Connect1();
			Connection con = obj.get_con();
			
			
			String i_data = "insert into stud_data(id,name,address,city,fees) values(?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(i_data);
			ps.setString(1, id);
			ps.setString(2, name);
			ps.setString(3, address);
			ps.setString(4, city);
			ps.setString(5, fees);
			
			c = ps.executeUpdate();
			
			}
			catch(Exception ex){}
			return c;
	}
	
	
	
	public int insert_book()
	{
			int s=0;
			try
			{
			Connect1 obj = new Connect1();
			Connection con = obj.get_con();
			
			
			String i_data = "insert into lib(b_id,b_name,id,idate) values(?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(i_data);
			ps.setString(1, b_id);
			ps.setString(2,b_name);
			ps.setString(3,id);
			ps.setString(4, idate);

			
			
			s = ps.executeUpdate();
			
			}
			catch(Exception ex){}
			return s;
	}

	
	public int insert_comnt()
	{
			int s=0;
			try
			{
			Connect1 obj = new Connect1();
			Connection con = obj.get_con();
			
			
			String i_data = "insert into stud_cmnt(c_name,c_mail,c_comment) values(?,?,?)";
			PreparedStatement ps = con.prepareStatement(i_data);
			ps.setString(1, c_name);
			ps.setString(2,c_mail);
			ps.setString(3,c_comment);

			
			
			s = ps.executeUpdate();
			
			}
			catch(Exception ex){}
			return s;
	}
	
	
}
