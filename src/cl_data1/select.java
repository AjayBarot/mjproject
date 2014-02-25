package cl_data1;
import java.sql.*;
public class select 
{

	public String id1 ="";
	public String c_name="";
	public ResultSet select_data()
	{
		ResultSet rs=null;
			try
			{
			Connect1 obj = new Connect1();
			Connection con = obj.get_con();
			
			
			String s_data ="Select stud_data.name,stud_data.city,stud_data.fees,lib.b_name,lib.idate from stud_data,lib where stud_data.id = lib.id ORDER BY name";
			
			Statement st = con.createStatement();
			
			rs=st.executeQuery(s_data);
			
			
			}
			catch(Exception ex){}
			return(rs);
	}
	
	public ResultSet select_name()
	{
		ResultSet rs=null;
			try
			{
			Connect1 obj = new Connect1();
			Connection con = obj.get_con();
			
			String s_data ="Select id,name from stud_data";
			Statement st = con.createStatement();
			rs=st.executeQuery(s_data);
			}
			catch(Exception ex){}
			return(rs);
	}
	
	public ResultSet return_book()
	{
		ResultSet rs = null;
		
		
		try
		{
			Connect1 obj= new Connect1();
			Connection con = obj.get_con();
			
			String s_data = "select b_id,b_name,idate from lib where id ='"+id1+"'";
			Statement st =con.createStatement();
			rs= st.executeQuery(s_data);
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
		return(rs);
	}
	
	public ResultSet select_student()
	{
		ResultSet rs = null;
		
		
		try
		{
			Connect1 obj= new Connect1();
			Connection con = obj.get_con();
			
			String s_data = "select * from stud_data";
			Statement st =con.createStatement();
			rs= st.executeQuery(s_data);
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
		return(rs);
	}
	
	public ResultSet select_cmnt()
	{
		ResultSet rs=null;
			try
			{
			Connect1 obj = new Connect1();
			Connection con = obj.get_con();
			
			
			String s_data ="Select * from stud_cmnt"; 
			
			Statement st = con.createStatement();
			
			rs=st.executeQuery(s_data);
			
			
			}
			catch(Exception ex){}
			return(rs);
	}
	
	public ResultSet select_cmnt_client()
	{
		ResultSet rs=null;
			try
			{
			Connect1 obj = new Connect1();
			Connection con = obj.get_con();
			
			
			String s_data ="Select * from stud_cmnt where flag='active'"; 
			
			Statement st = con.createStatement();
			
			rs=st.executeQuery(s_data);
			
			
			}
			catch(Exception ex){}
			return(rs);
	}
	
	public ResultSet select_cmnt_name()
	{
		ResultSet rs=null;
			try
			{
			Connect1 obj = new Connect1();
			Connection con = obj.get_con();
			
			
			String s_data ="Select * from stud_cmnt where c_name ='"+c_name+"'"; 
			
			Statement st = con.createStatement();
			
			rs=st.executeQuery(s_data);
			
			
			}
			catch(Exception ex){}
			return(rs);
	}
	
}
